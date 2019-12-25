#NoEnv
#MaxHotkeysPerInterval, 999999
SetBatchLines, -1
SetKeyDelay, -1
SetStoreCapslockMode, Off
; keys := "pmfjxqwou;cnshrdtaeiyvblzgk,./"  ; Duality
keys := "wpfjxqmou;cnshrdtaeiybvlzgk,./"    ; G3 (Duality Improved)
keyarr := StrSplit(keys)
isEnabled := False

Gui, New, -Resize +MinSize500x150, Hotswapper

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
Return

~LShift::
~RShift::
SetCapsLockState, Off
Return
#If

Pause::isEnabled := !isEnabled