/*
    LeftControl or RightCtrl+ArrowUp    >>  PageUp
    LeftControl or RightCtrl+ArrowDown  >>  PageDown
    LeftControl or RightCtrl+ArrowLeft  >>  Home
    LeftControl or RightCtrl+ArrowRight >>  End
*/
<^Up::Send, {PgUp}
>!Up::Send, {PgUp}

<^Down::Send, {PgDn}
>!Down::Send, {PgDn}

<^Left::Send, {Home}
>!Left::Send, {Home}

<^Right::Send, {End}
>!Right::Send, {End}

/*
    値として貼り付け
    Ctrl+G >> 値として貼り付け
*/
^g::
clipboard = %clipboard%  ;プレーンテキストに変換
Send,^v

/*
    CapsLockに半角／全角割り当て
*/
CapsLock::Send, {vkF3sc029}

/*
    ウィンドウの最大化／最小化(Excelだけなぜかようわからん動きする)
    Lofree Flow Home >>  Win + ↑
                End  >>  Win + ↓
*/
#ifWinActive ahk_exe EXCEL.EXE
Home::Send, ^{F10}
End::Send, ^{F10}
#IfWinActive
Home::Send, #{Up}
End::Send, #{Down}

/*
    ウィンドウの切り替え
    Lofree Flow PgUp >>  Alt + ESC
                PgDn >>  Alt + Shift + ESC
*/
PgUp::Send, !{ESC}
PgDn::Send, !+{ESC}

/*
    開いているウィンドウを閉じる
    Lofree Flow F12 >>  Alt + F4
*/
F12::Send, !{F4}

/*
    Lofree Flow 謎のPrtScのブラウザ起動を止める(Fn + nでWindowsモードにすればこれ不要)
*/
+#3::Return
