#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/dau_truong_service.ahk
#Include ./libs/utf8_encoder.ahk

_dau_truong(){
    content := Utf8Encode("Mua Lượt Đấu Trường Không?")
    MsgBox, 4, , %content%, 5
    pos1 := "376, 45"
    pos2 := "1101, 245"
    _search_and_click("dau_truong", 1, pos1, pos2)
    Sleep, 1000

    IfMsgBox Timeout
    _mua_luot_dau_truong()
    _danh_dau_truong()
    return
    IfMsgBox No
    _danh_dau_truong()
    return

}