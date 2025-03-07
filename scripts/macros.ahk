#SingleInstance Force
LUA_MACRO_LOCATION := "C:\Users\%USERNAME%\.ahk\keypresses.txt"
SendMode("Input")

; AHK Modifier Keys with Short Symbols:
; ^ = CTRL
; + = SHIFT
; ! = ALT
; # = WINDOWS

~F24:: {
    key := FileRead(LUA_MACRO_LOCATION)

    if (key = "num1") {
        Run("S:\cross-over.txt")
        return
    }

    ; Warn user if key is not configured yet.
    MsgBox("The key you pressed isn't configured yet in LuaMacros!", "LuaMacros Engine")
}