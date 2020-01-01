#NoEnv
#MaxHotkeysPerInterval, 999999
#SingleInstance, force
SetBatchLines, -1
SetKeyDelay, -1
SetStoreCapslockMode, Off
; keys := "pmfjxqwou;cnshrdtaeiyvblzgk,./"      ; Duality
; keys := "wpfjxqmou;cnshrdtaeiybvlzgk,./"      ; G3 (Duality+)
keys := {}
Loop, Read, %A_ScriptDir%\layouts.txt
{
    RegExMatch(A_LoopReadLine, "O)([\w;,./]+)\s*(.+)", match)
    keys[match.2] := match.1
}
for layouts in keys
    keyChoices .= layouts . "|"
keyarr := StrSplit("qwertyuiopasdfghjkl;zxcvbnm,./")    ; Temporary hardcoding
isEnabled := False                                      ; Toggles the mappings on/off
swapNum := ""
DIMENSION = 40                                          ; Dimensions of the keys
PADDING = 10                                            ; Padding between the keys

Gui, New, +AlwaysOnTop, Keyboard Layout Designer
Gui, Font, s14
Gui, Margin, %PADDING%, %PADDING%
Gui, Add, Button, % "h" DIMENSION " w" DIMENSION " gAssignKey v1", % keyarr[1]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v2",  % keyarr[2]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v3",  % keyarr[3]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v4",  % keyarr[4]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v5",  % keyarr[5]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v6",  % keyarr[6]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v7",  % keyarr[7]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v8",  % keyarr[8]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v9",  % keyarr[9]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v10", % keyarr[10]
Gui, Add, Button, % "hp wp x"  PADDING " gAssignKey v11", % keyarr[11]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v12", % keyarr[12]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v13", % keyarr[13]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v14", % keyarr[14]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v15", % keyarr[15]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v16", % keyarr[16]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v17", % keyarr[17]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v18", % keyarr[18]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v19", % keyarr[19]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v20", % keyarr[20]
Gui, Add, Button, % "hp wp x"  PADDING " gAssignKey v21", % keyarr[21]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v22", % keyarr[22]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v23", % keyarr[23]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v24", % keyarr[24]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v25", % keyarr[25]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v26", % keyarr[26]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v27", % keyarr[27]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v28", % keyarr[28]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v29", % keyarr[29]
Gui, Add, Button, % "hp wp x+" PADDING " gAssignKey v30", % keyarr[30]
Gui, Font
Gui, Add, Button, wp, &Apply
Gui, Add, DropDownList, % "vlayoutChoice w" DIMENSION*3 " x+-" DIMENSION*4 + PADDING, %keyChoices%
Gui, Add, Button, % "yp x" PADDING, &Copy
Gui, Add, Button, % "x+"   PADDING, &Edit
Gui, Add, Button, % "x+"   PADDING, &Reload

Gui, Add, StatusBar
Gui, Show

