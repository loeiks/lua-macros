#Requires AutoHotkey v2.0

LuaMacrosExe := "H:\loeiks\lua-macros\lua\LuaMacros.exe" ; replace me
LuaMacrosLua := "H:\loeiks\lua-macros\lua\LuaMacros.lua" ; replace me

; Dynamically create path with run option for Windows.
AutoRun := Format("{1} -r {2}", LuaMacrosExe, LuaMacrosLua)

; Run LuaMacros with Lua script.
Run(AutoRun)

; Wait 2sec and then minimize LuaMacros window.
Sleep(2000)
WinMinimize("LuaMacros")

; Exit this AHK script to avoid useless system resource usage.
ExitApp(0)