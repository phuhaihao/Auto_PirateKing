#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Utf8Encode( content ) {
    vSize := StrPut(content, "CP0")
    VarSetCapacity(vUtf8, vSize)
    vSize := StrPut(content, &vUtf8, vSize, "CP0")
    texto_corrigido := StrGet(&vUtf8, "UTF-8")
    Return texto_corrigido
}