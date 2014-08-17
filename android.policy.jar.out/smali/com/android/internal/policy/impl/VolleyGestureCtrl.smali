.class public Lcom/android/internal/policy/impl/VolleyGestureCtrl;
.super Ljava/lang/Object;
.source "VolleyGestureCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;


# instance fields
.field private final ORIENTATION_E:I

.field private final ORIENTATION_N:I

.field private final ORIENTATION_S:I

.field private final ORIENTATION_W:I

.field private final TAG:Ljava/lang/String;

.field private final VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

.field private final VOLLEY_WHITE_LIST:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

.field private mVolleyFilter:Ljava/lang/String;

.field private mVolleyListener:Lnubia/gesture/sensor/MotionListener;

.field private mVolleyMode:I

.field private mVolleyRegistered:Z

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private moveStatus:I

.field private now_x:I

.field private now_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "VolleyGestureCtrl"

    iput-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "volley_white_list"

    iput-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->VOLLEY_WHITE_LIST:Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.phone.InCallScreen"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyMode:I

    .line 37
    iput-object v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 39
    iput-object v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 40
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 41
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    .line 42
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    .line 44
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 45
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    .line 47
    iput v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->ORIENTATION_N:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->ORIENTATION_S:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->ORIENTATION_W:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->ORIENTATION_E:I

    .line 52
    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/VolleyGestureCtrl;Lnubia/gesture/sensor/MotionState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V

    return-void
.end method

.method private beginToHandleVolley()V
    .locals 8

    .prologue
    .line 112
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 116
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, clazzName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0           #clazzName:Ljava/lang/String;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "VolleyGestureCtrl"

    const-string v5, " do Enable Volley Gesture failed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableVolleyGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "VolleyGestureCtrl"

    const-string v1, "disableVolleyGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->unregisterVolleyListener()V

    .line 129
    iput-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_1

    .line 132
    iput-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 134
    :cond_1
    return-void
.end method

.method private dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V
    .locals 10
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v5, 0xa

    .line 186
    const/4 v8, 0x2

    .line 187
    .local v8, speed:I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    .local v6, dm:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 189
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    .line 191
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    .line 192
    const/4 v7, 0x0

    .line 193
    .local v7, oritation:I
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    if-le v0, v1, :cond_1

    .line 194
    const/4 v7, 0x1

    .line 198
    :goto_0
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 269
    :cond_0
    :goto_1
    return-void

    .line 196
    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    .line 200
    :sswitch_0
    if-ne v7, v3, :cond_2

    .line 201
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleEnter(II)V

    goto :goto_1

    .line 202
    :cond_2
    if-ne v7, v2, :cond_0

    .line 203
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleLandEnter(II)V

    goto :goto_1

    .line 207
    :sswitch_1
    if-ne v7, v3, :cond_3

    .line 208
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleHold(I)V

    goto :goto_1

    .line 209
    :cond_3
    if-ne v7, v2, :cond_0

    .line 210
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleLandHold(I)V

    goto :goto_1

    .line 214
    :sswitch_2
    if-ne v7, v3, :cond_4

    .line 215
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleOut(II)V

    goto :goto_1

    .line 216
    :cond_4
    if-ne v7, v2, :cond_0

    .line 217
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->handleLandOut(II)V

    goto :goto_1

    .line 221
    :sswitch_3
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 241
    :pswitch_1
    if-ne v7, v2, :cond_7

    .line 242
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto :goto_1

    .line 223
    :pswitch_2
    if-ne v7, v2, :cond_5

    .line 224
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto :goto_1

    .line 226
    :cond_5
    if-ne v7, v3, :cond_0

    .line 227
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 232
    :pswitch_3
    if-ne v7, v2, :cond_6

    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 235
    :cond_6
    if-ne v7, v3, :cond_0

    .line 236
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 244
    :cond_7
    if-ne v7, v3, :cond_0

    .line 245
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 250
    :pswitch_4
    if-ne v7, v2, :cond_8

    .line 251
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 253
    :cond_8
    if-ne v7, v3, :cond_0

    .line 254
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 263
    :sswitch_4
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeRelease(II)Z

    .line 264
    iput v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 265
    iput v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    .line 266
    iput v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    goto/16 :goto_1

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
        0x82 -> :sswitch_2
        0x8c -> :sswitch_3
        0x96 -> :sswitch_4
    .end sparse-switch

    .line 221
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private enableVolleyGesture()V
    .locals 4

    .prologue
    .line 89
    const-string v2, "hanchuang"

    const-string v3, "volley enableVolleyGesture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;-><init>(Lcom/android/internal/policy/impl/VolleyGestureCtrl;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lnubia/gesture/sensor/MotionManager;->getDefaultDetector(Landroid/content/Context;I)Lnubia/gesture/sensor/MotionDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->beginToHandleVolley()V

    .line 104
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 106
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    .line 108
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    .line 109
    return-void
.end method

