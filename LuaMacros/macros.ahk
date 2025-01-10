#SingleInstance Force
LUA_MACRO_LOCATION := "C:\AHK\keypressed.txt"

~F24:: {
    key := FileRead(LUA_MACRO_LOCATION)

    ; Configuration for "c" key
    if (key = "num0") {
        Run("calc.exe")
        return
    }

    if (key = "") {

    }

    ; Warn user if key is not configured
    MsgBox("The key you pressed isn't configured in LuaMacros!", "LuaMacros Engine")
}