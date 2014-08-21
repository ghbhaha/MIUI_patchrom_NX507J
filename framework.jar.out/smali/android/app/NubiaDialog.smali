.class public Landroid/app/NubiaDialog;
.super Landroid/app/Dialog;
.source "NubiaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NubiaDialog$Builder;,
        Landroid/app/NubiaDialog$ButtonHandler;
    }
.end annotation


# instance fields
.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mHandler:Landroid/os/Handler;

.field private mbutton_cancel:Landroid/widget/TextView;

.field private mbutton_ok:Landroid/widget/TextView;

.field private mdialog_View:Landroid/view/View;

.field private mtext_message:Landroid/widget/TextView;

.field private mtext_title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/app/NubiaDialog$1;

    invoke-direct {v0, p0}, Landroid/app/NubiaDialog$1;-><init>(Landroid/app/NubiaDialog;)V

    iput-object v0, p0, Landroid/app/NubiaDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Landroid/app/NubiaDialog$ButtonHandler;

    invoke-direct {v0, p0}, Landroid/app/NubiaDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/app/NubiaDialog;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10900ad

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    .line 121
    iget-object v0, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x1020350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/NubiaDialog;->mbutton_ok:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x102034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/NubiaDialog;->mbutton_cancel:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x102034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/NubiaDialog;->mtext_title:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    const v1, 0x102034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/NubiaDialog;->mtext_message:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_ok:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/NubiaDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/NubiaDialog;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/app/NubiaDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_ok:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/NubiaDialog;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/NubiaDialog;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/NubiaDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_cancel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/NubiaDialog;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/NubiaDialog;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/NubiaDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/NubiaDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/NubiaDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method private setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 201
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 202
    iget-object v0, p0, Landroid/app/NubiaDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 204
    :cond_0
    if-eqz p2, :cond_1

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_0
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_ok:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iput-object p4, p0, Landroid/app/NubiaDialog;->mButtonPositiveMessage:Landroid/os/Message;

    .line 224
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 213
    :pswitch_2
    iget-object v0, p0, Landroid/app/NubiaDialog;->mbutton_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iput-object p4, p0, Landroid/app/NubiaDialog;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10802c6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NubiaDialog;->mdialog_View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 145
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 238
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 247
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/NubiaDialog;->mtext_message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/app/NubiaDialog;->mtext_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 166
    return-void
.end method