.method private filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "clazzName"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v5, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 157
    .local v1, filter:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    :goto_1
    return v4

    .line 156
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #filter:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v1           #filter:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private handleEnter(II)V
    .locals 6
    .parameter "point_size"
    .parameter "orientation"

    .prologue
    const/4 v5, 0x4

    .line 272
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 291
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 292
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 276
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 279
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 283
    :pswitch_2
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 287
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleHold(I)V
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x2

    .line 324
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 331
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 332
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 335
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 337
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 338
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 341
    :pswitch_2
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 344
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    sub-int v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 345
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 348
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 351
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    add-int/2addr v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 352
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    goto/16 :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandEnter(II)V
    .locals 6
    .parameter "point_size"
    .parameter "orientation"

    .prologue
    const/4 v5, 0x4

    .line 298
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 318
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    .line 319
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 320
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 302
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 306
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 310
    :pswitch_2
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 314
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandHold(I)V
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x2

    .line 358
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 363
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 365
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    sub-int v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 366
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 369
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 371
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    add-int/2addr v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 372
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 375
    :pswitch_2
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 378
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 379
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 382
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 385
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 386
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandOut(II)V
    .locals 7
    .parameter "speed"
    .parameter "out_orientation"

    .prologue
    const/4 v6, 0x0

    .line 415
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 418
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 432
    :goto_1
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 433
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    .line 434
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 420
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 423
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 426
    :pswitch_2
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 429
    :pswitch_3
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleOut(II)V
    .locals 7
    .parameter "speed"
    .parameter "out_orientation"

    .prologue
    const/4 v6, 0x0

    .line 392
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 395
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 409
    :goto_1
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    .line 410
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    .line 411
    iput v6, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 397
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v0, v3

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 400
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 403
    :pswitch_2
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 406
    :pswitch_3
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerVolleyListener()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    invoke-virtual {v0, v1}, Lnubia/gesture/sensor/MotionDetector;->registerListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 171
    const-string v0, "VolleyGestureCtrl"

    const-string v1, "registerVolley"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 174
    :cond_0
    return-void
.end method

.method private swipe(IIIII)Z
    .locals 19
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 549
    const-string v3, "VolleyGestureCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swipe steps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v13, 0x0

    .line 551
    .local v13, ret:Z
    move/from16 v14, p5

    .line 552
    .local v14, swipeSteps:I
    const-wide/16 v15, 0x0

    .line 553
    .local v15, xStep:D
    const-wide/16 v17, 0x0

    .line 554
    .local v17, yStep:D
    const-wide/16 v1, 0x0

    .line 556
    .local v1, downTime:J
    if-nez v14, :cond_0

    .line 557
    const/4 v14, 0x1

    .line 559
    :cond_0
    sub-int v3, p3, p1

    int-to-double v3, v3

    int-to-double v5, v14

    div-double v15, v3, v5

    .line 560
    sub-int v3, p4, p2

    int-to-double v3, v3

    int-to-double v5, v14

    div-double v17, v3, v5

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 564
    const/4 v5, 0x0

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    const/4 v8, 0x1

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 566
    .local v9, event1:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v9, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 567
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v9, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v13

    .line 570
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    if-ge v12, v14, :cond_1

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    int-to-double v6, v12

    mul-double/2addr v6, v15

    double-to-int v6, v6

    add-int v6, v6, p1

    int-to-float v6, v6

    int-to-double v7, v12

    mul-double v7, v7, v17

    double-to-int v7, v7

    add-int v7, v7, p2

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 575
    .local v10, event2:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v10, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 576
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v10, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    and-int/2addr v13, v3

    .line 578
    if-nez v13, :cond_2

    .line 582
    .end local v10           #event2:Landroid/view/MotionEvent;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 584
    .local v11, event3:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 585
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v11, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    and-int/2addr v13, v3

    .line 587
    return v13

    .line 580
    .end local v11           #event3:Landroid/view/MotionEvent;
    .restart local v10       #event2:Landroid/view/MotionEvent;
    :cond_2
    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 570
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private swipeAfter(IIIII)Z
    .locals 18
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 463
    const/4 v12, 0x0

    .line 464
    .local v12, ret:Z
    move/from16 v13, p5

    .line 465
    .local v13, swipeSteps:I
    const-wide/16 v14, 0x0

    .line 466
    .local v14, xStep:D
    const-wide/16 v16, 0x0

    .line 467
    .local v16, yStep:D
    const-wide/16 v1, 0x0

    .line 469
    .local v1, downTime:J
    if-nez v13, :cond_0

    .line 470
    const/4 v13, 0x1

    .line 472
    :cond_0
    sub-int v3, p3, p1

    int-to-double v3, v3

    int-to-double v5, v13

    div-double v14, v3, v5

    .line 473
    sub-int v3, p4, p2

    int-to-double v3, v3

    int-to-double v5, v13

    div-double v16, v3, v5

    .line 475
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_2

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    int-to-double v6, v11

    mul-double/2addr v6, v14

    double-to-int v6, v6

    add-int v6, v6, p1

    int-to-float v6, v6

    int-to-double v7, v11

    mul-double v7, v7, v16

    double-to-int v7, v7

    add-int v7, v7, p2

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 480
    .local v9, event2:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v9, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 481
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v9, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    and-int/2addr v12, v3

    .line 483
    if-nez v12, :cond_1

    .line 487
    :cond_1
    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 475
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 490
    .end local v9           #event2:Landroid/view/MotionEvent;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, p4

    int-to-float v7, v0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 492
    .local v10, event3:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v10, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 493
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v10, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    and-int/2addr v12, v3

    .line 496
    return v12
