.class public Landroid/media/NubiaVolume;
.super Ljava/lang/Object;
.source "NubiaVolume.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaVolume"

.field private static final ZTEMT_SOUND_SCHEME:Z = true


# instance fields
.field private LAST_RINGER_MODE:Ljava/lang/String;

.field private VOLUME_CHANGED_WHEN_SILENT:Ljava/lang/String;

.field private mAffectStreamTypeByRingerModeForNubia:[I

.field private mAudioService:Landroid/media/AudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLastPersistMusicVolume:[I

.field private mLastPersistMusicVolumeName:[Ljava/lang/String;

.field private mLastRingerMode:I

.field private mLastSilentMode:I

.field private mPrevVolDirection:I

.field private mVolumeChangedWhenSilent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "audioService"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "nb_volume_changed_when_slent"

    iput-object v0, p0, Landroid/media/NubiaVolume;->VOLUME_CHANGED_WHEN_SILENT:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "nb_last_ringer_mode"

    iput-object v0, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    .line 16
    iput v3, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/NubiaVolume;->mAffectStreamTypeByRingerModeForNubia:[I

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "nb_stream_music_before_muted"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "nb_stream_system_before_muted"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    .line 25
    iput v3, p0, Landroid/media/NubiaVolume;->mPrevVolDirection:I

    .line 28
    iput-object p2, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    .line 29
    iput-object p1, p0, Landroid/media/NubiaVolume;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Landroid/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    return-void

    .line 18
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getStreamVolume(ZI)I
    .locals 1
    .parameter "mute"
    .parameter "index"

    .prologue
    .line 166
    iget v0, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    const/4 p2, 0x0

    .line 169
    :cond_0
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public initStateForSilentMode()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 34
    iget-object v5, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroid/media/NubiaVolume;->VOLUME_CHANGED_WHEN_SILENT:Ljava/lang/String;

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 35
    .local v4, volumeChangedWhenSilent:I
    iget-object v5, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 36
    .local v2, lastRingerMode:I
    iget-object v5, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "nb_silent_mode"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 37
    .local v3, lastSilentMode:I
    iget-object v5, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    array-length v5, v5

    new-array v1, v5, [I

    .line 38
    .local v1, lastPersistMusicVolume:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 39
    iget-object v5, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    aput v5, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iput v4, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    .line 42
    iput v2, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    .line 43
    iput-object v1, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    .line 44
    iput v3, p0, Landroid/media/NubiaVolume;->mLastSilentMode:I

    .line 45
    return-void
.end method

.method public nbCheckForRingerModeChange(III)Z
    .locals 6
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, adjustVolumeIndex:Z
    iget-object v4, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 126
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_0

    .line 156
    const-string v3, "NubiaVolume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nbcheckForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 160
    iput p2, p0, Landroid/media/NubiaVolume;->mPrevVolDirection:I

    .line 162
    return v0

    .line 128
    :pswitch_0
    if-ne p2, v5, :cond_0

    .line 129
    iget-object v4, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "nb_vibrate_when_silent"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 130
    .local v2, vibrateInSilent:Z
    :goto_1
    if-gt p3, p1, :cond_2

    mul-int/lit8 v3, p3, 0x2

    if-ge p1, v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .end local v2           #vibrateInSilent:Z
    :cond_1
    move v2, v3

    .line 129
    goto :goto_1

    .line 132
    .restart local v2       #vibrateInSilent:Z
    :cond_2
    if-ge p1, p3, :cond_0

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    .end local v2           #vibrateInSilent:Z
    :pswitch_1
    iget v3, p0, Landroid/media/NubiaVolume;->mLastSilentMode:I

    if-eqz v3, :cond_3

    .line 139
    if-ge p1, p3, :cond_0

    if-ne p2, v5, :cond_0

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_3
    if-ne p2, v2, :cond_4

    .line 144
    const/4 v1, 0x2

    goto :goto_0

    .line 146
    :cond_4
    const/4 v0, 0x0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    if-ge p1, p3, :cond_0

    if-ne p2, v5, :cond_0

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public persistWhenRingerModeChange(I)V
    .locals 8
    .parameter "ringerMode"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 98
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/media/NubiaVolume;->VOLUME_CHANGED_WHEN_SILENT:Ljava/lang/String;

    iget v4, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 99
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/media/NubiaVolume;->LAST_RINGER_MODE:Ljava/lang/String;

    iget v4, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 100
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_silent_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, silentMode:I
    if-eqz p1, :cond_0

    if-ne v5, v1, :cond_3

    if-ne p1, v5, :cond_3

    .line 102
    :cond_0
    if-nez p1, :cond_2

    .line 103
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_silent_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_vibrate_when_silent"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 109
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolumeName:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0           #i:I
    :cond_2
    if-ne p1, v5, :cond_1

    .line 106
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_vibrate_when_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 111
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 112
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_silent_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_silent_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/media/NubiaVolume;->mLastSilentMode:I

    .line 117
    return-void

    .line 114
    :cond_5
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_vibrate_when_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public ringerModeForStreamVolume(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 48
    const/4 v0, 0x2

    .line 49
    .local v0, newRingerMode:I
    if-nez p1, :cond_2

    .line 50
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_vibrate_when_silent"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_2
    iget v2, p0, Landroid/media/NubiaVolume;->mLastSilentMode:I

    if-ne v2, v1, :cond_0

    .line 55
    iget-object v1, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method public setFlagVolumeChangedWhenSilent(II)V
    .locals 1
    .parameter "changed"
    .parameter "streamType"

    .prologue
    .line 173
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 174
    iput p1, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    .line 176
    :cond_0
    return-void
.end method

.method public silentModeChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nb_silent_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, silentMode:I
    iget v2, p0, Landroid/media/NubiaVolume;->mLastSilentMode:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public updateStateWhenRingerModeChange()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/NubiaVolume;->mVolumeChangedWhenSilent:I

    .line 70
    iget-object v0, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    iput v0, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    .line 71
    return-void
.end method

.method public updateStreamVolume(ZII)V
    .locals 8
    .parameter "persist"
    .parameter "streamType"
    .parameter "ringerMode"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    if-eqz p1, :cond_3

    .line 75
    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    if-ne p2, v3, :cond_3

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, i:I
    if-ne p2, v3, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 80
    :cond_1
    iget-object v5, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p2, v7}, Landroid/media/AudioService;->getCurrentIndexForDevice(II)I

    move-result v0

    .line 81
    .local v0, currentIndex:I
    iget-object v5, p0, Landroid/media/NubiaVolume;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "nb_silent_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 82
    .local v2, silentMode:Z
    :goto_0
    if-eq p3, v7, :cond_2

    if-nez v2, :cond_5

    if-ne p3, v3, :cond_5

    .line 84
    :cond_2
    if-nez v0, :cond_3

    .line 85
    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    iget-object v5, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aget v5, v5, v1

    invoke-virtual {v3, p2, v7, v5, v4}, Landroid/media/AudioService;->setStreamVolumeForDevice(IIII)V

    .line 95
    .end local v0           #currentIndex:I
    .end local v1           #i:I
    .end local v2           #silentMode:Z
    :cond_3
    :goto_1
    return-void

    .restart local v0       #currentIndex:I
    .restart local v1       #i:I
    :cond_4
    move v2, v4

    .line 81
    goto :goto_0

    .line 87
    .restart local v2       #silentMode:Z
    :cond_5
    if-nez v2, :cond_6

    if-nez p3, :cond_3

    .line 88
    :cond_6
    iget v3, p0, Landroid/media/NubiaVolume;->mLastRingerMode:I

    if-eq v3, v7, :cond_7

    if-eqz v0, :cond_8

    .line 89
    :cond_7
    iget-object v3, p0, Landroid/media/NubiaVolume;->mLastPersistMusicVolume:[I

    aput v0, v3, v1

    .line 91
    :cond_8
    iget-object v3, p0, Landroid/media/NubiaVolume;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p2, v7, v4, v4}, Landroid/media/AudioService;->setStreamVolumeForDevice(IIII)V

    goto :goto_1
.end method
