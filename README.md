# yubikey-ahk
Simple script I use daily

Quickly enter OATH OTP tokens from a Yubikey

I will consider extra functionality in the future, it is very basic atm c^:

## Requirements

You need **ykman** (in PATH)...  
`pip install --user yubikey-manager`

And this AHK script:  
https://raw.githubusercontent.com/cocobelgica/AutoHotkey-Util/master/StdOutToVar.ahk

## Usage
Script starts with no tray icon and Ctrl+Win+Alt+Num0 to exit

`Otp(account)` - Prompts touch and returns OTP code for the account

`Otp(account, true)` - Prompts touch and returns OTP code with newline (enter)

It will prompt touch even for accounts that don't require it

**Example**

`#Numpad0:: Send, % Otp("PayPal", true)`  
Win+Num0 will generate OTP for PayPal and press enter
