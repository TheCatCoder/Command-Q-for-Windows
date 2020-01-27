#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; When alt key and q are pressed, ahk gets the active 
; window's title and uses it in a window closure command

quitCurrentApp()
{
    WinGetTitle, Title, A
    WinClose , %Title%
}

!q::quitCurrentApp()
