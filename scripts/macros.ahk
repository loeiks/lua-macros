; Specifies that this script requires AutoHotkey version 2.0 or later.
#Requires AutoHotkey v2.0

#SingleInstance Force
KEYPRESSES := "C:\Users\%USERNAME%\.ahk\keypresses.txt" ; replace me
SendMode("Input")

; AHK Modifier Keys with Short Symbols:
; ^ = CTRL
; + = SHIFT
; ! = ALT
; # = WINDOWS

GetCurrentWindowExe() {
    activeHwnd := WinGetID("A")
    exeName := WinGetProcessName(activeHwnd)
    return exeName
}

SendInputWithFocus(input, focus) {
    currentWindow := GetCurrentWindowExe()
    isFocusActive := WinActive(focus)

    if (isFocusActive) {
        ; If the focus is already on the target window, send input directly.
        SendInput(input)
        return
    } else {
        ; If the focus is not on the target window, activate it first.
        WinActivate(focus)
        SendInput(input)
        Sleep(10)
    }

    WinActivate("ahk_exe " . currentWindow)
    return
}

~F24:: {
    key := FileRead(KEYPRESSES)

    if (key = "num1") {
        Run("S:\cross-over.txt")
        return
    }

    if (key = "num2") {
        SendInputWithFocus("^!2", "ahk_exe obs64.exe")
        return
    }

    if (key = "num3") {
        SendInputWithFocus("^!3", "ahk_exe obs64.exe")
        return
    }
    
    if (key = "num4") {
        SendInputWithFocus("^+!1", "ahk_exe obs64.exe")
        return
    }

    ; Warn user if key is not configured yet.
    MsgBox("The key you pressed isn't configured yet in LuaMacros!", "LuaMacros Engine")
}
