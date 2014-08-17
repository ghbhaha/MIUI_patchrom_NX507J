.class public abstract Landroid/os/Haptics;
.super Ljava/lang/Object;
.source "Haptics.java"


# static fields
.field public static final DATA_HAPTICTHEME_DIALPAD:Ljava/lang/String; = "data_haptictheme_dialpad"

.field public static final DATA_HAPTICTHEME_GALLERY:Ljava/lang/String; = "data_haptictheme_gallery"

.field public static final DATA_HAPTICTHEME_LAUNCHER:Ljava/lang/String; = "data_haptictheme_launcher"

.field public static final DATA_HAPTICTHEME_LONGPRESS:Ljava/lang/String; = "data_haptictheme_longpress"

.field public static final DATA_HAPTICTHEME_MULTI_TOUCH:Ljava/lang/String; = "data_haptictheme_multi_touch"

.field public static final DATA_HAPTICTHEME_ROTATE:Ljava/lang/String; = "data_haptictheme_rotate"

.field public static final DATA_HAPTICTHEME_SCROLL:Ljava/lang/String; = "data_haptictheme_scroll"

.field public static final DATA_HAPTICTHEME_SIP:Ljava/lang/String; = "data_haptictheme_SIP"

.field public static final DATA_HAPTICTHEME_VIRTUALKEY:Ljava/lang/String; = "data_haptictheme_virtualkey"

.field public static final DATA_HAPTIC_A2H:Ljava/lang/String; = "haptic_A2H_data"

.field public static final DATA_HAPTIC_VIBRATE:Ljava/lang/String; = "haptic_vibrate_data"

.field public static final HAPTICS_HAPTICTHEME_DIALPAD:I = 0x2

.field public static final HAPTICS_HAPTICTHEME_GALLERY:I = 0x8

.field public static final HAPTICS_HAPTICTHEME_LAUNCHER:I = 0x3

.field public static final HAPTICS_HAPTICTHEME_LOCKSCREEN:I = 0x9

.field public static final HAPTICS_HAPTICTHEME_LONGPRESS:I = 0x4

.field public static final HAPTICS_HAPTICTHEME_MULTITOUCH:I = 0xb

.field public static final HAPTICS_HAPTICTHEME_ROTATE:I = 0x7

.field public static final HAPTICS_HAPTICTHEME_SCROLLING:I = 0xc

.field public static final HAPTICS_HAPTICTHEME_SIP:I = 0x1

.field public static final HAPTICS_HAPTICTHEME_TRY_UNLOCK:I = 0xa

.field public static final HAPTICS_HAPTICTHEME_VIRTUALKEY:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRingHapticsName()[Ljava/lang/String;
.end method

.method public abstract getRingHapticsValue(I)Ljava/lang/String;
.end method

.method public abstract getRingHapticsValues()[Ljava/lang/String;
.end method

.method public abstract playEffectSeqBuff([BI)V
.end method

.method public abstract playEffectSequence(Ljava/lang/String;)V
.end method

.method public abstract playEffectSequenceRepeat(Ljava/lang/String;I)V
.end method

.method public abstract playNubiaEffect(I)V
.end method

.method public abstract playNubiaEffect(IZ)V
.end method

.method public abstract playPatternRTP(IIII)V
.end method

.method public abstract playRTPSeqBuff([BI)V
.end method

.method public abstract playRTPSequence(Ljava/lang/String;)V
.end method

.method public abstract playRingHaptics(I)V
.end method

.method public abstract playRingSeq(I)V
.end method

.method public abstract playTimedEffect(I)V
.end method

.method public abstract playeffect(I)V
.end method

.method public abstract playeffectforce(I)V
.end method

.method public abstract setAudioHapticEnabled(Ljava/lang/String;)V
.end method

.method public abstract stopPlayingEffect()V
.end method
