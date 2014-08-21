.class public Lcom/ztemt/widget/NubiaDigitalClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaDigitalClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;
    }
.end annotation


# instance fields
.field private m12HourFormat:Ljava/lang/String;

.field private m24HourFormat:Ljava/lang/String;

.field private mAmString:Ljava/lang/String;

.field private mAmpmString:Ljava/lang/String;

.field private mAmpmView:Landroid/widget/TextView;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHourFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24Hour:Z

.field private mPmString:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeZone:Ljava/lang/String;

.field private mWeekFormat:Ljava/lang/String;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v17, Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;-><init>(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v17, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 91
    .local v13, inflater:Landroid/view/LayoutInflater;
    const v17, 0x1090074

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    const v17, 0x102030b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    .line 94
    const v17, 0x102030a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    .line 95
    const v17, 0x102030c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 96
    const v17, 0x102030d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 97
    const v17, 0x102030e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    .line 99
    sget-object v17, Lcom/android/internal/R$styleable;->NubiaDigitalClockWithCity:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 101
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 102
    .local v8, ampmTextSize:F
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 103
    .local v16, timeTextSize:F
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 104
    .local v10, cityTextSize:F
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 106
    .local v12, dateTextSize:F
    float-to-int v0, v8

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    :cond_0
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    :cond_1
    float-to-int v0, v10

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    :cond_2
    float-to-int v0, v12

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    :cond_3
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 121
    .local v7, ampmTextColor:I
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 122
    .local v15, timeTextColor:I
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 123
    .local v9, cityTextColor:I
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 125
    .local v11, dateTextColor:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 130
    const-string v17, "wang"

    const-string v18, "cityTextColor != Color.WHITE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 148
    :goto_1
    new-instance v17, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v17 .. v17}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, ampmArray:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    .line 150
    const/16 v17, 0x1

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 153
    .local v14, res:Landroid/content/res/Resources;
    const v17, 0x1040678

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 154
    const v17, 0x1040679

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    .line 155
    const v17, 0x104067a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    .line 156
    const v17, 0x104067b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    .line 158
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    .line 159
    return-void

    .line 133
    .end local v6           #ampmArray:[Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_7
    const-string v17, "wang"

    const-string v18, "cityTextColor == Color.WHITE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/ztemt/widget/NubiaDigitalClockWithCity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ztemt/widget/NubiaDigitalClockWithCity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    return p1
.end method

.method private onTimeChanged()V
    .locals 7

    .prologue
    .line 204
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 205
    iget-boolean v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->m24HourFormat:Ljava/lang/String;

    .line 206
    .local v2, timeFormat:Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .local v1, time:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-boolean v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_1
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    .local v0, date:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 220
    .local v3, week:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void

    .line 205
    .end local v0           #date:Ljava/lang/CharSequence;
    .end local v1           #time:Ljava/lang/CharSequence;
    .end local v2           #timeFormat:Ljava/lang/CharSequence;
    .end local v3           #week:Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->m12HourFormat:Ljava/lang/String;

    goto :goto_0

    .line 212
    .restart local v1       #time:Ljava/lang/CharSequence;
    .restart local v2       #timeFormat:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmString:Ljava/lang/String;

    :goto_2
    iput-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 214
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mPmString:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 171
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 173
    iget-boolean v1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-nez v1, :cond_0

    .line 174
    iput-boolean v5, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    new-instance v1, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;-><init>(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V

    iput-object v1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    .line 190
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 196
    iget-boolean v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mHourFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mAttached:Z

    .line 201
    :cond_0
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .parameter "cityName"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 241
    invoke-direct {p0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->onTimeChanged()V

    goto :goto_0
.end method
