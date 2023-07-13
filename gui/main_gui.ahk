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
#Include ./features/danh_boss.ahk
#Include ./features/danh_phu_ban.ahk
#Include ./features/danh_chien_truong.ahk

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
    _gui_button("Đấu Trường", first_elementX + 85, first_elementY, "dau_truong")
    _gui_button("Lật Bài", first_elementX + 85 * 2, first_elementY, "lat_the_bai")
    _gui_button("Đánh Boss", first_elementX, first_elementY + 30, "danh_boss")
    _gui_button("Tấn Công", first_elementX + 85, first_elementY + 30, "danh_phu_ban")
    _gui_button("Chiến Trường", first_elementX + 85 * 2, first_elementY + 30, "chien_truong")
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

    dau_truong:
        isRunning_state := 1
        _dau_truong()
    return

    lat_the_bai:
        isRunning_state := 1
        _lat_the_bai()
    Return

    danh_boss:
        isRunning_state := 1
        _danh_boss()
    Return

    chien_truong:
        isRunning_state := 1
        _danh_chien_truong()
    Return

    danh_phu_ban:
        isRunning_state := 1
        GuiControlGet, count_Value
        _danh_phu_ban(count_Value)
    Return

    TSHT:
        Clipboard := "TIEPSUCHAITAC-pk9999"
    Return

    stop_program:
        isRunning_state := 0
    return
}
