.class public Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDbStatus:Z

.field private mGestureListener:Lnubia/gesture/touch/GestureListener;

.field private mGestureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMultiFingerMove:Z

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

.field private pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "TouchGestureFuncsCtrl"

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 51
    iput-object p2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->takeSnot()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->doPalmCoverLockScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method private doPalmCoverLockScreen()V
    .locals 6

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, isValid:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 191
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_0
    const-string v3, "TouchGestureFuncsCtrl"

    const-string v4, "palm error because phone"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v2       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v1, 0x1

    .line 201
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    if-eqz v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "TouchGestureFuncsCtrl"

    const-string v4, "getPhoneInterface() error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private takeSnot()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method


# virtual methods
.method public disableTouchGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 162
    iput-object v2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0}, Lnubia/gesture/touch/GestureManager;->unDetect(Lnubia/gesture/touch/GestureListener;)V

    .line 166
    iput-object v2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-nez v0, :cond_2

    .line 169
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    return-void
.end method

.method public enableTouchGesture()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$1;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lnubia/gesture/touch/GestureArg;

    const/4 v1, 0x0

    new-instance v2, Lnubia/gesture/touch/PalmCoverArg;

    invoke-direct {v2}, Lnubia/gesture/touch/PalmCoverArg;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lnubia/gesture/touch/MultiPointArg;

    invoke-direct {v2}, Lnubia/gesture/touch/MultiPointArg;-><init>()V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0, v1}, Lnubia/gesture/touch/GestureManager;->detect([Lnubia/gesture/touch/GestureArg;Lnubia/gesture/touch/GestureListener;)Lnubia/gesture/touch/ListenerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnubia/gesture/touch/ListenerClient;->setContext(Landroid/content/Context;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    const-string v0, "multi_point_up"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    const-string v0, "multi_point_right"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    const-string v0, "multi_point_left"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    const-string v0, "palm_cover"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    return-void
.end method

.method public updateSettings()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 76
    iget-object v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 77
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "multi_point_up"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 79
    .local v5, upMove:I
    const-string v6, "palm_cover"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 81
    .local v2, palmCover:I
    const-string v6, "multi_point_left"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 83
    .local v1, leftMove:I
    const-string v6, "multi_point_right"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 85
    .local v4, rightMove:I
    or-int v6, v5, v2

    or-int/2addr v6, v1

    or-int v0, v6, v4

    .line 86
    .local v0, gestureMode:I
    if-eq v5, v8, :cond_0

    if-eq v1, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    move v6, v8

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    .line 88
    iget-object v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    if-eq v1, v8, :cond_1

    if-ne v4, v8, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->setEnable(Z)V

    .line 89
    iget v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eq v6, v0, :cond_3

    .line 90
    iput v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    .line 91
    iget v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->enableTouchGesture()V

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->enableTouchGesture()V

    .line 98
    return-void

    :cond_4
    move v6, v7

    .line 86
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->disableTouchGesture()V

    goto :goto_1
.end method
