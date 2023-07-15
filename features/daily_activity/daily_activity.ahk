#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./features/daily_activity/danh_boss.ahk
#Include ./features/daily_activity/danh_chien_truong.ahk
#Include ./utils/game_clicker.ahk
#Include ./features/login_game.ahk

_daily_activity(){
    content := Utf8Encode("Đã Bật Hoạt Động Nhen!!!!!")
    MsgBox, 0, , %content%, 5
    While(true){

        if(isRunning_state == 0){
            Break
        }

        Process Exist, %win_title%.exe
        PID := ErrorLevel

        FormatTime, current_time, A_now, HH:mm
        bossDragonTime := current_time >= "15:30" && current_time <= "15:33"
        arenaTime := current_time >= "19:45" && current_time <= "20:20"
        guildPartyTime := current_time >= "20:30" && current_time <= "20:33"
        bossKrakenTime := current_time >= "21:00" && current_time <= "21:03"
        bossOarTime := current_time >= "22:00" && current_time <= "22:03"

        openGameTime1 := current_time >= "15:20" && current_time <= "15:21"

        if(openGameTime1 && PID == 0)
        {
            _login_game()
        }

        if(bossDragonTime || bossKrakenTime || bossOarTime){
            _danh_boss()
        }
        if(arenaTime){
            _danh_chien_truong()
        }
        if(guildPartyTime){
            _game_clicker(93, 156)
            wait_for_guildParty := 5 * one_minute
            Sleep, %wait_for_guildParty%
        } 
        Sleep, 1000
    }
}