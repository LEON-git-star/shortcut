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
    Lofree Flow 謎のPrtScのブラウザ起動を止める
*/
+#3::Return

