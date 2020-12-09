;#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; right ctrl + left shift + v
>^+v::
SetKeyDelay 500
SendRaw %clipboard%
SoundPlay, %A_WinDir%\Media\ding.wav
Return