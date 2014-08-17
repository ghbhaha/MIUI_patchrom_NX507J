.class public Landroid/os/nubia/breathlight/BreathinglightManager;
.super Ljava/lang/Object;
.source "BreathinglightManager.java"


# static fields
.field public static final BL_OUTN_L:I = 0x20

.field public static final BL_OUTN_M:I = 0x10

.field public static final BL_OUTN_R:I = 0x8

.field public static final BREATHINGLIGHT_ALWAYSE_OFF:I = 0x8

.field public static final BREATHINGLIGHT_ALWAYSE_ON:I = 0x1

.field public static final BREATHINGLIGHT_CHARGING_ON:I = 0x3

.field public static final BREATHINGLIGHT_FADE_IN_ONCE:I = 0x5

.field public static final BREATHINGLIGHT_FADE_OUT_ONCE:I = 0x6

.field public static final BREATHINGLIGHT_KEYUP_ONCE:I = 0x7

.field public static final BREATHINGLIGHT_LOW_POWER_ON:I = 0x2

.field public static final BREATHINGLIGHT_MISSING_EVENT_ON:I = 0x4

.field public static final BREATHINGLIGHT_OFF:I = 0x0

.field public static final BREATHLIGHT_STATUS_BTNOFF:I = 0x5

.field public static final BREATHLIGHT_STATUS_BTNON:I = 0x1

.field public static final BREATHLIGHT_STATUS_CLRDATA:I = 0x4

.field public static final BREATHLIGHT_STATUS_ICOFF:I = 0x2

.field public static final BREATHLIGHT_STATUS_KEYUP:I = 0x3

.field public static final BREATHLIGHT_STATUS_SCROFF:I = 0x0

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BreathinglightManager"

.field private static mService:Landroid/os/nubia/breathlight/IBreathinglightService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 58
    return-void
.end method

.method public static getBreathLightMinGrade()I
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, tmp:I
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 162
    :try_start_0
    sget-object v1, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v1}, Landroid/os/nubia/breathlight/IBreathinglightService;->getMinGrade()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static handleNotification(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkg"
    .parameter "flag"

    .prologue
    .line 193
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 196
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0, p1}, Landroid/os/nubia/breathlight/IBreathinglightService;->handleNotification(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initService()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "breathinglight"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/nubia/breathlight/IBreathinglightService;

    move-result-object v0

    sput-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    .line 63
    :cond_0
    return-void
.end method

.method public static setBreathLightAutoStatus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 183
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 186
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0}, Landroid/os/nubia/breathlight/IBreathinglightService;->setBreathLightAuto(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setBreathLightLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 173
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 176
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0}, Landroid/os/nubia/breathlight/IBreathinglightService;->setBreathLightLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setBreathLightMinGrade(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 152
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0}, Landroid/os/nubia/breathlight/IBreathinglightService;->setMinGrade(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setBreathLightValue(II)V
    .locals 0
    .parameter "value"
    .parameter "outn"

    .prologue
    .line 144
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 145
    invoke-static {p0, p1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(II)V

    .line 146
    return-void
.end method

.method private static setBrightnessExt(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0}, Landroid/os/nubia/breathlight/IBreathinglightService;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setBrightnessExt(II)V
    .locals 1
    .parameter "value"
    .parameter "outn"

    .prologue
    .line 74
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0, p0, p1}, Landroid/os/nubia/breathlight/IBreathinglightService;->setKeycodeBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static updateBreathLightStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 89
    if-nez p0, :cond_1

    .line 91
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0}, Landroid/os/nubia/breathlight/IBreathinglightService;->enterScreenOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-ne p0, v1, :cond_2

    .line 95
    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(I)V

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 97
    invoke-static {v2}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(I)V

    goto :goto_0

    .line 98
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 99
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(I)V

    goto :goto_0

    .line 100
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 102
    :try_start_1
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0}, Landroid/os/nubia/breathlight/IBreathinglightService;->clearUnreadEvent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    const/16 v0, 0x38

    invoke-static {v2, v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightValue(II)V

    .line 106
    const/16 v0, 0x10

    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightValue(II)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static updateBreathLightStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "outn"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-static {}, Landroid/os/nubia/breathlight/BreathinglightManager;->initService()V

    .line 120
    if-nez p0, :cond_1

    .line 122
    :try_start_0
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0}, Landroid/os/nubia/breathlight/IBreathinglightService;->enterScreenOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-ne p0, v0, :cond_2

    .line 126
    invoke-static {v0, p1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(II)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 128
    invoke-static {v1, p1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(II)V

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 130
    const/4 v0, 0x7

    invoke-static {v0, p1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(II)V

    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 133
    :try_start_1
    sget-object v0, Landroid/os/nubia/breathlight/BreathinglightManager;->mService:Landroid/os/nubia/breathlight/IBreathinglightService;

    invoke-interface {v0}, Landroid/os/nubia/breathlight/IBreathinglightService;->clearUnreadEvent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_1
    const/16 v0, 0x38

    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBreathLightValue(II)V

    goto :goto_0

    .line 137
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 138
    const/16 v0, 0x8

    invoke-static {v0, p1}, Landroid/os/nubia/breathlight/BreathinglightManager;->setBrightnessExt(II)V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    goto :goto_0
.end method
