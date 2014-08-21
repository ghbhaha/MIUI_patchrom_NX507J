.class public Lcom/nubia/os/DefaultHaptics;
.super Ljava/lang/Object;
.source "DefaultHaptics.java"

# interfaces
.implements Lcom/nubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final NUBIA_HAPTICS_DEFAULT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private isPermissionOK:Z

.field private len:I

.field private mContext:Landroid/content/Context;

.field private mDefalut:[Ljava/lang/String;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "ro.nubia.haptics.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 29
    iput-boolean v2, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 33
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 34
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 38
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v3, "android.permission.VIBRATE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 29
    iput-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 47
    iput-object p1, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    .line 48
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 49
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 52
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 55
    :cond_2
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    .line 226
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, intValue:I
    iget-object v2, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-lez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "clickKey e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-boolean v1, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v1, :cond_1

    const-string v1, "Permission Error!"

    invoke-direct {p0, v1}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0
.end method

.method public longPressBlank()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 153
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 157
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 139
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "longPressButton e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 144
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 125
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "longPressKeyEnd e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 130
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 112
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 116
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 179
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 166
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 170
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 192
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 195
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator2()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 204
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 207
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 99
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 103
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 86
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 90
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
