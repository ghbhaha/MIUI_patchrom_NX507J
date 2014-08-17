.class public Lcom/ti/Haptic;
.super Ljava/lang/Object;
.source "Haptic.java"


# static fields
.field public static final DEVICE_DRV2604:I = 0x4

.field public static final DEVICE_DRV2605:I = 0x5

.field public static final DEVICE_REVISION_MASK:I = 0x7

.field public static final HAPTIC_EFFECT_INDEX_MAX:I = 0xfe

.field public static final HAPTIC_INTER_EFFECT_DELAY_10MS_MAX:I = 0x7f

.field public static final HAPTIC_PLAY_EFFECT_SEQUENCE_BUFFER_SIZE_MAX:I = 0x8

.field public static final HAPTIC_TIMED_EFFECT_DURATION_MS_MAX:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native initialize()V
.end method

.method public static native playEffect(I)V
.end method

.method public static native playEffectSequence([BI)V
.end method

.method public static native playPatternRTP(IIII)V
.end method

.method public static native playRTPSequence([BI)V
.end method

.method public static native playTimedEffect(I)V
.end method

.method public static native setAudioHapticEnabled(Z)V
.end method

.method public static native stopPlayingEffect()V
.end method

.method public static native terminate()V
.end method
