#SingleInstance Force
KEYPRESSES := "C:\Users\%USERNAME%\.ahk\keypresses.txt" ; replace me
SendMode("Input")

; AHK Modifier Keys with Short Symbols:
; ^ = CTRL
; + = SHIFT
; ! = ALT
; # = WINDOWS

~F24:: {
    key := FileRead(KEYPRESSES)

    if (key = "num1") {
        Run("S:\cross-over.txt")
        return
    }

    ; Warn user if key is not configured yet.
    MsgBox("The key you pressed isn't configured yet in LuaMacros!", "LuaMacros Engine")
}