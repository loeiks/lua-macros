; Specifies that this script requires AutoHotkey version 2.0 or later.
#Requires AutoHotkey v2.0

; Calls the user-defined function InstallKeybdHook().
; This function is expected to set up a keyboard hook.
; A keyboard hook allows the script to monitor and intercept keyboard events.
InstallKeybdHook()

; Enables the keyboard hook.
; This directive tells AutoHotkey to use the keyboard hook to monitor keyboard input.
; Without this, the script won't be able to intercept key presses.
#UseHook true

; Ensures that only one instance of this script can run at a time.
; If another instance is already running, it will be closed, and the new instance will take over.
; This prevents multiple instances of the script from interfering with each other.
#SingleInstance Force

; Sets the maximum number of hotkeys that can be triggered within a specific interval.
; This prevents the script from being overwhelmed by rapid hotkey activations.
; The default value is usually sufficient, but it can be increased if needed.
A_MaxHotkeysPerInterval := 2000

; Forces a window to become active, even if it's already active.
; This is useful in situations where a window needs to be brought to the foreground reliably.
#WinActivateForce

; Includes the contents of the "macros.ahk" file into this script.
; This allows you to organize your code into separate files and reuse code across scripts.
; The "macros.ahk" file is expected to contain definitions for macros or functions.
#Include macros.ahk