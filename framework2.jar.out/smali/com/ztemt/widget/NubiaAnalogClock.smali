.class public Lcom/ztemt/widget/NubiaAnalogClock;
.super Landroid/view/View;
.source "NubiaAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private m24Hour:Z

.field private mAmString:Ljava/lang/String;

.field private mAmpmPaint:Landroid/graphics/Paint;

.field private mAmpmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mPmString:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ztemt/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ztemt/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v5, Lcom/ztemt/widget/NubiaAnalogClock$1;

    invoke-direct {v5, p0}, Lcom/ztemt/widget/NubiaAnalogClock$1;-><init>(Lcom/ztemt/widget/NubiaAnalogClock;)V

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, ampmArray:[Ljava/lang/String;
    aget-object v5, v1, v6

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    .line 58
    aget-object v5, v1, v7

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 61
    .local v2, resources:Landroid/content/res/Resources;
    sget-object v5, Lcom/android/internal/R$styleable;->NubiaAnalogClock:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 65
    const v5, 0x1080219

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 70
    const v5, 0x108021a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 73
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 75
    const v5, 0x108021b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaAnalogClock;->is24Hour()V

    .line 80
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 81
    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 86
    :goto_0
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialWidth:I

    .line 87
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialHeight:I

    .line 89
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    const/4 v5, 0x3

    const/high16 v6, 0x420c

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 92
    .local v4, textSize:F
    const/4 v5, 0x4

    const/high16 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 93
    .local v3, textColor:I
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    return-void

    .line 83
    .end local v3           #textColor:I
    .end local v4           #textSize:F
    :cond_3
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ztemt/widget/NubiaAnalogClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ztemt/widget/NubiaAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ztemt/widget/NubiaAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaAnalogClock;->is24Hour()V

    return-void
.end method

.method static synthetic access$300(Lcom/ztemt/widget/NubiaAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private is24Hour()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->m24Hour:Z

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->m24Hour:Z

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 265
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 267
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 268
    .local v0, hour:I
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 269
    .local v1, minute:I
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 271
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinutes:F

    .line 272
    int-to-float v3, v0

    iget v4, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHour:F

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mChanged:Z

    .line 277
    iget-boolean v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->m24Hour:Z

    if-nez v3, :cond_1

    .line 278
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    iput-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    iput-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 109
    iget-boolean v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAttached:Z

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaAnalogClock;->onTimeChanged()V

    .line 132
    return-void

    .line 127
    :cond_1
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 138
    iget-boolean v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mAttached:Z

    .line 142
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 177
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mChanged:Z

    .line 180
    .local v8, changed:Z
    if-eqz v8, :cond_0

    .line 181
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ztemt/widget/NubiaAnalogClock;->mChanged:Z

    .line 184
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v15

    .line 185
    .local v15, right:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 186
    .local v13, left:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 187
    .local v7, bottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v18

    .line 189
    .local v18, top:I
    sub-int v6, v15, v13

    .line 190
    .local v6, availableWidth:I
    sub-int v5, v7, v18

    .line 192
    .local v5, availableHeight:I
    div-int/lit8 v20, v6, 0x2

    .line 193
    .local v20, x:I
    div-int/lit8 v21, v5, 0x2

    .line 195
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 196
    .local v9, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 197
    .local v19, w:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 199
    .local v11, h:I
    const/16 v17, 0x0

    .line 201
    .local v17, scaled:Z
    move/from16 v0, v19

    if-lt v6, v0, :cond_1

    if-ge v5, v11, :cond_2

    .line 202
    :cond_1
    const/16 v17, 0x1

    .line 203
    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v5

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 205
    .local v16, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 206
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 209
    .end local v16           #scale:F
    :cond_2
    if-eqz v8, :cond_3

    .line 210
    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->m24Hour:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 216
    .local v10, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    move-object/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    sub-int v23, v20, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v11, 0x2

    add-int v24, v24, v21

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 219
    .end local v10           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mHour:F

    move/from16 v22, v0

    const/high16 v23, 0x4140

    div-float v22, v22, v23

    const/high16 v23, 0x43b4

    mul-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 222
    .local v12, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 223
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 224
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 225
    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinutes:F

    move/from16 v22, v0

    const/high16 v23, 0x4270

    div-float v22, v22, v23

    const/high16 v23, 0x43b4

    mul-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ztemt/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 233
    .local v14, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    .line 234
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 235
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 236
    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    if-eqz v17, :cond_7

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 148
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 149
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 153
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 155
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 156
    int-to-float v7, v6

    iget v8, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 159
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 160
    int-to-float v7, v2

    iget v8, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 163
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 165
    .local v3, scale:F
    iget v7, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/ztemt/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/ztemt/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 167
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mChanged:Z

    .line 173
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .parameter "timezone"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 252
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaAnalogClock;->onTimeChanged()V

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
