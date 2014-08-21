.class public Landroid/widget/NubiaCursorController$InsertionPointCursorController;
.super Landroid/widget/NubiaCursorController;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private final mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 3
    .parameter "editor"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 502
    invoke-direct {p0, p1, p2}, Landroid/widget/NubiaCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 494
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    .line 498
    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 503
    const v1, 0x10900c4

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 504
    const v1, 0x10900c3

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 505
    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/NubiaCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 506
    new-instance v0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)V

    .line 513
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020380

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 514
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020382

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 515
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020384

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020386

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 517
    return-void
.end method

.method static synthetic access$200(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 521
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->invisible()V

    .line 522
    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController;->setMinMaxOffset(I)V

    .line 523
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 1
    .parameter "outPositon"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 528
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 533
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public computePanelPositionOnEndTop()I
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 543
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public computePanelXPosition()I
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 538
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 548
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 549
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 550
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 558
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "handleView"
    .parameter "ev"

    .prologue
    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 563
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 566
    :pswitch_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 567
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onHandleMoved()V

    goto :goto_0

    .line 570
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long v0, v2, v4

    .line 571
    .local v0, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 574
    :cond_2
    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 594
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 587
    :pswitch_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method setupClipBoardPanel(Landroid/content/ClipData;Landroid/view/View$OnClickListener;)V
    .locals 10
    .parameter "clipData"
    .parameter "onClickListener"

    .prologue
    .line 603
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v8, 0x102037f

    invoke-virtual {v7, v8}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->getElement(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 604
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 605
    invoke-static {}, Lnubia/ui/content/ClipServiceManagerExtra;->getInstance()Lnubia/ui/content/ClipServiceManagerExtra;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lnubia/ui/content/ClipServiceManagerExtra;->getData(I)Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, datas:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 607
    .local v5, num:I
    iget-object v7, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 608
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 609
    const v7, 0x10900c5

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 610
    .local v6, tv:Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {v6, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    const v7, 0x1080704

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 613
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 639
    return-void

    .line 615
    :cond_1
    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    .line 616
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 617
    const v7, 0x10900c5

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 618
    .restart local v6       #tv:Landroid/widget/TextView;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {v6, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    if-nez v1, :cond_3

    .line 621
    const v7, 0x1080708

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 626
    :goto_1
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    add-int/lit8 v7, v5, -0x1

    if-eq v1, v7, :cond_2

    .line 630
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 631
    .local v3, iv:Landroid/widget/ImageView;
    const v7, 0x1080709

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 633
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_3
    add-int/lit8 v7, v5, -0x1

    if-ne v1, v7, :cond_4

    .line 623
    const v7, 0x1080702

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 625
    :cond_4
    const v7, 0x1080706

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 643
    const/4 v9, 0x4

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    .line 645
    .local v0, btnIds:[I
    const/4 v9, 0x3

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 647
    .local v4, splitIds:[I
    iget-object v9, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 648
    .local v6, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9, v0, v4, v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 649
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 650
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 651
    const/4 v3, 0x1

    .line 652
    .local v3, isShowing:Z
    iget-object v9, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 653
    .local v5, start:I
    iget v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v5, v9, :cond_0

    iget-object v9, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-gtz v9, :cond_2

    :cond_0
    move v1, v8

    .line 654
    .local v1, isShowHandle:Z
    :goto_0
    iget-object v9, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/TextMagnifierController;

    move-result-object v9

    invoke-virtual {v9}, Lnubia/ui/widget/MagnifierController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    move v2, v8

    .line 655
    .local v2, isShowMagnifier:Z
    :goto_1
    iput v5, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 656
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 657
    if-eqz v1, :cond_1

    .line 658
    if-nez v2, :cond_1

    .line 659
    iget-object v7, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v7, :cond_4

    .line 660
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 664
    :goto_2
    iget-boolean v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    .line 667
    :cond_1
    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 668
    return-void

    .end local v1           #isShowHandle:Z
    .end local v2           #isShowMagnifier:Z
    :cond_2
    move v1, v7

    .line 653
    goto :goto_0

    .restart local v1       #isShowHandle:Z
    :cond_3
    move v2, v7

    .line 654
    goto :goto_1

    .line 662
    .restart local v2       #isShowMagnifier:Z
    :cond_4
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    goto :goto_2

    .line 643
    :array_0
    .array-data 0x4
        0x80t 0x3t 0x2t 0x1t
        0x82t 0x3t 0x2t 0x1t
        0x84t 0x3t 0x2t 0x1t
        0x86t 0x3t 0x2t 0x1t
    .end array-data

    .line 645
    :array_1
    .array-data 0x4
        0x81t 0x3t 0x2t 0x1t
        0x83t 0x3t 0x2t 0x1t
        0x85t 0x3t 0x2t 0x1t
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 673
    iget v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_0

    .line 674
    const-string v0, "NubiaCursorController"

    const-string v1, "Update cursor controller position called with no cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->hide()V

    .line 689
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 680
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 685
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 687
    :cond_2
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method
