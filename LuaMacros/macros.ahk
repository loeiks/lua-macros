#SingleInstance Force
LUA_MACRO_LOCATION := "C:\AHK\keypressed.txt"

/*
AHK Modifier Keys with Short Symbols:
^ = Ctrl
+ = Shift
! = Alt
# = Windows (Win)

Example Usage:
- Send("^a")   ; Sends Ctrl + A
- Send("+b")   ; Sends Shift + B
- Send("!c")   ; Sends Alt + C
- Send("^+d")  ; Sends Ctrl + Shift + D
- Send("^!e")  ; Sends Ctrl + Alt + E
- Send("^+!f") ; Sends Ctrl + Shift + Alt + F
*/

~F24:: {
    key := FileRead(LUA_MACRO_LOCATION)

    if (key = "num9") {
        ; Run("calc.exe")
        SendInput('^+9')
        return
    }

    if (key = "num8") {
        ; Run("calc.exe")
        SendInput('^+8')
        return
    }

    if (key = "") {

    }

    ; Warn user if key is not configured
    MsgBox("The key you pressed isn't configured in LuaMacros!", "LuaMacros Engine")
}