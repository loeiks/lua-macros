#Requires AutoHotkey v2.0
#SingleInstance Force

LuaMacrosExe := "H:\loeiks\lua-macros\lua\LuaMacros.exe" ; replace me
LuaMacrosLua := "H:\loeiks\lua-macros\lua\LuaMacros.lua" ; replace me

; Dynamically create path with run option for Windows.
AutoRun := Format("{1} -r {2}", LuaMacrosExe, LuaMacrosLua)

; Run LuaMacros with Lua script.
Run(AutoRun)

; Wait for LuaMacros window.
WinWait("ahk_exe LuaMacros.exe")

; Check if LuaMacros window is available, and minimize it via id.
if (id := WinExist("LuaMacros")) {
    WinMinimize(Format("ahk_id {1}", id))
}

; Exit this AHK script to avoid useless system resource usage.
ExitApp(0)