#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

_open_game(){
    Run, PirateKing9999.exe
    Sleep, 10000
}

_login_game_start(){
    ControlClick, x557 y525, %win_title%, , , 1
    Sleep, 5000
    ControlClick, x470 y260, %win_title%, , , 1
    Sleep, 30000
    ControlClick, x160 y359, %win_title%, , , 1
}