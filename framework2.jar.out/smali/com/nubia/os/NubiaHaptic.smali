.class public Lcom/nubia/os/NubiaHaptic;
.super Ljava/lang/Object;
.source "NubiaHaptic.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaHaptic"


# instance fields
.field private final mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/nubia/os/NubiaHapticFactory;->createNubiaHaptics()Lcom/nubia/os/INubiaHaptics;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/nubia/os/NubiaHapticFactory;->createNubiaHaptics(Landroid/content/Context;)Lcom/nubia/os/INubiaHaptics;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    .line 23
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 27
    const-string v0, "NubiaHaptic"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public clickButton()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->clickButton()V

    .line 34
    :cond_0
    return-void
.end method

.method public clickKey()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->clickKey()V

    .line 40
    :cond_0
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->hasVibrator()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longPressBlank()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressBlank()V

    .line 76
    :cond_0
    return-void
.end method

.method public longPressButton()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressButton()V

    .line 70
    :cond_0
    return-void
.end method

.method public longPressKeyEnd()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressKeyEnd()V

    .line 64
    :cond_0
    return-void
.end method

.method public longPressKeyStart()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressKeyStart()V

    .line 58
    :cond_0
    return-void
.end method

.method public longPressTelButtonEnd()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressTelButtonEnd()V

    .line 88
    :cond_0
    return-void
.end method

.method public longPressTelButtonStart()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->longPressTelButtonStart()V

    .line 82
    :cond_0
    return-void
.end method

.method public notificationVibrator1()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->notificationVibrator1()V

    .line 94
    :cond_0
    return-void
.end method

.method public notificationVibrator2()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->notificationVibrator2()V

    .line 100
    :cond_0
    return-void
.end method

.method public slideButtonEnd()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->slideButtonEnd()V

    .line 52
    :cond_0
    return-void
.end method

.method public slideButtonStart()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nubia/os/NubiaHaptic;->mINubiaHaptics:Lcom/nubia/os/INubiaHaptics;

    invoke-interface {v0}, Lcom/nubia/os/INubiaHaptics;->slideButtonStart()V

    .line 46
    :cond_0
    return-void
.end method
