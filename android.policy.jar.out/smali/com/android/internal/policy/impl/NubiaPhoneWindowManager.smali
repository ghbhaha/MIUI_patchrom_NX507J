.class Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;
.super Ljava/lang/Object;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAntiMisOperationCtrl:Lcom/android/internal/policy/impl/AntiMisOperationCtrl;

.field private mBreathingLightCtrl:Lcom/android/internal/policy/impl/BreathingLightCtrl;

.field private mCameraCtrl:Lcom/android/internal/policy/impl/CameraCtrl;

.field private mContext:Landroid/content/Context;

.field private mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDoubleClickScreenOnCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

.field private mFactoryTestDisableKeys:Lcom/android/internal/policy/impl/FactoryTestDisableKeys;

.field private mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

.field private mPaoFenApplicationCtrl:Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

.field private mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShutdownAnimationCtrl:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

.field private mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

.field private mSmartFaceCtrl:Lcom/android/internal/policy/impl/SmartFaceManager;

.field private mTouchHomeLightCtrl:Lcom/android/internal/policy/impl/TouchHomeLightCtrl;

.field private mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .parameter "manager"
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 71
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 73
    iput-object p3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 74
    iput-object p4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->initCtrls()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCtrls()V
    .locals 4

    .prologue
    .line 81
    new-instance v1, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mShutdownAnimationCtrl:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mShutdownAnimationCtrl:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.nubia.wake.gesture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenOnCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    .line 96
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenOnCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenOnCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/android/internal/policy/impl/FactoryTestDisableKeys;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/FactoryTestDisableKeys;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcom/android/internal/policy/impl/FactoryTestDisableKeys;

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcom/android/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcom/android/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/AntiMisOperationCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/AntiMisOperationCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcom/android/internal/policy/impl/AntiMisOperationCtrl;

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcom/android/internal/policy/impl/AntiMisOperationCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/android/internal/policy/impl/BreathingLightCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/BreathingLightCtrl;-><init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mBreathingLightCtrl:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mBreathingLightCtrl:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/android/internal/policy/impl/SingleUICtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/SingleUICtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.nubia.smartface.feature"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 127
    .local v0, smartFaceEnable:Z
    if-eqz v0, :cond_1

    .line 128
    new-instance v1, Lcom/android/internal/policy/impl/SmartFaceManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcom/android/internal/policy/impl/SmartFaceManager;

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/TouchHomeLightCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/TouchHomeLightCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mTouchHomeLightCtrl:Lcom/android/internal/policy/impl/TouchHomeLightCtrl;

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mTouchHomeLightCtrl:Lcom/android/internal/policy/impl/TouchHomeLightCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPaoFenApplicationCtrl:Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;

    .line 147
    new-instance v1, Lcom/android/internal/policy/impl/CameraCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/CameraCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcom/android/internal/policy/impl/CameraCtrl;

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcom/android/internal/policy/impl/CameraCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcom/android/internal/policy/impl/CameraCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method static isCameraViewOnSafeMode(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .parameter "mTopFullscreenOpaqueWindowState"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/internal/policy/impl/CameraOnSafeModeCtrl;->isCameraViewOnSafeMode(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method static isFinishKeyBeforDispatching(J)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 213
    const-wide/high16 v0, -0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishKeyBeforQueueing(I)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 196
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishRotationForOrientationLw(I)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 228
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private observeSetting()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 156
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ISettingListener;

    .line 157
    .local v2, listener:Lcom/android/internal/policy/impl/ISettingListener;
    new-instance v3, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/internal/policy/impl/ISettingListener;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->observe()V

    goto :goto_0

    .line 159
    .end local v2           #listener:Lcom/android/internal/policy/impl/ISettingListener;
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->observeSetting()V

    .line 163
    return-void
.end method

.method interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 8
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 201
    const-wide/high16 v2, -0x8000

    .line 202
    .local v2, result:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;

    .line 203
    .local v0, handler:Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 205
    const-wide/high16 v6, -0x8000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    move-wide v4, v2

    .line 209
    .end local v0           #handler:Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    .end local v2           #result:J
    .local v4, result:J
    :goto_0
    return-wide v4

    .end local v4           #result:J
    .restart local v2       #result:J
    :cond_1
    move-wide v4, v2

    .end local v2           #result:J
    .restart local v4       #result:J
    goto :goto_0
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 5
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 185
    .local v2, result:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;

    .line 186
    .local v0, handler:Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v2

    .line 188
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 192
    .end local v0           #handler:Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 3
    .parameter "event"
    .parameter "keyCode"
    .parameter "keyguardOn"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 247
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 251
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method rotationForOrientationLw(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    .line 218
    const/4 v0, -0x1

    .line 219
    .local v0, currentOrientation:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcom/android/internal/policy/impl/SmartFaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->needRotationScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->changeOrientationSensor(II)V

    .line 225
    return v0
.end method

.method screenTurnedOff(I)V
    .locals 1
    .parameter "why"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUICtrl;->disableSingleUI()V

    .line 180
    return-void
.end method

.method screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 1
    .parameter "screenOnListener"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SingleUICtrl;->enableSingleUI()V

    .line 176
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "clazzName"
    .parameter "pkgName"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPaoFenApplicationCtrl:Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PaoFenApplicationCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method updateSettings()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 172
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ISettingListener;

    .line 170
    .local v0, handler:Lcom/android/internal/policy/impl/ISettingListener;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/ISettingListener;->updateSettings()V

    goto :goto_0
.end method
