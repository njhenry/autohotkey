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
