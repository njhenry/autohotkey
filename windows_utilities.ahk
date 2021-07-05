;; -------------------------------------------------------------------------------------->
;;
;; WINDOWS UTILITIES
;;
;; Description: AutoHotKey helper utilities for Windows. Mainly used to quick-launch
;;  key programs and insert special characters.
;;
;; -------------------------------------------------------------------------------------->

	SetNumLockState, On

;; SECTION: INSERT SPECIAL CHARACTERS --------------------------------------------------->

	; Alt+Minus = Em dash
	!-::
	Send, {Alt Down}{NumpadAdd}{Numpad0}{Numpad1}{Numpad5}{Numpad1}{Alt Up}
	return

	; Shift+Alt+Minus = En dash
	+!-::
	Send, {Alt Down}{NumpadAdd}{Numpad0}{Numpad1}{Numpad5}{Numpad0}{Alt Up}
	return


;; SECTION: LAUNCH PROGRAMS ------------------------------------------------------------->

	;; Alt+v = Launch the F5 BIG-IP Edge Client VPN
	!v::
	Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\BIG-IP Edge Client.lnk"
	Sleep, 500 ; Wait half a second for the application to load
	Send, {Enter}
	return

	;; Alt+k = Launch the KiTTY GUI
	!k::
	Run, C:\Tools\kitty-0.74.4.13.exe
	return

	;; Alt+c = Launch a KiTTY terminal connection to the IHME cluster
	;; Note: Cluster session was saved as "Buster1" within the KiTTY GUI
	!c::
	Run, C:\Tools\kitty-0.74.4.13.exe -load "Buster1"
	return

	;; Alt+r = Launch RStudio
	!r::
	Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\RStudio\RStudio.lnk"
	return

	;; Alt+g = Launch Git Bash
	!g::
	Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"
