#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

_gui_input(x, y, w, h, variable := ""){
    if(variable == ""){
        Gui Add, Edit, x%x% y%y% w%w% h%h%
    }else{
        Gui Add, Edit, x%x% y%y% w%w% h%h% v%variable%
    }
}
