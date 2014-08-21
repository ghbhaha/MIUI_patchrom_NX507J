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
    .line 23
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

    .line 29
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 35
    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    iput v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 37
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCode:I

    .line 38
    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 39
    iput v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 40
    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/CameraCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CameraCtrl$1;-><init>(Lcom/android/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/android/internal/policy/impl/CameraCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CameraCtrl$2;-><init>(Lcom/android/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CameraCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CameraCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CameraCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCamera()V

    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 186
    .local v1, mActivityManager:Landroid/app/ActivityManager;
    const-string v2, "com.android.camera"

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #mActivityManager:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
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
    .line 193
    const/16 v2, 0x19

    .line 195
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 197
    .local v1, flashlighgtContext:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v6, "com.android.camera"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 199
    const-string v5, "capture_camera_keycode"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 201
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "camera_keycode"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 202
    .local v4, state:I
    move v2, v4

    .line 206
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :goto_0
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CameraCtrl"

    const-string v6, "isCanEnterCamera"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserTime()J
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getVolumeUpUserTime()J
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CameraCtrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    return-void
.end method

.method private isCameraRunning()Z
    .locals 7

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, flag:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 250
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 251
    .local v3, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 252
    const-string v5, "com.android.camera"

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const/4 v1, 0x1

    .line 259
    .end local v2           #mActivityManager:Landroid/app/ActivityManager;
    .end local v3           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check Camera filed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCanEnterCamera()Z
    .locals 8

    .prologue
    .line 210
    const/4 v0, 0x1

    .line 212
    .local v0, bconfilc:Z
    const/4 v2, 0x0

    .line 214
    .local v2, flashlighgtContext:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v6, "com.android.camera"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 216
    const-string v5, "visitor"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 218
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "visitor"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 219
    .local v4, state:I
    if-nez v4, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 227
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :goto_0
    return v0

    .line 222
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    .restart local v4       #state:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #state:I
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CameraCtrl"

    const-string v6, "isCanEnterCamera"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
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
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method private sendHomeIntentToCamera()V
    .locals 4

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.homeKey"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, in:Landroid/content/Intent;
    const-string v2, "com.android.camera"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "send home intent failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startCamera()V
    .locals 5

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->closeCamera()V

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x2d

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 236
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 234
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "startCamera failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startCaptureCamearService()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 166
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, in:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
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
    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 83
    .local v0, keyguardOn:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isCameraRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCamera()V

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->sendHomeIntentToCamera()V

    .line 91
    :cond_1
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

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 98
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 99
    .local v1, up:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->isCanEnterCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 105
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCode:I

    if-ne v4, v5, :cond_1

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 116
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    if-ne v4, v2, :cond_6

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 130
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_2

    .line 131
    if-eqz v0, :cond_2

    .line 132
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 133
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v4, v2, :cond_8

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 147
    :cond_2
    :goto_4
    const/4 v2, -0x1

    return v2

    .end local v0           #down:Z
    .end local v1           #up:Z
    :cond_3
    move v0, v3

    .line 97
    goto :goto_0

    .restart local v0       #down:Z
    :cond_4
    move v1, v3

    .line 98
    goto :goto_1

    .line 109
    .restart local v1       #up:Z
    :cond_5
    if-eqz v1, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 118
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    if-ne v4, v9, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->getUserTime()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_7

    .line 120
    const-string v4, "CameraCtrl"

    const-string v5, "CameraCtrl send captureCamera intent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 122
    iput v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 123
    iput-wide v10, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 125
    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 135
    :cond_8
    iget v4, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v4, v9, :cond_9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->getVolumeUpUserTime()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_9

    .line 137
    const-string v2, "CameraCtrl"

    const-string v4, "CameraCtrl send captureCamera intent"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 139
    iput v3, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 140
    iput-wide v10, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4

    .line 142
    :cond_9
    iput v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4
.end method
