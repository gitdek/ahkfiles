;#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!c:: ; win+alt+c
ctmp := clipboard ; what's currently on the clipboard
clipboard := ""
Send ^c ; copy to clipboard
ClipWait, 2 ; wait for the clipboard to change
clipboard := "[" . clipboard . "](" . ctmp . ")"
Return ; ends a multiline command