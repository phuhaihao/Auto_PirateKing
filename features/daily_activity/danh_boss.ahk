#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/danh_boss_service.ahk

_danh_boss(){
    danh_boss_Start()
    wait_for_boss := 15 * one_minute
    Sleep, %wait_for_boss%
    danh_boss_exit()
}