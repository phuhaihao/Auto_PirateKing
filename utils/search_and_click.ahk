#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%\utils\image_search.ahk
#Include %A_ScriptDir%\utils\game_clicker.ahk

_search_and_click(img_file, count_click = 1,pos1Hwnd = 0, pos2Hwnd = 0){
    result_search_array := _image_search(img_file, pos1Hwnd, pos2Hwnd)
    pos_x := result_search_array[1]
    pos_y := result_search_array[2]
    _game_clicker(pos_x, pos_y, count_click)
}