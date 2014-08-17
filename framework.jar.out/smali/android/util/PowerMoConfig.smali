.class public final Landroid/util/PowerMoConfig;
.super Ljava/lang/Object;
.source "PowerMoConfig.java"


# static fields
.field public static FEATURE:Ljava/lang/String;

.field public static WITHOUT_ALL:Z

.field public static WITHOUT_FLOATING:Z

.field public static WITHOUT_REMOTE_DISPLAY:Z

.field public static WITHOUT_SHOPM:Z

.field public static WITHOUT_SMART_AUDIO:Z

.field public static WITHOUT_SMART_CONFIGURATION:Z

.field public static WITHOUT_SMART_DISPLAY:Z

.field public static WITHOUT_SMART_INPUT:Z

.field public static WITHOUT_SMART_SENSOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v0, ""

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 33
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "remote-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_REMOTE_DISPLAY:Z

    .line 38
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    .line 43
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_AUDIO:Z

    .line 48
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-sensor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    .line 53
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    .line 58
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONFIGURATION:Z

    .line 63
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    if-nez v0, :cond_6

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "shopm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SHOPM:Z

    .line 68
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_7

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "floating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    sput-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_FLOATING:Z

    return-void

    :cond_9
    move v0, v1

    .line 33
    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 38
    goto :goto_1

    :cond_b
    move v0, v1

    .line 43
    goto :goto_2

    :cond_c
    move v0, v1

    .line 48
    goto :goto_3

    :cond_d
    move v0, v1

    .line 53
    goto :goto_4

    :cond_e
    move v0, v1

    .line 58
    goto :goto_5

    :cond_f
    move v0, v1

    .line 63
    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
