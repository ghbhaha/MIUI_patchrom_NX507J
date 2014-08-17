.class public Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;
.super Ljava/lang/Object;
.source "MultiFingerSwitchAppCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mChangeBySwitch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppIndex:I

.field private mIsThreeFingerSlideEnable:Z

.field mLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedUpdate:Z

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .parameter "manager"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 23
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 123
    new-instance v1, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl$1;-><init>(Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 30
    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, launchFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 65
    const/4 v0, 0x1

    .line 68
    .local v0, canBeAdd:Z
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 72
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 76
    :cond_1
    const-string v1, "cn.nubia.setupwizard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 80
    :cond_2
    return v0
.end method

.method private getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 51
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 53
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 54
    .restart local v0       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 55
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 56
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 61
    .end local v2           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private isHomeApplication(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, bHome:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 89
    .local v1, homeInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method private switchToNewApp(Z)V
    .locals 8
    .parameter "bNext"

    .prologue
    const/4 v7, 0x1

    .line 179
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 181
    .local v1, newTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 185
    .local v2, opts:Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v4, 0x10a005b

    const v5, 0x10a005e

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 201
    :goto_1
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_2

    .line 202
    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v4, 0x10a0002

    const v5, 0x10a0003

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method private updateRecentAppSwitchList()V
    .locals 7

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 121
    :cond_1
    return-void

    .line 107
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 108
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 110
    .local v2, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v2, :cond_4

    .line 107
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 114
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method doSwitchApp(Z)V
    .locals 5
    .parameter "bNext"

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 146
    .local v0, currentRunApp:Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v0, :cond_0

    .line 148
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    if-eqz v3, :cond_2

    .line 149
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 150
    iput v4, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->updateRecentAppSwitchList()V

    .line 153
    :cond_2
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, packageName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    .local v1, length:I
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 164
    if-nez p1, :cond_4

    .line 165
    iget v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_0

    .line 167
    iget v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 174
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->switchToNewApp(Z)V

    goto :goto_0

    .line 169
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    if-eqz v3, :cond_0

    .line 171
    iget v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    goto :goto_1
.end method

.method setEnable(Z)V
    .locals 1
    .parameter "IsThreeFingerSlideEnable"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 43
    return-void
.end method
