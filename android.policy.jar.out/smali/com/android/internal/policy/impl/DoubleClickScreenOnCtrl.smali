.class public Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
.implements Lcom/android/internal/policy/impl/ISettingListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dbStatus:I

.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mProximity:Landroid/hardware/Sensor;

.field private mSensorEventLister:Landroid/hardware/SensorEventListener;

.field mWaitTimeouthandler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;

.field sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 2
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "DoubleClickScreenOnCtrl"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->dbStatus:I

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;-><init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->runnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;-><init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 54
    iput-object p2, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;-><init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->turnScreenOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    return-void
.end method

.method private disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    .locals 3
    .parameter "sm"
    .parameter "listener"
    .parameter "sleep"

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 149
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->releaseWakeLock()V

    .line 150
    if-eqz p3, :cond_0

    .line 151
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "disableProximity : go to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 155
    :cond_0
    return-void
.end method

.method private enableDoubleClickWake(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 87
    const-string v2, "wakeGesture"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IWakeGestureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeGestureService;

    move-result-object v1

    .line 90
    .local v1, mWakeGestureService:Landroid/os/IWakeGestureService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IWakeGestureService;->enableWakeGesture(Z)Z

    .line 91
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "needed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DoubleClickScreenOnCtrl"

    const-string v3, "enableDoubleClickWake failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 1
    .parameter "sm"
    .parameter "sensor"
    .parameter "listener"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->getWakeLock()V

    .line 143
    const/4 v0, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 144
    return-void
.end method

.method private getWakeLock()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "getWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 171
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "DoubleClickScreenOnCtrl"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    :cond_0
    return-void
.end method

.method private turnScreenOn()V
    .locals 4

    .prologue
    .line 158
    const-string v1, "DoubleClickScreenOnCtrl"

    const-string v2, "turnScreenOn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "DoubleClickScreenOnCtrl"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 163
    .local v0, doubleClickWake:Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 165
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    return-void
.end method


# virtual methods
.method public handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "isScreenOn"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mProximity:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->enableProximity(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 100
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->handleWakeupKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 101
    const/4 v0, -0x1

    return v0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 69
    const-string v0, "double_click_wake"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    return-void
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    iget-object v4, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "double_click_wake"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 79
    .local v0, doubleClickWake:I
    iget v4, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->dbStatus:I

    if-eq v4, v0, :cond_0

    .line 80
    iput v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->dbStatus:I

    .line 81
    iget v4, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->dbStatus:I

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->enableDoubleClickWake(Z)V

    .line 83
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 81
    goto :goto_0
.end method
