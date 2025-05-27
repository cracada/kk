#Requires AutoHotkey v2.0
;#Warn All, Off
#SingleInstance Force
ProcessSetPriority "AboveNormal"
ListLines False
SendMode "Input"
SetStoreCapsLockMode False
 
 /*
 ;--------------------------------------------------------------------
 ; Launch as administrator
if (!A_IsAdmin)
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}
;* /
;--------------------------------------------------------------------
A_TrayMenu.Delete()  
A_TrayMenu.Add("重启", (*) => Reload())
A_TrayMenu.Add("暂停热键", (*) => Suspend())
A_TrayMenu.Add("暂停脚本", (*) => Pause())
A_TrayMenu.Add("退出", (*) => ExitApp())
*/

;--------------------------------------------------------------------
if FileExist("kk.ico")
    TraySetIcon("kk.ico")
else
    TraySetIcon()
    
;--------------------------------------------------------------------
CapsLock::
{
    static startTime := 0
    startTime := A_TickCount  
    KeyWait "CapsLock"        
    duration := A_TickCount - startTime
    if (duration < 300) {
        SetCapsLockState !GetKeyState("CapsLock", "T")
    }
    return false  
}

; Suspend and reload
#SuspendExempt true  
CapsLock & Esc:: Func_Suspend()
#SuspendExempt false

CapsLock & F5::Func_reload()

;--------------------------------------------------------------------
; Shift modifiers
CapsLock & `::Send "+``"
CapsLock & 1::Send "+1"
CapsLock & 2::Send "+2"
CapsLock & 3::Send "+3"
CapsLock & 4::Send "+4"
CapsLock & 5::Send "+5"
CapsLock & 6::Send "+6"
CapsLock & 7::Send "+7"
CapsLock & 8::Send "+8"
CapsLock & 9::
{
    if GetKeyState("Alt", "P")
        Func_doubleykh()
    else
        Send "+9"
}
CapsLock & 0::
{
    if GetKeyState("Alt", "P")
        Func_doubleykh()
    else
        Send "+0"
}
CapsLock & -::Send "+{-}"
CapsLock & =::Send "+{=}"

;--------------------------------------------------------------------
; Program & arrow contrlos
CapsLock & q::Send "!{F4}"
CapsLock & w::Send "^w"
CapsLock & e::Send "#^!e"
CapsLock & r::Send "!r"
CapsLock & t::Send "^t"
CapsLock & y::Send "^y"
CapsLock & u::Func_nav("Home")
CapsLock & i::Func_nav("Up")
CapsLock & o::Func_nav("End")
CapsLock & p::Func_winPin() 
CapsLock & [::Func_doublehkh()
CapsLock & ]::Func_doublezkh()

;--------------------------------------------------------------------
; Editor controls
CapsLock & a::Send "^a"
CapsLock & s::Send "^s"
CapsLock & d::Send "!d"
CapsLock & f::Send "^f"
CapsLock & g::Send "#^+g"
CapsLock & h::Send "^h"
CapsLock & j::Func_nav("Left")
CapsLock & k::Func_nav("Down")
CapsLock & l::Func_nav("Right")
CapsLock & `;::Send "{Esc}"

CapsLock & '::
{
    if GetKeyState("Alt", "P")
        Func_doubledyh()
    else
        Func_doublesyh()
}

;--------------------------------------------------------------------
; More editor controls
CapsLock & z::Send "^z"
CapsLock & x::Send "^x"
CapsLock & c::Send "^c"
CapsLock & v::Send "^v"
CapsLock & b::Send "+{Home}{BS}"
CapsLock & n::Send "^{BS}"
CapsLock & m::Send "{BS}"
CapsLock & ,::Send "{Del}"
CapsLock & .::Send "^{Del}"
CapsLock & /::Send "+{End}{BS}"

CapsLock & BackSpace::Send "{End}+{Home}{BS}"
CapsLock & \::Send "{Home}{Enter}{Up}"
CapsLock & Enter::Send "{End}{Enter}"
CapsLock & Space::Send "{Enter}"

;--------------------------------------------------------------------
; Mouse controls
CapsLock & PgUp::Click "Left"
CapsLock & PgDn::Click "Right"

CapsLock & Left::MouseMove -15, 0, 0, "R"
CapsLock & Down::MouseMove 0, 15, 0, "R"
CapsLock & Up::MouseMove 0, -15, 0, "R"
CapsLock & Right::MouseMove 15, 0, 0, "R"

;--------------------------------------------------------------------
; Functions
Func_nav(act)
{
    if GetKeyState("Control", "P")
    {
        if GetKeyState("Alt", "P")
            Send "^+{" act "}"
        else
            Send "^{" act "}"
    }
    else
    {
        if GetKeyState("Alt", "P")
            Send "+{" act "}"
        else
            Send "{" act "}"
    }
}

