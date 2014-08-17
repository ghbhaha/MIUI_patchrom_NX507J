.class public Lcom/nubia/os/TiHaptics;
.super Ljava/lang/Object;
.source "TiHaptics.java"

# interfaces
.implements Lcom/nubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private final mHaptics:Landroid/os/Haptics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0}, Landroid/os/SystemHaptics;-><init>()V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/SystemHaptics;

    invoke-direct {v0, p1}, Landroid/os/SystemHaptics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    .line 26
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 1
    .parameter "log_str"

    .prologue
    .line 125
    const-string v0, "TiHaptics"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method


# virtual methods
.method public clickButton()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 33
    :cond_0
    return-void
.end method

.method public clickKey()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 40
    :cond_0
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public longPressBlank()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public longPressButton()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "longPressButton"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public longPressKeyEnd()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "longPressKey e"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public longPressKeyStart()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "longPressKey s"

    invoke-direct {p0, v0}, Lcom/nubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public longPressTelButtonEnd()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public longPressTelButtonStart()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public notificationVibrator1()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public notificationVibrator2()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public slideButtonEnd()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public slideButtonStart()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/nubia/os/TiHaptics;->mHaptics:Landroid/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Haptics;->playNubiaEffect(I)V

    .line 47
    :cond_0
    return-void
.end method
