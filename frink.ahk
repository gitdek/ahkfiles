;#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

toggle_app(app, location) 
{
    if WinExist(app)   
    {
        if !WinActive(app)
        {
            WinActivate
        }
        else
        {
            WinMinimize
        }
  }
    else if location != ""
    {
        Run, %location%
    }
}

; Launch_App2 is the Calculator media key.
Launch_App2::toggle_app("Frink", "C:\Users\meatwad\Desktop\frink.jar")
