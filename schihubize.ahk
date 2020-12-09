;#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Only enable hotkey in Firefox
#IfWinActive ahk_exe firefox.exe

; right alt + right ctrl + s
>!^s::
; wait for both control keys to be lifted
Keywait, RControl
Keywait, RAlt
; go to url bar
SendEvent, ^l

; add prefix, go
SendInput, {left}sci-hub.se/{enter}
return