#If (isEnabled)
*VK51::Send % "{Blind}{" keyarr[1] " DownR}"
*VK51 up::Send % "{Blind}{" keyarr[1] " up}"
*VK57::Send % "{Blind}{" keyarr[2] " DownR}"
*VK57 up::Send % "{Blind}{" keyarr[2] " up}"
*VK45::Send % "{Blind}{" keyarr[3] " DownR}"
*VK45 up::Send % "{Blind}{" keyarr[3] " up}"
*VK52::Send % "{Blind}{" keyarr[4] " DownR}"
*VK52 up::Send % "{Blind}{" keyarr[4] " up}"
*VK54::Send % "{Blind}{" keyarr[5] " DownR}"
*VK54 up::Send % "{Blind}{" keyarr[5] " up}"
*VK59::Send % "{Blind}{" keyarr[6] " DownR}"
*VK59 up::Send % "{Blind}{" keyarr[6] " up}"
*VK55::Send % "{Blind}{" keyarr[7] " DownR}"
*VK55 up::Send % "{Blind}{" keyarr[7] " up}"
*VK49::Send % "{Blind}{" keyarr[8] " DownR}"
*VK49 up::Send % "{Blind}{" keyarr[8] " up}"
*VK4F::Send % "{Blind}{" keyarr[9] " DownR}"
*VK4F up::Send % "{Blind}{" keyarr[9] " up}"
*VK50::Send % "{Blind}{" keyarr[10] " DownR}"
*VK50 up::Send % "{Blind}{" keyarr[10] " up}"
*VK41::Send % "{Blind}{" keyarr[11] " DownR}"
*VK41 up::Send % "{Blind}{" keyarr[11] " up}"
*VK53::Send % "{Blind}{" keyarr[12] " DownR}"
*VK53 up::Send % "{Blind}{" keyarr[12] " up}"
*VK44::Send % "{Blind}{" keyarr[13] " DownR}"
*VK44 up::Send % "{Blind}{" keyarr[13] " up}"
*VK46::Send % "{Blind}{" keyarr[14] " DownR}"
*VK46 up::Send % "{Blind}{" keyarr[14] " up}"
*VK47::Send % "{Blind}{" keyarr[15] " DownR}"
*VK47 up::Send % "{Blind}{" keyarr[15] " up}"
*VK48::Send % "{Blind}{" keyarr[16] " DownR}"
*VK48 up::Send % "{Blind}{" keyarr[16] " up}"
*VK4A::Send % "{Blind}{" keyarr[17] " DownR}"
*VK4A up::Send % "{Blind}{" keyarr[17] " up}"
*VK4B::Send % "{Blind}{" keyarr[18] " DownR}"
*VK4B up::Send % "{Blind}{" keyarr[18] " up}"
*VK4C::Send % "{Blind}{" keyarr[19] " DownR}"
*VK4C up::Send % "{Blind}{" keyarr[19] " up}"
*VKBA::Send % "{Blind}{" keyarr[20] " DownR}"
*VKBA up::Send % "{Blind}{" keyarr[20] " up}"
*VK5A::Send % "{Blind}{" keyarr[21] " DownR}"
*VK5A up::Send % "{Blind}{" keyarr[21] " up}"
*VK58::Send % "{Blind}{" keyarr[22] " DownR}"
*VK58 up::Send % "{Blind}{" keyarr[22] " up}"
*VK43::Send % "{Blind}{" keyarr[23] " DownR}"
*VK43 up::Send % "{Blind}{" keyarr[23] " up}"
*VK56::Send % "{Blind}{" keyarr[24] " DownR}"
*VK56 up::Send % "{Blind}{" keyarr[24] " up}"
*VK42::Send % "{Blind}{" keyarr[25] " DownR}"
*VK42 up::Send % "{Blind}{" keyarr[25] " up}"
*VK4E::Send % "{Blind}{" keyarr[26] " DownR}"
*VK4E up::Send % "{Blind}{" keyarr[26] " up}"
*VK4D::Send % "{Blind}{" keyarr[27] " DownR}"
*VK4D up::Send % "{Blind}{" keyarr[27] " up}"
*VKBC::Send % "{Blind}{" keyarr[28] " DownR}"
*VKBC up::Send % "{Blind}{" keyarr[28] " up}"
*VKBE::Send % "{Blind}{" keyarr[29] " DownR}"
*VKBE up::Send % "{Blind}{" keyarr[29] " up}"
*VKBF::Send % "{Blind}{" keyarr[30] " DownR}"
*VKBF up::Send % "{Blind}{" keyarr[30] " up}"

CapsLock::BackSpace

LShift & RShift::
RShift & LShift::
SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"
return

~LShift::
~RShift::
SetCapsLockState, Off
return
#If

Pause::isEnabled := !isEnabled

AssignKey:
global swapNum, keyarr
; If no keys are declared but two buttons are pressed consecutively, swap them.
Input ; interrupts any preexisting threads, if they exist
if (swapNum) {
    swap := keyarr[A_GuiControl]
    keyarr[A_GuiControl] := keyarr[swapNum]
    keyarr[swapNum] := swap
    SB_SetText("Swapped key " swapNum " with " A_GuiControl)
    GuiControl,, %A_GuiControl%, % keyarr[A_GuiControl]
    GuiControl,, %swapNum%, % keyarr[swapNum]
    ; ToolTip % A_GuiControl "_ " keyarr[A_GuiControl] "_ " temp "_ " swapNum "_ " ErrorLevel
    swapNum := ""
    return
}
swapNum := A_GuiControl
SB_SetText("Press a key to reassign")
Input, temp, L1
; Interrupted by a new thread
if (ErrorLevel == "NewInput") 
    return

keyarr[A_GuiControl] := temp
GuiControl,, %A_GuiControl%, %temp%
SB_SetText("")
; ToolTip % A_GuiControl "_ " keyarr[A_GuiControl] "_ " temp "_ " swapNum "_ " ErrorLevel
swapNum := ""
return

ButtonApply:
Gui, Submit, NoHide
if (!layoutChoice)
    return
keyarr := StrSplit(keys[layoutChoice])
Loop, 30
    GuiControl,, %A_Index%, % keyarr[A_Index]
return

ButtonEdit:
Run, %A_ScriptDir%\layouts.txt
return

ButtonCopy:
clip := ""
Loop % keyarr.Length()
    clip .= keyarr[A_Index]
clipboard := clip
SB_SetText("Copied current layout to clipboard")
return

ButtonReload:
Reload

GuiEscape:
GuiClose:
ExitApp
