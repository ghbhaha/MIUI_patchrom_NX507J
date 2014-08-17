.class public Landroid/app/NubiaDialog$Builder;
.super Ljava/lang/Object;
.source "NubiaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 257
    const v0, 0x1030316

    invoke-direct {p0, p1, v0}, Landroid/app/NubiaDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030316

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    .line 274
    iput p2, p0, Landroid/app/NubiaDialog$Builder;->mTheme:I

    .line 275
    return-void
.end method


# virtual methods
.method public create()Landroid/app/NubiaDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 533
    new-instance v0, Landroid/app/NubiaDialog;

    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/NubiaDialog;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, dialog:Landroid/app/NubiaDialog;
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 538
    :cond_0
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 541
    :cond_1
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 542
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #calls: Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/NubiaDialog;->access$500(Landroid/app/NubiaDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 545
    :cond_2
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 546
    const/4 v1, -0x2

    iget-object v2, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #calls: Landroid/app/NubiaDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/NubiaDialog;->access$500(Landroid/app/NubiaDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 551
    :cond_3
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 556
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setView(Landroid/view/View;)V

    .line 565
    :cond_4
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setCancelable(Z)V

    .line 566
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_5

    .line 567
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setCanceledOnTouchOutside(Z)V

    .line 569
    :cond_5
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 570
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 571
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_6

    .line 572
    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/NubiaDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 574
    :cond_6
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 414
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 415
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 322
    return-object p0
.end method

.method public setIcon(I)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 351
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 352
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 514
    return-object p0
.end method

.method public setMessage(I)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 331
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 332
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 342
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 389
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 390
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 391
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 403
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 404
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 433
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "onDismissListener"

    .prologue
    .line 442
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 443
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 452
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 453
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 363
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 365
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 521
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 522
    return-object p0
.end method

.method public setTitle(I)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 296
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/NubiaDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 305
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 306
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 466
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 467
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 468
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/NubiaDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 495
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 496
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 497
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 498
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 499
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 500
    iget-object v0, p0, Landroid/app/NubiaDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 501
    return-object p0
.end method

.method public show()Landroid/app/NubiaDialog;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/app/NubiaDialog$Builder;->create()Landroid/app/NubiaDialog;

    move-result-object v0

    .line 583
    .local v0, dialog:Landroid/app/NubiaDialog;
    invoke-virtual {v0}, Landroid/app/NubiaDialog;->show()V

    .line 584
    return-object v0
.end method
