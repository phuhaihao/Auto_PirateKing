#SingleInstance, Force
#NoEnv
chay:=0
SendMode Input
SetWorkingDir, %A_ScriptDir%
DetectHiddenWindows, On
CoordMode, Pixel, findImage
CoordMode, Mouse, findImage
CoordMode, Tooltip, findImage
SendMode, Event
SetControlDelay 0
SetBatchLines -1 

#Include ./gui/main_gui.ahk
#Include ./libs/http_request.ahk
#Include ./libs/json.ahk
#Include ./libs/request_image.ahk
#Include ./features/cuong_hoa.ahk
#Include ./utils/game_clicker.ahk

global win_title := "PirateKing9999"
global isRunning_state := 0
global current_time := ""
global one_second := 1000
global one_minute := one_second * 60
global one_hour := one_minute * 60
global one_day := one_hour * 24

#Include ./services/login_game_service.ahk

_main(){
    WinMove, %win_title%, , , , 1276, 699
    Gdip_Startup()
    _main_gui()
    Process Exist, %win_title%.exe
    PID := ErrorLevel

    if(PID == 0){
        _login_game()
    }
}

_main()
