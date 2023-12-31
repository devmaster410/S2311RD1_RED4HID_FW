#include "usb.h"
#include "usb_device_hid.h"
//#include <string.h>
 
/** CONFIGURATION Bits **********************************************/
#pragma config CPUDIV = NOCLKDIV
#pragma config USBDIV = OFF
#pragma config FOSC   = HS
#pragma config PLLEN  = ON
#pragma config FCMEN  = OFF
#pragma config IESO   = OFF
#pragma config PWRTEN = OFF
#pragma config BOREN  = OFF
#pragma config BORV   = 30
#pragma config WDTEN  = OFF
#pragma config WDTPS  = 32768
#pragma config MCLRE  = OFF
#pragma config HFOFST = OFF
#pragma config STVREN = ON
#pragma config LVP    = OFF
#pragma config XINST  = OFF
#pragma config BBSIZ  = OFF
#pragma config CP0    = OFF
#pragma config CP1    = OFF
#pragma config CPB    = OFF
#pragma config WRT0   = OFF
#pragma config WRT1   = OFF
#pragma config WRTB   = OFF
#pragma config WRTC   = OFF
#pragma config EBTR0  = OFF
#pragma config EBTR1  = OFF
#pragma config EBTRB  = OFF
 
#define SYSTEM_Tasks()
#define INTERRUPT __interrupt()
 
#define FIXED_ADDRESS_MEMORY
#define HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS      __at(0x260)
#define HID_CUSTOM_IN_DATA_BUFFER_ADDRESS     __at(0x2A0)
 
unsigned char ReceivedData[64] HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS;
unsigned char SendData[64] HID_CUSTOM_IN_DATA_BUFFER_ADDRESS;
volatile USB_HANDLE USBOutHandle;    
volatile USB_HANDLE USBInHandle;
 
void INTERRUPT SYS_InterruptHigh(void)
{
    #if defined(USB_INTERRUPT)
        USBDeviceTasks();
    #endif
}
 
void HIDInitialize()
{
    USBInHandle = 0;
    USBEnableEndpoint(CUSTOM_DEVICE_HID_EP, USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBOutHandle = (volatile USB_HANDLE)HIDRxPacket(CUSTOM_DEVICE_HID_EP,(uint8_t*)&ReceivedData[0],64);
}
 
bool USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, uint16_t size)
{
    switch((int)event)
    {
        case EVENT_TRANSFER:
            break;
 
        case EVENT_SOF:      
          //  APP_LEDUpdateUSBStatus();
            break;
 
        case EVENT_SUSPEND:
         //   APP_LEDUpdateUSBStatus();
         //   SYSTEM_Initialize(SYSTEM_STATE_USB_SUSPEND);
            break;
 
        case EVENT_RESUME:       
          //  APP_LEDUpdateUSBStatus();
          //  SYSTEM_Initialize(SYSTEM_STATE_USB_RESUME);
            break;
 
        case EVENT_CONFIGURED:
            HIDInitialize();
            break;
 
        case EVENT_SET_DESCRIPTOR:
            break;
 
        case EVENT_EP0_REQUEST:
            USBCheckHIDRequest();
            break;
 
        case EVENT_BUS_ERROR:
            break;
 
        case EVENT_TRANSFER_TERMINATED:
            break;
 
        default:
            break;
    }
    return true;
}
 
void Read_Write_USB()
{   
    if( USBGetDeviceState() < CONFIGURED_STATE )
        return;
    if( USBIsDeviceSuspended() == true )
        return;
    if(HIDRxHandleBusy(USBOutHandle) == false)          //Check if we have received an OUT data packet from the host
    {
        if(!HIDTxHandleBusy(USBInHandle))               //Check to make sure the endpoint/buffer is free before we modify the contents
        {  
          //  for (int i = 0; i < 64; i++)
          //      SendDataBuffer[i] = ReceivedDataBuffer[i];  //オウム返し
            SendData[0] = ReceivedData[0];         
            USBInHandle = HIDTxPacket(CUSTOM_DEVICE_HID_EP, (uint8_t*)&SendData[0],64);   //SendDataBuffeを書き込む
        }
        USBOutHandle = HIDRxPacket(CUSTOM_DEVICE_HID_EP, (uint8_t*)&ReceivedData[0], 64); //SendDataBuffeに変更有無にかかわらず送信
    }
}
 
void Check_Button()
{
    if(!HIDTxHandleBusy(USBInHandle))       //Check to make sure the endpoint/buffer is free before we modify the contents
    {        
        if(PORTBbits.RB7 == 0)
        {
            SendData[1] = 0x00;             //ボタン状態通知
            PORTC = 0xFF;                   //ポートC全部オン
        }
        else
        {
            SendData[1] = 0x01;             //ボタン状態通知
            PORTC = 0x00;                   //ポートC全部オフ
        }
    }           
}
 
uint16_t ADC_Read10bit()
{
    uint16_t result;
    ADCON0bits.CHS = 0b00001010;    //CHSが1010 だから　1010 = AN10 RB4 
    ADCON0bits.GO = 1;              // Start AD conversion
    while(ADCON0bits.NOT_DONE);     // Wait for conversion
    result = ADRESH;
    result <<=8;
    result |= ADRESL;
    return result;
}
void Chek_ADC()
{
    if(!HIDTxHandleBusy(USBInHandle))       //Check to make sure the endpoint/buffer is free before we modify the contents
    {                            
        uint16_t  pot = ADC_Read10bit();
        SendData[2] = (uint8_t)pot;         //LSB
        SendData[3] = pot >> 8;             //MSB            
    }
}
 
void SYSTEM_Initialize()
{       
   //ADC
    ADCON0=0x29;                    //00 1010 01  CHSが1010:AN10(RB4)  A/D 変換サイクル進行中でない ADC を有効にする
    ADCON0bits.CHS = 0b00001010;    //CHSが1010 だから　1010 = AN10 RB4 
    ADCON1=0x00;                    //正電圧リファレンス: VDD   負電圧リファレンス:VSS  
    ADCON2=0x3E;                    //0 0 111 110   A/D 変換結果フォーマット:左詰め   アクイジション時間:20 TAD   A/D 変換クロック:FOSC/64
    ADCON2bits.ADFM = 1;            // A/D 変換結果フォーマット:= 右詰め
    TRISBbits.TRISB4 = 1;           //PIN_INPUT     1
    ANSELHbits.ANS10 = 1;           //RB4 のデジタル入力バッファを無効に設定(過電流防止の為必要)
     
    //Button
    TRISBbits.TRISB7 = 1;           //1で入力　0で出力 RB7は入力
    WPUBbits.WPUB7 = 1;             //RB7をプルアップ
    INTCON2bits.RABPU = 0;          //プルアップ有効
     
    //LED
    TRISC = 0x00;           //1で入力　0で出力 ポートCは全部出力
}
 
void main(void) 
{
    SYSTEM_Initialize();    //AD設定、ポート設定
    USBDeviceInit();        //usb_device.c より
    USBDeviceAttach();      //usb_device.c より
     
    for (int i = 0; i < 64; i++)
        SendData[i] = 0; 
    for (int i = 0; i < 64; i++)
        ReceivedData[i] = 0; 
     
    while(1)
    {       
        SYSTEM_Tasks();
        Read_Write_USB();
        Check_Button();
        Chek_ADC();         
    }//end while
}

