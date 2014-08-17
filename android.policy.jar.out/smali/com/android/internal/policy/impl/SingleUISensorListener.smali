.class public final Lcom/android/internal/policy/impl/SingleUISensorListener;
.super Ljava/lang/Object;
.source "SingleUISensorListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SingleUISensorListener$1;,
        Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;,
        Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACTION_BLACK_APP_START:Ljava/lang/String; = "android.intent.action.SINGLE_UI_BLACK_APP_START"

.field private static final DELAY_TIME:I = 0x1f4

.field private static final LOG:Z = false

.field private static final MOVE_DOWN:I = 0x0

.field private static final MOVE_UP:I = 0x1

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_LEFT_OR_RIGHT:Ljava/lang/String; = "nubia_overlay_display_devices_left_right"

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field static final SEPARATOR_APP_LIST:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "SingleUISensorListener"

.field private static final THRESHOLD_CLOSE_REVERSE_SINGLE_ANGLE:I = 0x14

.field private static final THRESHOLD_OPEN_MIN_SU_ANGLE_Y:I = -0xa

.field private static final THRESHOLD_OPEN_REVERSE_SINGLE_ANGLE:I = 0x28

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mEnabled:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "displaySize"
    .parameter "blStr"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensor:Landroid/hardware/Sensor;

    .line 54
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/policy/impl/SingleUISensorListener$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;-><init>(Lcom/android/internal/policy/impl/SingleUISensorListener;)V

    .line 57
    .local v1, receiver:Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SINGLE_UI_BLACK_APP_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #receiver:Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;
    :cond_0
    return-void
.end method

.method static synthetic access$100(ILandroid/hardware/SensorEvent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/SingleUISensorListener;->calcTiltAngle(ILandroid/hardware/SensorEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/internal/policy/impl/SingleUISensorListener;->getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SingleUISensorListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUISensorListener;->getScreenState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SingleUISensorListener;)Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    return-object v0
.end method

.method private static calcTiltAngle(ILandroid/hardware/SensorEvent;)I
    .locals 6
    .parameter "index"
    .parameter "event"

    .prologue
    .line 360
    invoke-static {p1}, Lcom/android/internal/policy/impl/SingleUISensorListener;->getMagnitude(Landroid/hardware/SensorEvent;)F

    move-result v0

    .line 361
    .local v0, magnitude:F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, p0

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc20000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 363
    .local v1, tiltAngle:I
    return v1
.end method

.method private static getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5
    .parameter "activityManager"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 340
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 342
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 343
    .restart local v0       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 344
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 345
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 349
    .end local v2           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private static getMagnitude(Landroid/hardware/SensorEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 369
    .local v0, square:F
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method private getScreenState()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;->getScreenState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static string2list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, array:[Ljava/lang/String;
    array-length v2, v0

    .line 328
    .local v2, length:I
    const/4 v1, 0x0

    .line 329
    .local v1, i:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v3, outputArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v1, v2, :cond_0

    .line 331
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-object v3
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 79
    const-string v0, "SingleUISensorListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 65
    const-string v0, "SingleUISensorListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mEnabled:Z

    goto :goto_0
.end method

.method public setDisplayCloseStatus()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;->setDisplayCloseStatus()V

    .line 95
    :cond_0
    return-void
.end method

.method public setDisplaySize(Ljava/lang/String;)V
    .locals 1
    .parameter "displaySize"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;->setDisplaySize(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public updateBlackList(Ljava/lang/String;)V
    .locals 1
    .parameter "blackList"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;->updateBlackList(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method
