#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include, %A_ScriptDir%\libs\gdip.ahk
#Include, %A_ScriptDir%\libs\gdip_imageSearch.ahk

_image_search(image, pos1Hwnd = 0, pos2Hwnd = 0){
    image := A_ScriptDir "\img\" image ".png"
    WinGet, hwnd, ,%win_title%
    While(1){
        if(isRunning_state == 0){
            Break
        }
        screenImage := Gdip_BitmapFromHWND(hwnd)
        if(pos1Hwnd != 0){
            _clone_bitmap(screenImage, pos1Hwnd, pos2Hwnd)
        }
        findImage := Gdip_CreateBitmapFromFile(image)
        result_search := Gdip_ImageSearch(screenImage, findImage, outputSearch, 0,0,0,0,0,0xFFFFFF,1,0)
        Gdip_DisposeImage(screenImage)
        Gdip_DisposeImage(findImage)
        if(result_search == 1){
            outputSearch_array := StrSplit(outputSearch, ",")
            return StrSplit(outputSearch, ",")
            Break
        }

        Sleep, 500
    }
}

_image_save_to_file(image, fileName){
    findImage := Gdip_CreateBitmapFromFile(image)
    path := A_ScriptDir "/img/" fileName ".png"
    Gdip_SaveBitmapToFile(findImage, path)
}

_clone_bitmap(screenImage, pos1, pos2){
    pos1_arr := StrSplit(pos1, ", ")
    pos2_arr := StrSplit(pos2, ", ")
    width := pos2_arr[1] - pos1_arr[1]
    height := pos2_arr[2] - pos1_arr[2]
    cloneImage := Gdip_CloneBitmapArea(screenImage, pos1_arr[1], pos1_arr[2], width, height)
    return cloneImage
}

_image_search_boolean(image, pos1Hwnd = 0, pos2Hwnd = 0){
    image := A_ScriptDir "\img\" image ".png"
    WinGet, hwnd, ,%win_title%
    screenImage := Gdip_BitmapFromHWND(hwnd)
    if(pos1Hwnd != 0){
        _clone_bitmap(screenImage, pos1Hwnd, pos2Hwnd)
    }
    findImage := Gdip_CreateBitmapFromFile(image)
    result_search := Gdip_ImageSearch(screenImage, findImage, outputSearch, 0,0,0,0,0,0xFFFFFF,1,0)
    Gdip_DisposeImage(screenImage)
    Gdip_DisposeImage(findImage)
    if(result_search == 1){
        outputSearch_array := StrSplit(outputSearch, ",")
        return 1
    }else{
        return 0
    }
}