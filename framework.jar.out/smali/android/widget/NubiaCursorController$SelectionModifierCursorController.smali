.class public Landroid/widget/NubiaCursorController$SelectionModifierCursorController;
.super Landroid/widget/NubiaCursorController;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 4
    .parameter "editor"
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 1125
    invoke-direct {p0, p1, p2}, Landroid/widget/NubiaCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 1107
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 1108
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 1109
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 1116
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 1117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 1126
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p0}, Landroid/widget/NubiaCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1127
    invoke-virtual {p0, p1, v3, p0}, Landroid/widget/NubiaCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1128
    new-instance v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)V

    .line 1135
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    const v1, 0x10900c6

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 1136
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020389

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x102038a

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x1020384

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1139
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1140
    return-void
.end method

.method static synthetic access$500(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "clipboardManager"
    .parameter "clipdata"
    .parameter "defaultText"

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-static {v0, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1144
    return-void
.end method

.method public computePanelPosition([I)V
    .locals 4
    .parameter "outPositon"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1148
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1149
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1150
    iget-object v0, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1151
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v3

    .line 1152
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1160
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v0, v0, v2

    aput v0, p1, v2

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 1158
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1165
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHandleNoShadowRealHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public computePanelPositionOnEndTop()I
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1171
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1184
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1185
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1187
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1194
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "touchHandleView"
    .parameter "event"

    .prologue
    .line 1198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1209
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1200
    :pswitch_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 1203
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 1214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 1215
    .local v9, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v2, :cond_3

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1217
    const/4 v2, 0x1

    if-eq v9, v2, :cond_0

    const/4 v2, 0x3

    if-ne v9, v2, :cond_1

    .line 1218
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1222
    :cond_1
    const/4 v10, 0x1

    .line 1288
    :cond_2
    :goto_0
    return v10

    .line 1224
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v9, :cond_9

    .line 1225
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    .line 1226
    .local v19, xpos:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    .line 1227
    .local v20, ypos:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v14

    .line 1228
    .local v14, isTouchStartHandle:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v13

    .line 1229
    .local v13, isTouchEndHandle:Z
    const/16 v18, 0x0

    .line 1230
    .local v18, touchHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1240
    :cond_4
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v2, :cond_9

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1245
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1246
    const/4 v10, 0x1

    goto :goto_0

    .line 1234
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1237
    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1238
    :cond_8
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1249
    .end local v13           #isTouchEndHandle:Z
    .end local v14           #isTouchStartHandle:Z
    .end local v18           #touchHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;
    .end local v19           #xpos:F
    .end local v20           #ypos:F
    :cond_9
    packed-switch v9, :pswitch_data_0

    .line 1282
    :cond_a
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v11

    .line 1283
    .local v11, hasMagnifier:Z
    const/4 v10, 0x0

    .line 1284
    .local v10, handle:Z
    if-eqz v11, :cond_b

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/TextMagnifierController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lnubia/ui/widget/MagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1286
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/NubiaCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1251
    .end local v10           #handle:Z
    .end local v11           #hasMagnifier:Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1252
    .local v5, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1253
    .local v6, y:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    .line 1254
    .local v15, offset:I
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1255
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v2 .. v8}, Landroid/widget/Editor;->startTextSelectionModeIfDoubleTap(JFFFF)V

    .line 1257
    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 1258
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_2

    .line 1262
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v15           #offset:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 1265
    .local v16, pCounts:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 1267
    .local v17, pOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_c

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1268
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v17

    if-le v0, v2, :cond_d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1265
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1273
    .end local v12           #index:I
    .end local v16           #pCounts:I
    .end local v17           #pOffset:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->onTapUpEvent()V

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_2

    .line 1249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1292
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1293
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1294
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1297
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1298
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1299
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 1303
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1304
    iget-object v3, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1305
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1306
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1307
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1308
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 1309
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1310
    iget-object v3, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hideInsertionPointCursorControllerWrap()V

    .line 1311
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1312
    .local v0, buttonIds:[I
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 1313
    .local v1, splitIds:[I
    iget-object v3, p0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1314
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1311
    :array_0
    .array-data 0x4
        0x89t 0x3t 0x2t 0x1t
        0x8at 0x3t 0x2t 0x1t
        0x84t 0x3t 0x2t 0x1t
    .end array-data

    .line 1312
    :array_1
    .array-data 0x4
        0x81t 0x3t 0x2t 0x1t
        0x83t 0x3t 0x2t 0x1t
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1320
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1323
    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1326
    .local v1, start:I
    iget-object v2, p0, Landroid/widget/NubiaCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1327
    .local v0, end:I
    if-ltz v1, :cond_3

    if-gez v0, :cond_4

    .line 1328
    :cond_3
    const-string v2, "NubiaCursorController"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1332
    :cond_4
    if-ne v1, v0, :cond_5

    .line 1333
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1336
    :cond_5
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1337
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1338
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1339
    :cond_6
    iget-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_0

    .line 1340
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1341
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
