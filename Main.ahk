#SingleInstance, Force

vcurrent := 8                                                                                                             				;;CHANGE THIS BEFORE UPDATING
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/material234/psychic-pancake/main/README.md", true)
whr.Send()
whr.WaitForResponse()
vnet := whr.ResponseText
vnet2 := "`n"
vchecked := StrReplace(vnet, vnet2)

	IfNotExist, %A_MyDocuments%\HAutomations
	FileCreateDir, %A_MyDocuments%\HAutomations
	IniWrite, %vcurrent%, %A_MyDocuments%\HAutomations\Config.ini, Config, Version
	IniWrite, 26, %A_MyDocuments%\HAutomations\Config.ini, Config, Timings
	UrlDownloadToFile, https://github.com/material234/psychic-pancake/raw/main/Timer.exe, %A_MyDocuments%\HAutomations\Timer.exe
	Sleep, 333

Gui, Color, White
Gui, -Caption +AlwaysOnTop 
Gui, Font, S16 Bold, System
Gui, Add, Text, vText Center, F9=START SPACE=RELOAD IT X=EXIT APP `n`n V1.%vcurrent%, WEB: V1.%vchecked%
Gui, Show, AutoSize
Sleep, 2500
Gui, Destroy
Return

Essa:
Exit

F9::
Run, %A_MyDocuments%\HAutomations\Timer.exe
Random, rows, 10, 15
BreakFlag = 
Gosub, Start

Start:
Loop, %rows% {
Random, slep, 81, 113
Random, slep1, 126, 166
Random, slep2, 86, 111
Random, slept, 151, 251
Random, slept1, 151, 251
Random, slept2, 49, 122
Random, slept3, 251, 551
Random, slept4, 251, 551
Random, slept5, 3000, 5000
Random, slept6, 2000, 3000
Sleep, 500
ControlSend,, {g Down}, ahk_exe javaw.exe
Sleep, 250
Sleep, %slept2%
if BreakFlag {
ControlSend,, {g Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {s Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {a Up}, ahk_exe javaw.exe
	Goto, Essa
}
ControlSend,, {s Down}, ahk_exe javaw.exe
SleepMe(27)
Sleep, %slept3%
ControlSend,, {s Up}, ahk_exe javaw.exe
Sleep, %slept%
if BreakFlag {
ControlSend,, {g Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {s Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {a Up}, ahk_exe javaw.exe
	Goto, Essa
}
ControlSend,, {a Down}, ahk_exe javaw.exe
SleepMb(27)


SleepMe(ByRef gr) {
global
BreakFlag = 
gr := gr*10
Loop, %gr% {
Sleep, 100
if BreakFlag 
	break
	}
}
SleepMb(ByRef gp) {
global
gp := gp*10
Loop, %gp% {
Sleep, 100
if BreakFlag
	break
	}
}
Sleep, %slept4%
ControlSend,, {a Up}, ahk_exe javaw.exe
Sleep, %slept1%
ControlSend,, {g Up}, ahk_exe javaw.exe
Sleep, 126
}
Goto, tping



tping:
ControlSend,, {g Up}, ahk_exe javaw.exe
Random, kpress, 100, 200
Sleep, %slept6%
ControlSend,, {j Down}, ahk_exe javaw.exe
Sleep, %slept2%
ControlSend,, {j Up}, ahk_exe javaw.exe
Sleep, %slept6%
ControlSend,, {J Down}, ahk_exe javaw.exe
Sleep, %slept2%
ControlSend,, {J Up}, ahk_exe javaw.exe
Sleep, %slept5%
Goto, Start
Return




x::
WinKill ahk_exe Timer.exe
ControlSend,, {g Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {s Up}, ahk_exe javaw.exe
Sleep, 15
ControlSend,, {a Up}, ahk_exe javaw.exe
Sleep, 15
ExitApp

SPACE::
WinKill ahk_exe Timer.exe
ControlSend,, {a Up}, ahk_exe javaw.exe
Sleep, 25
ControlSend,, {s Up}, ahk_exe javaw.exe
Sleep, 25
ControlSend,, {g Up}, ahk_exe javaw.exe
Sleep, 50
	IfWinExist, ahk_exe javaw.exe
		{
				ControlSend,, {e Down}, ahk_exe javaw.exe
				Sleep, %slep%
				ControlSend,, {e Up}, ahk_exe javaw.exe
				WinActivate
				Sleep, %slep1%
				WinMaximize
				ControlSend,, {e Down}, ahk_exe javaw.exe
				Sleep, %slep2%
				ControlSend,, {e Up}, ahk_exe javaw.exe
		}
BreakFlag = 1

