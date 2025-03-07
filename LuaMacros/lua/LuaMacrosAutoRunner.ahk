#Requires AutoHotkey v2.0
#SingleInstance Force

LuaMacrosExe := "H:\loeiks\ahk\LuaMacros\lua\LuaMacros.exe" ; replace me
LuaMacrosLua := "H:\loeiks\ahk\LuaMacros\lua\LuaMacros.lua" ; replace me

; Dynamically create path with run option for Windows.
AutoRun := Format("{1} -r {2}", LuaMacrosExe, LuaMacrosLua)

; Run LuaMacros with Lua script.
Run(AutoRun)

; Wait 1sec and then minimize LuaMacros window.
Sleep(1000)
WinMinimize("LuaMacros")

; Exit this AHK script to avoid useless system resource usage.
ExitApp(0)