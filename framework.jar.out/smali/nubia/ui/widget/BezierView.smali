.class public Lnubia/ui/widget/BezierView;
.super Landroid/view/View;
.source "BezierView.java"


# static fields
.field private static final COUNT_STEP:I = 0x8

.field private static final MIDDLE_FRAMES:I = 0x9

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final NO_DRAW_STATUS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BezierView"

.field private static final TOTAL_COUNT_FRAME:I = 0x14


# instance fields
.field private animationSwitch:I

.field private mArcHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsContinue:Z

.field private mIsRunning:Z

.field private mNumFrame:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mShowOnTop:Z

.field private final mStartY:I

.field private final mStep:I

.field private mVisibleScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/ui/widget/BezierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/ui/widget/BezierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    .line 45
    new-instance v0, Lnubia/ui/widget/BezierView$1;

    invoke-direct {v0, p0}, Lnubia/ui/widget/BezierView$1;-><init>(Lnubia/ui/widget/BezierView;)V

    iput-object v0, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Lnubia/ui/widget/BezierView;->initPaint()V

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    .line 66
    iget v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnubia/ui/widget/BezierView;->mStep:I

    .line 67
    iget v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    .line 69
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnubia/ui/util/UiUtils;->getAnimationSwitch(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnubia/ui/widget/BezierView;->animationSwitch:I

    .line 70
    return-void
.end method

.method static synthetic access$004(Lnubia/ui/widget/BezierView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    return v0
.end method

.method private calDynamicArcHeight(II)V
    .locals 2
    .parameter "showLocation"
    .parameter "numberFrame"

    .prologue
    const/16 v1, 0xf

    const/16 v0, 0x8

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 176
    :pswitch_0
    if-nez p2, :cond_0

    .line 177
    iget v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 178
    :cond_0
    if-gt p2, v0, :cond_1

    .line 179
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 180
    :cond_1
    if-ge v0, p2, :cond_2

    if-gt p2, v1, :cond_2

    .line 181
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 187
    :pswitch_1
    if-nez p2, :cond_3

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 189
    :cond_3
    if-gt p2, v0, :cond_4

    .line 190
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 191
    :cond_4
    if-ge v0, p2, :cond_5

    if-gt p2, v1, :cond_5

    .line 192
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 194
    :cond_5
    iget v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    iget v1, p0, Lnubia/ui/widget/BezierView;->mStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawLastFrame(Landroid/graphics/Canvas;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "isOnTop"

    .prologue
    const/4 v8, 0x0

    .line 117
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 118
    iget v2, p0, Lnubia/ui/widget/BezierView;->mVisibleScreenWidth:I

    .line 119
    .local v2, screenWidth:I
    div-int/lit8 v0, v2, 0x2

    .line 120
    .local v0, controlX:I
    iget v3, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    div-int/lit8 v1, v3, 0x4

    .line 121
    .local v1, controlY:I
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 124
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v2

    iget v5, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    :goto_0
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 136
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    return-void

    .line 128
    :cond_0
    iget v3, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v1, v3, 0x4

    .line 129
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 131
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private drawQpath(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 92
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 93
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    iget v2, p0, Lnubia/ui/widget/BezierView;->mVisibleScreenWidth:I

    .line 95
    .local v2, screenWidth:I
    div-int/lit8 v0, v2, 0x2

    .line 96
    .local v0, controlX:I
    iget v3, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    sub-int v1, v3, v4

    .line 97
    .local v1, controlY:I
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 98
    iget-boolean v3, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v2

    iget v5, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    :goto_0
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 108
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v3, p0, Lnubia/ui/widget/BezierView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lnubia/ui/widget/BezierView;->mStartY:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 81
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 82
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 83
    .local v1, point:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    iget v3, v1, Landroid/graphics/Point;->x:I

    return v3
.end method

.method private initPaint()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 75
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    return-void
.end method

.method private measureWidth(I)I
    .locals 3
    .parameter "widthMeasureSpec"

    .prologue
    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 217
    .local v0, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 218
    .local v1, specSize:I
    const/high16 v2, 0x4000

    if-eq v0, v2, :cond_0

    .line 219
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnubia/ui/widget/BezierView;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 221
    :cond_0
    return v1
.end method


# virtual methods
.method public continueBezierAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 238
    iget-boolean v1, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    if-nez v1, :cond_1

    .line 239
    iget v1, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 240
    iput v0, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    .line 242
    :cond_0
    iput-boolean v3, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    .line 243
    iput-boolean v3, p0, Lnubia/ui/widget/BezierView;->mIsContinue:Z

    .line 244
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_1
    const/16 v1, 0xa

    iput v1, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    .line 247
    iget-boolean v1, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    if-eqz v1, :cond_2

    :goto_1
    iput v0, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 247
    :cond_2
    iget v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    goto :goto_1
.end method

.method public getBezierViewHeight()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    return v0
.end method

.method public isOnTop()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 277
    invoke-virtual {p0}, Lnubia/ui/widget/BezierView;->stopRunning()V

    .line 278
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 143
    iget v3, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v3, p0, Lnubia/ui/widget/BezierView;->animationSwitch:I

    if-eqz v3, :cond_1

    .line 147
    iget-boolean v1, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    invoke-direct {p0, p1, v1}, Lnubia/ui/widget/BezierView;->drawLastFrame(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 149
    :cond_1
    iget-boolean v3, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    if-eqz v3, :cond_2

    move v0, v1

    .line 150
    .local v0, showLocation:I
    :goto_1
    iget-boolean v3, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    if-eqz v3, :cond_6

    .line 151
    iget v3, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    invoke-direct {p0, v0, v3}, Lnubia/ui/widget/BezierView;->calDynamicArcHeight(II)V

    .line 152
    invoke-direct {p0, p1}, Lnubia/ui/widget/BezierView;->drawQpath(Landroid/graphics/Canvas;)V

    .line 153
    iget v3, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    if-gt v3, v5, :cond_4

    .line 154
    iget v1, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lnubia/ui/widget/BezierView;->mIsContinue:Z

    if-nez v1, :cond_3

    .line 155
    iput-boolean v2, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    goto :goto_0

    .end local v0           #showLocation:I
    :cond_2
    move v0, v2

    .line 149
    goto :goto_1

    .line 158
    .restart local v0       #showLocation:I
    :cond_3
    iget v1, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 160
    :cond_4
    iget v3, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_5

    .line 161
    iget-object v2, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 163
    :cond_5
    iput-boolean v2, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    .line 164
    iput-boolean v2, p0, Lnubia/ui/widget/BezierView;->mIsContinue:Z

    goto :goto_0

    .line 167
    :cond_6
    if-ne v0, v1, :cond_7

    iget v1, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    div-int/lit8 v1, v1, 0x4

    :goto_2
    iput v1, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    .line 168
    invoke-direct {p0, p1}, Lnubia/ui/widget/BezierView;->drawQpath(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 167
    :cond_7
    iget v1, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 210
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 211
    sub-int v0, p4, p2

    iput v0, p0, Lnubia/ui/widget/BezierView;->mVisibleScreenWidth:I

    .line 212
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lnubia/ui/widget/BezierView;->measureWidth(I)I

    move-result v0

    iget v1, p0, Lnubia/ui/widget/BezierView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 206
    return-void
.end method

.method public setShowOnTop(Z)V
    .locals 0
    .parameter "isOnTop"

    .prologue
    .line 253
    iput-boolean p1, p0, Lnubia/ui/widget/BezierView;->mShowOnTop:Z

    .line 254
    return-void
.end method

.method public startBezierAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-boolean v0, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 231
    iput-boolean v1, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lnubia/ui/widget/BezierView;->mNumFrame:I

    .line 233
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    return-void
.end method

.method public stopRunning()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-boolean v0, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/ui/widget/BezierView;->mIsRunning:Z

    .line 267
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lnubia/ui/widget/BezierView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public declared-synchronized updateArcHeight(I)V
    .locals 1
    .parameter "arcHeight"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lnubia/ui/widget/BezierView;->mArcHeight:I

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
