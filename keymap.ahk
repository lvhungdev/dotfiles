#Requires AutoHotkey v2.0

; Prevent Alt + Arrow Keys from inserting symbols but keep their function
!Left::Send("{Blind}{Left}")
!Right::Send("{Blind}{Right}")
!Up::Send("{Blind}{Up}")
!Down::Send("{Blind}{Down}")

!+Left::Send("{Blind}{Left}")
!+Right::Send("{Blind}{Right}")
!+Up::Send("{Blind}{Up}")
!+Down::Send("{Blind}{Down}")


; Arrow Up to <c-p> and Arrow Down to <c-n>
#HotIf WinActive("ahk_exe rider64.exe") || WinActive("ahk_exe datagrip64.exe")
	^n::Send("{Down}")
	^p::Send("{Up}")
#HotIf

letterString := "abcdefghijklmnoprstuvwxyz/"
Loop Parse, letterString {
    ; Use A_LoopField which is automatically captured
    currentChar := A_LoopField
    Hotkey("!" . currentChar, ((c) => (*) => Send("^" . c))(currentChar))
}

!q::Send("!{F4}")
!+s::Send("^+s")
!+z::Send("^+z")
!+n::Send("^+n")
!+a::Send("^+a")
!+w::Send("^+w")
!+i::send("^+i")
!+t::send("^+t")
!+F12::send("^+{F12}")