Func_winPin()
{
    try WinSetAlwaysOnTop -1, "A"  
    ToolTip("Win_Pin Finished!")
    SetTimer(RemoveToolTip, -1500)
}

    

Func_ditto(sn := "")
{
    Send "!``"
    if (sn != "")
    {
        Sleep 100
        Send "!" sn
    }
}

Func_doubleChar(char1, char2 := "")
{
    if (char2 == "")
        char2 := char1
    
    charLen := StrLen(char2)
    selText := getSelText()
    ClipboardOld := ClipboardAll()
    
    if (selText)
    {
        A_Clipboard := char1 . selText . char2
        SendInput "+{Insert}"
    }
    else
    {
        A_Clipboard := char1 . char2
        SendInput "+{Insert}{Left " charLen "}"
    }
    
    Sleep 100
    A_Clipboard := ClipboardOld
}

Func_doublejkh() => Func_doubleChar("<", ">")
Func_doubleykh() => Func_doubleChar("(", ")")
Func_doublezkh() => Func_doubleChar("[", "]")
Func_doublehkh() => Func_doubleChar("{", "}")
Func_doubledyh() => Func_doubleChar("'", "'")
Func_doublesyh() => Func_doubleChar('"')

getSelText()
{
    ClipboardOld := A_Clipboard
    A_Clipboard := ""
    SendInput("^{insert}")
    if (ClipWait(0.1))
    {
        selText := A_Clipboard
        A_Clipboard := ClipboardOld
        lastChar := SubStr(selText, -1)
        if (Ord(lastChar) != 10)
        {
            return selText
        }
    }
    A_Clipboard := ClipboardOld
    return
}

Func_Suspend() {
    if A_IsSuspended {
        Suspend(0)  
        SetCapsLockState("AlwaysOff")
        ToolTip("AHK 已恢复")
    }
    else {
        SetCapsLockState("Off")
        Suspend(1)  
        ToolTip("AHK 已暂停")
    }
    SetTimer(RemoveToolTip, -1500)
}

RemoveToolTip() => ToolTip()

Func_reload()
{
    MsgBox "Reload",, "T0.5"
    Reload
}

;--------------------------------------------------------------------
; Ctrl+Alt+G save to desktop (Listary Ctrl+G)
^!g:: JumpToPath(A_Desktop)
JumpToPath(p) {
    if WinActive("ahk_class #32770") {
        Send "!d"
        Sleep 30
        Send "^a{Backspace}" p "{Enter}"
    }
}

;F1 show help
CapsLock & F1::ShowTextWindow("Help",HelpText)
ShowTextWindow(title,text) {
    MyGui := Gui(, title)
    MyGui.BackColor := "EEEEEE"  
    MyGui.Margin := "20 20"  
    MyGui.SetFont("s12 Bold", "Courier New")
    MyGui.Opt("+Theme")
    txt := MyGui.Add("Text", "w660", text)
    MyGui.Add("Text", "xs") 
    btn := MyGui.Add("Button", "Default Center w680", "确定")
    btn.OnEvent("Click", (*) => MyGui.Destroy())    
    MyGui.OnEvent("Escape", (*) => MyGui.Destroy())
    MyGui.Show("Center")
    }

HelpText := (
"`n                      CR's AHK(2.0) Script                          `n"
"                      CapsLock Enhancement                          `n"
"--------------------------------------------------------------------`n"
"Summary:                                                            `n"
"--------------------------------------------------------------------`n"
"CapsLock + uiojkl             | Cursor Mover                        `n"
"CaspLock + qwp                | Windows & Tab Controller            `n"
"CaspLock + ertsdfgh           | Self Defined Programs               `n"  
"CapsLock + zxcvay             | Editor                              `n"
"         + bnm,./             | Editor(del)                         `n"
"         + Enter Backspace \  | Editor (line)                       `n"
"CapsLock + Esc `; F5 F1        | Suspend,Esc,Reload,Help             `n"
"CapsLock + []'                | Key Mapping                         `n"
"CapsLock + Direction          | Mouse Move                          `n"      
"CapsLock + PgUp/PgDn          | Mouse Click                         `n"
"CaspLock + 1234567890-=       | Shifter as Shift                    `n"
;"Lwin+F1F2F3 Ctrl+Alt+G        | Special Hot Keys            ;       `n"
"--------------------------------------------------------------------`n"
"Use it whatever and wherever U like. Hope it help                   `n"
)

#Include "*i ..\..\my.ahk"