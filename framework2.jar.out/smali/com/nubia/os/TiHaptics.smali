.class public Lcom/nubia/os/TiHaptics;
.super Ljava/lang/Object;
.source "TiHaptics.java"

# interfaces
.implements Lcom/nubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHaptics:Landroid/os/Haptics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0}, Landroid/os/SystemHaptics;-><init>()V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0, p1}, Landroid/os/SystemHaptics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    .line 30
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    .line 140
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, intValue:I
    iget-object v2, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/nubia/os/TiHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public longPressBlank()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "longPressButton"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "longPressKey e"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "longPressKey s"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public notificationVibrator2()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public slideButtonEnd()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method
