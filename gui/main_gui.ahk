#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./gui/components/gui_text.ahk
#Include ./gui/components/gui_separator.ahk
#Include ./gui/components/gui_button.ahk
#Include ./gui/components/gui_input.ahk
#Include ./features/cuong_hoa.ahk
#Include ./features/dau_truong.ahk
#Include ./features/lat_the_bai.ahk
#Include ./features/daily_activity/daily_activity.ahk
#Include ./features/danh_phu_ban.ahk
#Include ./features/login_game.ahk

_main_gui(){
    gui_width := 266
    gui_height := 200
    first_elementX := 5
    first_elementY := 30
    _gui_text("Tính Năng", 266/2, 0)
    _gui_separator(20)
    _gui_button("Dừng", 100, 170, "stop_program")
    _gui_button("TSHT", 0, 170, "TSHT")
    _gui_button("Cường Hóa", first_elementX, first_elementY, "cuong_hoa")
    _gui_button("Đấu Trường Lật Bài", first_elementX + 85 , first_elementY , "dau_truong_lat_bai")
    _gui_button("Hoạt Động", first_elementX + 82 * 2, first_elementY, "daily_activity")
    global count_value := 0
    _gui_input(0, 0, 50, 20, "count_value")

    Gui Show, w%gui_width% h%gui_height%, Auto Onepiece
    Return

    GuiClose:
    ExitApp

    cuong_hoa:
        isRunning_state := 1
        GuiControlGet, count_Value
        _cuong_hoa(count_Value)
    return

    dau_truong_lat_bai:
        isRunning_state := 1
        _dau_truong()
        _lat_the_bai()
    return

    daily_activity:
        isRunning_state := 1
        _daily_activity()
    Return

    TSHT:
        Clipboard := "TIEPSUCHAITAC-pk9999"
    Return

    stop_program:
        isRunning_state := 0
    return
}