.end method

.method private swipeFirst(IIIII)Z
    .locals 18
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 500
    const/4 v12, 0x0

    .line 501
    .local v12, ret:Z
    move/from16 v13, p5

    .line 502
    .local v13, swipeSteps:I
    const-wide/16 v14, 0x0

    .line 503
    .local v14, xStep:D
    const-wide/16 v16, 0x0

    .line 504
    .local v16, yStep:D
    const-wide/16 v1, 0x0

    .line 506
    .local v1, downTime:J
    if-nez v13, :cond_0

    .line 507
    const/4 v13, 0x1

    .line 509
    :cond_0
    sub-int v3, p3, p1

    int-to-double v3, v3

    int-to-double v5, v13

    div-double v14, v3, v5

    .line 510
    sub-int v3, p4, p2

    int-to-double v3, v3

    int-to-double v5, v13

    div-double v16, v3, v5

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 514
    const/4 v5, 0x0

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    const/4 v8, 0x1

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 516
    .local v9, event1:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v9, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 517
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v9, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v12

    .line 520
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_1

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    int-to-double v6, v11

    mul-double/2addr v6, v14

    double-to-int v6, v6

    add-int v6, v6, p1

    int-to-float v6, v6

    int-to-double v7, v11

    mul-double v7, v7, v16

    double-to-int v7, v7

    add-int v7, v7, p2

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 525
    .local v10, event2:Landroid/view/MotionEvent;
    const/16 v3, 0x1002

    invoke-virtual {v10, v3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 526
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v10, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    and-int/2addr v12, v3

    .line 530
    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 520
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 532
    .end local v10           #event2:Landroid/view/MotionEvent;
    :cond_1
    return v12
.end method

.method private swipeMiddle(IIIII)Z
    .locals 16
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    .line 439
    const/4 v10, 0x0

    .line 440
    .local v10, ret:Z
    move/from16 v11, p5

    .line 441
    .local v11, swipeSteps:I
    const-wide/16 v12, 0x0

    .line 442
    .local v12, xStep:D
    const-wide/16 v14, 0x0

    .line 443
    .local v14, yStep:D
    const-wide/16 v0, 0x0

    .line 445
    .local v0, downTime:J
    if-nez v11, :cond_0

    .line 446
    const/4 v11, 0x1

    .line 447
    :cond_0
    sub-int v2, p3, p1

    int-to-double v2, v2

    int-to-double v4, v11

    div-double v12, v2, v4

    .line 448
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, v11

    div-double v14, v2, v4

    .line 449
    const/4 v9, 0x1

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    int-to-double v5, v9

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int v5, v5, p1

    int-to-float v5, v5

    int-to-double v6, v9

    mul-double/2addr v6, v14

    double-to-int v6, v6

    add-int v6, v6, p2

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 454
    .local v8, event2:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 455
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    and-int/2addr v10, v2

    .line 457
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 449
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 459
    .end local v8           #event2:Landroid/view/MotionEvent;
    :cond_1
    return v10
.end method

.method private swipeRelease(II)Z
    .locals 10
    .parameter "upX"
    .parameter "upY"

    .prologue
    const/4 v4, 0x1

    .line 536
    const-string v2, "hanchuang"

    const-string v3, "swipeRelease"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v9, 0x0

    .line 538
    .local v9, ret:Z
    const-wide/16 v0, 0x0

    .line 539
    .local v0, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, p1

    int-to-float v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 542
    .local v8, event3:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 543
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    and-int/2addr v9, v2

    .line 545
    return v9
.end method

.method private unregisterVolleyListener()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    invoke-virtual {v0, v1}, Lnubia/gesture/sensor/MotionDetector;->unregisterListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 180
    const-string v0, "VolleyGestureCtrl"

    const-string v1, "unregisterVolley"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    const-string v0, "slide_screen"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    const-string v0, "volley_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "clazzName"
    .parameter "pkgName"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->unregisterVolleyListener()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->registerVolleyListener()V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 71
    const-string v1, "hanchuang"

    const-string v2, "volley updateSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "slide_screen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 75
    .local v0, volley:I
    iget v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyMode:I

    if-eq v1, v0, :cond_0

    .line 76
    iput v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyMode:I

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->enableVolleyGesture()V

    .line 83
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volley_white_list"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    .line 86
    return-void

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->disableVolleyGesture()V

    goto :goto_0
.end method
