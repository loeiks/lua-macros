#Requires AutoHotkey v2.0
#SingleInstance Force

LuaMacros := "H:\loeiks\ahk\LuaMacros\lua\LuaMacros.exe"
LuaMacrosScript := "H:\loeiks\ahk\LuaMacros\lua\LuaMacros.lua"
AutoRun := Format("{1} -r {2}", LuaMacros, LuaMacrosScript)

Run(AutoRun)
Sleep(1000)
WinMinimize("LuaMacros")
ExitApp(0)