#NoTrayIcon
#MaxThreads 1
#Include stdtovar.ahk

SetTitleMatchMode, RegEx

Otp(account, enter := false) {
    TrayTip, Tap authenticator, %account%
    out := StdOutToVar("ykman oath accounts code " . account)

    if (RegExMatch(out, "(\d+)$", code)) {
        if (enter) {
            code .= "{Enter}"
        }
        return code

    } else if (RegExMatch(out, "Error: (.+)$", error)) {
        TrayTip, Error, %error1%

    } else {
        TrayTip, Error, Unknown error
    }
    
}

^#!Numpad0::
    Menu, Tray, Icon
    TrayTip, , Authenticator closing
    Sleep, 2000
    ExitApp





/* Sample macros

#If WinActive("^Facebook$")
    #Return:: Send, % Otp("Facebook")
#If

#Numpad0:: Send, % Otp("PayPal", true) 

*/