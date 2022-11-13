/*
    RightCtrl+ArrowUp    >>  PageUp
    RightCtrl+ArrowDown  >>  PageDown
    RightCtrl+ArrowLeft  >>  Home
    RightCtrl+ArrowRight >>  End
*/
>^Up::Send {PgUp}
<^>^Up::Send ^{PgUp}
>^+Up::Send +{PgUp}
<^>^+Up::Send ^+{PgUp}

>^Down::Send {PgDn}
<^>^Down::Send ^{PgDn}
>^+Down::Send +{PgDn}
<^>^+Down::Send ^+{PgDn}

>^Left::Send {Home}
<^>^Left::Send ^{Home}
>^+Left::Send +{Home}
<^>^+Left::Send ^+{Home}

>^Right::Send {End}
<^>^Right::Send ^{End}
>^+Right::Send +{End}
<^>^+Right::Send ^+{End}

/*
    デスクトップ切り替え
    F3 >> 仮装デスクトップ左移動
    F4 >> 仮装デスクトップ右移動
*/
F3:: SendEvent {LWin down}{LCtrl down}{Left down}{LWin up}{LCtrl up}{Left up}     ; switch to previous virtual desktop

F4:: SendEvent {LWin down}{LCtrl down}{Right down}{LWin up}{LCtrl up}{Right up}    ; switch to next virtual desktop

/*
    値として貼り付け
    Ctrl+G >> 値として貼り付け
*/
^g::
clipboard = %clipboard%  ;プレーンテキストに変換
Send,^v