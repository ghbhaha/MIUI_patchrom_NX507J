.class public Lnubia/fancydrawable/TimeDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "TimeDrawable.java"


# instance fields
.field private isRuning:Z

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/Bitmap;

.field private mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialHeight:I

.field private mDialLock:Landroid/graphics/Bitmap;

.field private mDialWidth:I

.field private mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHours:F

.field private mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mMinutes:F

.field private mSecondHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mSeconds:F

.field private mSystemResources:Landroid/content/res/Resources;

.field private tickRunnable:Ljava/lang/Runnable;

.field private time_zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x1080218

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lnubia/fancydrawable/FancyDrawable;-><init>()V

    .line 45
    iput-boolean v1, p0, Lnubia/fancydrawable/TimeDrawable;->mAttached:Z

    .line 72
    iput-boolean v1, p0, Lnubia/fancydrawable/TimeDrawable;->isRuning:Z

    .line 111
    new-instance v1, Lnubia/fancydrawable/TimeDrawable$1;

    invoke-direct {v1, p0}, Lnubia/fancydrawable/TimeDrawable$1;-><init>(Lnubia/fancydrawable/TimeDrawable;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    .line 77
    const-string v1, "CalDrawable"

    iput-object v1, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    .line 81
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 82
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, is:Ljava/io/InputStream;
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    .line 88
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v2, 0x10802d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v2, 0x1080489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialLock:Landroid/graphics/Bitmap;

    .line 105
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    .line 106
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    .line 107
    iget v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    iget v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    invoke-virtual {p0, v1, v2}, Lnubia/fancydrawable/FancyDrawable;->setIntrinsicSize(II)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/fancydrawable/TimeDrawable;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, hour:I
    const/4 v1, 0x0

    .line 140
    .local v1, minute:I
    const/4 v2, 0x0

    .line 141
    .local v2, second:I
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v4

    .line 142
    :try_start_0
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 144
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 145
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 146
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 147
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    int-to-float v3, v2

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mSeconds:F

    .line 149
    int-to-float v3, v1

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    .line 150
    int-to-float v3, v0

    iget v4, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    .line 152
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnubia/fancydrawable/TimeDrawable;->mChanged:Z

    .line 153
    return-void

    .line 147
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 3
    .parameter "timezone"

    .prologue
    .line 233
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v1

    .line 234
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 159
    iget v10, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    if-eqz v10, :cond_0

    iget v10, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    if-nez v10, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 161
    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 163
    :cond_1
    invoke-direct {p0}, Lnubia/fancydrawable/TimeDrawable;->onTimeChanged()V

    .line 164
    iget v1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 165
    .local v1, availableWidth:I
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 167
    .local v0, availableHeight:I
    div-int/lit8 v8, v1, 0x2

    .line 168
    .local v8, x:I
    div-int/lit8 v9, v0, 0x2

    .line 170
    .local v9, y:I
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    .local v2, dial:Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 172
    .local v7, w:I
    iget-object v10, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 173
    .local v3, h:I
    if-lt v1, v7, :cond_2

    if-ge v0, v3, :cond_3

    .line 174
    :cond_2
    int-to-float v10, v1

    int-to-float v11, v7

    div-float/2addr v10, v11

    int-to-float v11, v0

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 177
    .local v6, scale:F
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 179
    .end local v6           #scale:F
    :cond_3
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    const/high16 v11, 0x4140

    div-float/2addr v10, v11

    const/high16 v11, 0x43b4

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 183
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 184
    .local v4, hourHand:Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v11, 0x4270

    div-float/2addr v10, v11

    const/high16 v11, 0x43b4

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 189
    iget-object v5, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .local v5, minuteHand:Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    return-void
.end method

.method public getTime_zone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    return-object v0
.end method

.method public pageChange()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public pauseRun()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->startToRun()V

    .line 216
    return-void
.end method

.method public setTime_zone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 61
    iput-object p1, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public startToRun()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public timeChange()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    return-void
.end method
