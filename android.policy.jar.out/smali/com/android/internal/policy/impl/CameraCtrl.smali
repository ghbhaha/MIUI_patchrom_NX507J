.class public Lcom/android/internal/policy/impl/CameraCtrl;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent; = null

.field private static final ON_TICK_TIME_FOR_SEND_INTENT:J = 0x1f4L

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent; = null

.field private static final TAG:Ljava/lang/String; = "CameraCtrl"


# instance fields
.field private final mCameraLongPress:Ljava/lang/Runnable;

.field private mCleckCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyCleckTime:J

.field private mKeyCode:I

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mVolumeUpCleckCount:I

.field private mVolumeUpCleckTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyguard_locked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter "context"
    .parameter "phoneWindowManager"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 32
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    iput v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 34
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCode:I

    .line 35
    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 36
    iput v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 37
    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 39
    new-instance v0, Lcom/android/internal/policy/impl/CameraCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CameraCtrl$1;-><init>(Lcom/android/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/internal/policy/impl/CameraCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CameraCtrl$2;-><init>(Lcom/android/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->init()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CameraCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CameraCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CameraCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCamera()V

    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 169
    .local v1, mActivityManager:Landroid/app/ActivityManager;
    const-string v2, "com.android.camera"

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1           #mActivityManager:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close Camera filed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCaptureCameraSettingKeyCode()I
    .locals 8

    .prologue
    .line 176
    const/16 v2, 0x19

    .line 178
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 180
    .local v1, flashlighgtContext:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v6, "com.android.camera"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 182
    const-string v5, "capture_camera_keycode"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 184
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "camera_keycode"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 185
    .local v4, state:I
    move v2, v4

    .line 189
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :goto_0
    return v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CameraCtrl"

    const-string v6, "isCanEnterCamera"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserTime()J
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getVolumeUpUserTime()J
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CameraCtrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    return-void
.end method

.method private isCanEnterCamera()Z
    .locals 8

    .prologue
    .line 193
    const/4 v0, 0x1

    .line 195
    .local v0, bconfilc:Z
    const/4 v2, 0x0

    .line 197
    .local v2, flashlighgtContext:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v6, "com.android.camera"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 199
    const-string v5, "visitor"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 201
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "visitor"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 202
    .local v4, state:I
    if-nez v4, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 210
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :goto_0
    return v0

    .line 205
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    .restart local v4       #state:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CameraCtrl"

    const-string v6, "isCanEnterCamera"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method private startCamera()V
    .locals 5

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->closeCamera()V

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x2d

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 219
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 217
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "startCamera failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startCaptureCamearService()V
    .locals 5

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 149
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, in:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "send captrueCamera intent failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 80
    .local v0, keyguardOn:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 81
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCamera()V

    .line 85
    :cond_0
    const-wide/high16 v1, -0x8000

    return-wide v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 12
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const-wide/16 v7, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 92
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 93
    .local v1, up:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isCanEnterCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 99
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCode:I

    if-ne v4, v5, :cond_1

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 110
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    if-ne v4, v2, :cond_6

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 124
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_2

    .line 125
    if-eqz v0, :cond_2

    .line 126
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 127
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v4, v2, :cond_8

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 141
    :cond_2
    :goto_4
    const/4 v2, -0x1

    return v2

    .end local v0           #down:Z
    .end local v1           #up:Z
    :cond_3
    move v0, v3

    .line 91
    goto :goto_0

    .restart local v0       #down:Z
    :cond_4
    move v1, v3

    .line 92
    goto :goto_1

    .line 103
    .restart local v1       #up:Z
    :cond_5
    if-eqz v1, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 112
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    if-ne v4, v9, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->getUserTime()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_7

    .line 114
    const-string v4, "CameraCtrl"

    const-string v5, "CameraCtrl send captureCamera intent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 116
    iput v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 117
    iput-wide v10, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 119
    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 129
    :cond_8
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v4, v9, :cond_9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->getVolumeUpUserTime()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_9

    .line 131
    const-string v2, "CameraCtrl"

    const-string v4, "CameraCtrl send captureCamera intent"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 133
    iput v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 134
    iput-wide v10, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4

    .line 136
    :cond_9
    iput v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4
.end method
