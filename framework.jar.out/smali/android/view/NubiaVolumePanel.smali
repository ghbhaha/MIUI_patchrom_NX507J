.class public Landroid/view/NubiaVolumePanel;
.super Landroid/os/Handler;
.source "NubiaVolumePanel.java"

# interfaces
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NubiaVolumePanel$WarningDialogReceiver;,
        Landroid/view/NubiaVolumePanel$StreamControl;,
        Landroid/view/NubiaVolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "NubiaVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private final ZTEMT_SOUND_SCHEME:Z

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/NubiaVolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sput-boolean v2, Landroid/view/NubiaVolumePanel;->LOGD:Z

    .line 194
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/NubiaVolumePanel$StreamResources;

    sget-object v1, Landroid/view/NubiaVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->RingerStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->VoiceStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->MediaStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->NotificationStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->AlarmStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->MasterStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->RemoteStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 11
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    const/4 v9, -0x1

    iput v9, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    .line 256
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/NubiaVolumePanel;->ZTEMT_SOUND_SCHEME:Z

    .line 260
    iput-object p1, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    .line 261
    const-string v9, "audio"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 262
    iput-object p2, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 267
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_1

    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v9, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    array-length v9, v9

    if-ge v0, v9, :cond_1

    .line 269
    sget-object v9, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    aget-object v5, v9, v0

    .line 270
    .local v5, streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    iget v9, v5, Landroid/view/NubiaVolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v5, Landroid/view/NubiaVolumePanel$StreamResources;->show:Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 274
    .end local v0           #i:I
    .end local v5           #streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    :cond_1
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 276
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    .line 278
    .local v7, view:Landroid/view/View;
    const v9, 0x1090061

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7           #view:Landroid/view/View;
    iput-object v7, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    .line 282
    .restart local v7       #view:Landroid/view/View;
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/NubiaVolumePanel$1;

    invoke-direct {v10, p0}, Landroid/view/NubiaVolumePanel$1;-><init>(Landroid/view/NubiaVolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    const v10, 0x10202e7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 289
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    const v10, 0x10202e8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 290
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    const v10, 0x10202ea

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mMoreButton:Landroid/view/View;

    .line 291
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    const v10, 0x10202e9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mDivider:Landroid/view/View;

    .line 293
    new-instance v9, Landroid/view/NubiaVolumePanel$2;

    const v10, 0x103030d

    invoke-direct {v9, p0, p1, v10}, Landroid/view/NubiaVolumePanel$2;-><init>(Landroid/view/NubiaVolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    .line 303
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 305
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/NubiaVolumePanel$3;

    invoke-direct {v10, p0}, Landroid/view/NubiaVolumePanel$3;-><init>(Landroid/view/NubiaVolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 312
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 314
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 318
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 319
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 325
    const/16 v9, 0x7e4

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 326
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 327
    const/4 v9, -0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 328
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 329
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 330
    const v9, 0x40028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 333
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 334
    const-string/jumbo v9, "vibrator"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Landroid/view/NubiaVolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111003a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/NubiaVolumePanel;->mVoiceCapable:Z

    .line 337
    iget-boolean v9, p0, Landroid/view/NubiaVolumePanel;->mVoiceCapable:Z

    if-nez v9, :cond_2

    if-nez v6, :cond_2

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Landroid/view/NubiaVolumePanel;->mShowCombinedVolumes:Z

    .line 340
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 353
    .local v4, masterVolumeOnly:Z
    iget-object v9, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 356
    .local v3, masterVolumeKeySounds:Z
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Landroid/view/NubiaVolumePanel;->mPlayMasterStreamTones:Z

    .line 358
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->listenToRingerMode()V

    .line 359
    return-void

    .line 337
    .end local v3           #masterVolumeKeySounds:Z
    .end local v4           #masterVolumeOnly:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 356
    .restart local v3       #masterVolumeKeySounds:Z
    .restart local v4       #masterVolumeOnly:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/NubiaVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/NubiaVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/NubiaVolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Landroid/view/NubiaVolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Landroid/view/NubiaVolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 486
    iget-boolean v3, p0, Landroid/view/NubiaVolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 498
    :cond_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 490
    sget-object v3, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/NubiaVolumePanel$StreamResources;->streamType:I

    .line 491
    .local v2, streamType:I
    sget-object v3, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/NubiaVolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 488
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_3
    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 495
    .local v1, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    invoke-direct {p0, v1}, Landroid/view/NubiaVolumePanel;->updateSlider(Landroid/view/NubiaVolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 560
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 561
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 426
    iget-object v7, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 428
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 429
    iget-object v7, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 430
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 431
    sget-object v7, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 432
    .local v5, streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    iget v6, v5, Landroid/view/NubiaVolumePanel$StreamResources;->streamType:I

    .line 433
    .local v6, streamType:I
    iget-boolean v7, p0, Landroid/view/NubiaVolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    sget-object v7, Landroid/view/NubiaVolumePanel$StreamResources;->NotificationStream:Landroid/view/NubiaVolumePanel$StreamResources;

    if-ne v5, v7, :cond_0

    .line 434
    sget-object v5, Landroid/view/NubiaVolumePanel$StreamResources;->RingerStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 436
    :cond_0
    new-instance v4, Landroid/view/NubiaVolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/NubiaVolumePanel$StreamControl;-><init>(Landroid/view/NubiaVolumePanel;Landroid/view/NubiaVolumePanel$1;)V

    .line 437
    .local v4, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    iput v6, v4, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    .line 439
    const v7, 0x1090062

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 443
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 444
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10202eb

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 445
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 446
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/NubiaVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 447
    iget v7, v5, Landroid/view/NubiaVolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    .line 448
    iget v7, v5, Landroid/view/NubiaVolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->iconMuteRes:I

    .line 449
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10202ec

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/NubiaVolumeBar;

    iput-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    .line 452
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 454
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-direct {p0, v6}, Landroid/view/NubiaVolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NubiaVolumeBar;->setMax(I)V

    .line 455
    iget-object v7, v4, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/NubiaVolumeBar;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v7, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 452
    .end local v2           #plusOne:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 466
    .end local v4           #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_3
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 548
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 549
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 550
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_0
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1090
    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 1091
    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 962
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 966
    iget-boolean v1, p0, Landroid/view/NubiaVolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 967
    const/4 p1, 0x1

    .line 972
    :cond_0
    monitor-enter p0

    .line 973
    :try_start_0
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 975
    :try_start_1
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 983
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 969
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 978
    const-string v1, "NubiaVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 396
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 398
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 399
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 406
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 408
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 409
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 386
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 391
    :goto_0
    return v0

    .line 388
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 389
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/NubiaVolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/NubiaVolumePanel$4;-><init>(Landroid/view/NubiaVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 469
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 471
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 472
    .local v0, active:Landroid/view/NubiaVolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 473
    const-string v1, "NubiaVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    .line 482
    :goto_0
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->addOtherVolumes()V

    .line 483
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 477
    iput p1, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    .line 478
    iget-object v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 479
    invoke-direct {p0, v0}, Landroid/view/NubiaVolumePanel;->updateSlider(Landroid/view/NubiaVolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1085
    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 1086
    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1087
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 993
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 994
    .local v0, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 995
    iput p1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    .line 996
    iput p2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconMuteRes:I

    .line 997
    iget-object v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/NubiaVolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 999
    :cond_0
    return-void

    .line 997
    :cond_1
    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 416
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 419
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/NubiaVolumePanel$StreamControl;)V
    .locals 4
    .parameter "sc"

    .prologue
    const/4 v3, 0x1

    .line 503
    iget-object v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    iget v2, p1, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/NubiaVolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/NubiaVolumeBar;->setProgress(I)V

    .line 507
    iget v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/NubiaVolumePanel;->isMuted(I)Z

    move-result v0

    .line 509
    .local v0, muted:Z
    iget-object v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v2, p1, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    iget v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_1

    .line 523
    iget-object v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/NubiaVolumeBar;->setEnabled(Z)V

    .line 541
    :goto_1
    return-void

    .line 510
    :cond_0
    iget v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 527
    :cond_1
    iget v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 530
    :cond_3
    iget-object v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/NubiaVolumeBar;->setEnabled(Z)V

    goto :goto_1

    .line 536
    :cond_4
    iget-object v1, p1, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/NubiaVolumeBar;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1014
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1017
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NubiaVolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1022
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NubiaVolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1027
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1032
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1037
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NubiaVolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1042
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onVibrate()V

    goto :goto_0

    .line 1047
    :pswitch_6
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1049
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    .line 1051
    :cond_1
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_0
    sget-object v0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1053
    sget-object v0, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1055
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1059
    :pswitch_7
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->updateStates()V

    goto :goto_0

    .line 1066
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NubiaVolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1071
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1075
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NubiaVolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1079
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1125
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->forceTimeout()V

    .line 1126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.VOLUME_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v1, it:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1129
    :try_start_0
    iget-object v2, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 5
    .parameter "flags"

    .prologue
    .line 928
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 929
    :cond_0
    sget-object v2, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 930
    :try_start_0
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 931
    monitor-exit v2

    .line 956
    :goto_0
    return-void

    .line 933
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    const v4, 0x103031f

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040585

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    new-instance v4, Landroid/view/NubiaVolumePanel$5;

    invoke-direct {v4, p0}, Landroid/view/NubiaVolumePanel$5;-><init>(Landroid/view/NubiaVolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 944
    new-instance v0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3, p0}, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/NubiaVolumePanel;)V

    .line 947
    .local v0, warning:Landroid/view/NubiaVolumePanel$WarningDialogReceiver;
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 948
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7da

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 951
    sget-object v1, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 952
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->updateStates()V

    .line 955
    .end local v0           #warning:Landroid/view/NubiaVolumePanel$WarningDialogReceiver;
    :cond_2
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->resetTimeout()V

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1002
    monitor-enter p0

    .line 1003
    :try_start_0
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1004
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1007
    :cond_0
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1003
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1009
    :cond_1
    monitor-exit p0

    .line 1010
    return-void

    .line 1009
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 678
    sget-boolean v1, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "NubiaVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v1, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 681
    .local v0, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 682
    iget-object v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/NubiaVolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/NubiaVolumePanel;->onVolumeChanged(II)V

    .line 686
    return-void

    .line 682
    :cond_2
    iget v1, v0, Landroid/view/NubiaVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 824
    invoke-virtual {p0, v2}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    invoke-virtual {p0, v2}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 827
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onStopSounds()V

    .line 830
    :cond_0
    monitor-enter p0

    .line 831
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 832
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 833
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 834
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 836
    :cond_1
    monitor-exit p0

    .line 837
    return-void

    .line 836
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1096
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1097
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Landroid/view/NubiaVolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1098
    check-cast v0, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 1099
    .local v0, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    iget v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/NubiaVolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1100
    iget v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/NubiaVolumePanel;->setStreamVolume(III)V

    .line 1103
    .end local v0           #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->resetTimeout()V

    .line 1104
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 866
    sget-boolean v0, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "NubiaVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 869
    :cond_1
    monitor-enter p0

    .line 870
    :try_start_0
    iget v0, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 871
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/NubiaVolumePanel;->reorderSliders(I)V

    .line 873
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/NubiaVolumePanel;->onShowVolumeChanged(II)V

    .line 874
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/NubiaVolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 880
    invoke-virtual {p0, v4}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 881
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 884
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 885
    invoke-virtual {p0, v4}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 886
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 887
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onStopSounds()V

    .line 890
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 891
    invoke-virtual {p0, v5}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 892
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->resetTimeout()V

    .line 893
    return-void

    .line 874
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 876
    :cond_6
    sget-boolean v0, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "NubiaVolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 896
    sget-boolean v0, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "NubiaVolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/NubiaVolumePanel;->onShowVolumeChanged(II)V

    .line 902
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v11, 0x108048e

    const/4 v10, 0x0

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 689
    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 691
    .local v0, index:I
    iput-boolean v10, p0, Landroid/view/NubiaVolumePanel;->mRingIsSilent:Z

    .line 693
    sget-boolean v5, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 694
    const-string v5, "NubiaVolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 702
    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    .line 768
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 769
    .local v3, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    if-eqz v3, :cond_5

    .line 771
    iget-object v5, v3, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v5}, Lcom/android/internal/widget/NubiaVolumeBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 772
    iget-object v5, v3, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/NubiaVolumeBar;->setMax(I)V

    .line 774
    :cond_2
    iget-object v5, v3, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/NubiaVolumeBar;->setProgress(I)V

    .line 782
    and-int/lit8 v5, p2, 0x20

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_3

    if-eq p1, v9, :cond_3

    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel;->isMuted(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, Landroid/view/NubiaVolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_a

    .line 788
    :cond_4
    iget-object v5, v3, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NubiaVolumeBar;->setEnabled(Z)V

    .line 801
    :cond_5
    :goto_1
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 802
    if-ne p1, v9, :cond_b

    const/4 v4, -0x1

    .line 804
    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 805
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Landroid/view/NubiaVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 807
    iget-boolean v5, p0, Landroid/view/NubiaVolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_6

    .line 808
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->collapse()V

    .line 810
    :cond_6
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 814
    .end local v4           #stream:I
    :cond_7
    if-eq p1, v9, :cond_8

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 818
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 820
    :cond_8
    return-void

    .line 706
    .end local v3           #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 708
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 709
    iput-boolean v8, p0, Landroid/view/NubiaVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 716
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_9

    .line 720
    const v5, 0x108048b

    invoke-direct {p0, v5, v11}, Landroid/view/NubiaVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 722
    :cond_9
    const v5, 0x1080490

    invoke-direct {p0, v5, v11}, Landroid/view/NubiaVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 733
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 734
    add-int/lit8 v1, v1, 0x1

    .line 735
    goto/16 :goto_0

    .line 743
    :sswitch_4
    iget-object v5, p0, Landroid/view/NubiaVolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 745
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 746
    iput-boolean v8, p0, Landroid/view/NubiaVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 757
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 758
    add-int/lit8 v1, v1, 0x1

    .line 759
    goto/16 :goto_0

    .line 763
    :sswitch_6
    sget-boolean v5, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "NubiaVolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 794
    .restart local v3       #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    :cond_a
    iget-object v5, v3, Landroid/view/NubiaVolumePanel$StreamControl;->nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/NubiaVolumeBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    move v4, p1

    .line 802
    goto/16 :goto_2

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 913
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "NubiaVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    if-ne p2, v1, :cond_2

    .line 915
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 916
    sget-object v3, Landroid/view/NubiaVolumePanel;->STREAMS:[Landroid/view/NubiaVolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 917
    .local v2, streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    iget v3, v2, Landroid/view/NubiaVolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 918
    iput-boolean v1, v2, Landroid/view/NubiaVolumePanel$StreamResources;->show:Z

    .line 919
    if-nez v1, :cond_1

    iget v3, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 920
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    .end local v2           #streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 914
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 915
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 913
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Landroid/view/NubiaVolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1107
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 843
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 844
    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 845
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 843
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 849
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 850
    return-void

    .line 849
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 1110
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1111
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/NubiaVolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1112
    check-cast v0, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 1117
    .local v0, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    iget v2, v0, Landroid/view/NubiaVolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1118
    invoke-direct {p0, v3}, Landroid/view/NubiaVolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1121
    .end local v0           #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 649
    sget-boolean v0, Landroid/view/NubiaVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "NubiaVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget v0, p0, Landroid/view/NubiaVolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 654
    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel;->reorderSliders(I)V

    .line 656
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/NubiaVolumePanel;->onShowVolumeChanged(II)V

    .line 657
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/view/NubiaVolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 661
    invoke-virtual {p0, v3}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 662
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p0, v3}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 667
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 668
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->onStopSounds()V

    .line 671
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 672
    invoke-virtual {p0, v4}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/NubiaVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 673
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->resetTimeout()V

    .line 674
    return-void

    .line 657
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .parameter "flags"

    .prologue
    const/16 v1, 0xb

    .line 638
    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 612
    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 634
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/NubiaVolumePanel;->postMuteChanged(II)V

    .line 635
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 619
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/NubiaVolumePanel;->postVolumeChanged(II)V

    .line 620
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 624
    :cond_0
    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 626
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->createSliders()V

    .line 628
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 630
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 596
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 585
    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 586
    :cond_0
    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 588
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->createSliders()V

    .line 590
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 592
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-virtual {p0, v1}, Landroid/view/NubiaVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 575
    :cond_0
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 577
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel;->createSliders()V

    .line 579
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NubiaVolumePanel;->removeMessages(I)V

    .line 581
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/NubiaVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/view/NubiaVolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 363
    invoke-virtual {p0}, Landroid/view/NubiaVolumePanel;->updateStates()V

    .line 364
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 566
    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 567
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 568
    iget-object v3, p0, Landroid/view/NubiaVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/NubiaVolumePanel$StreamControl;

    .line 569
    .local v2, sc:Landroid/view/NubiaVolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/NubiaVolumePanel;->updateSlider(Landroid/view/NubiaVolumePanel$StreamControl;)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v2           #sc:Landroid/view/NubiaVolumePanel$StreamControl;
    :cond_0
    return-void
.end method
