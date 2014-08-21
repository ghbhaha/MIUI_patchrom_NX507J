.class public Lcom/android/server/pm/PresetPackagesInstaller;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInstallTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallTotal:I

.field private mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

.field mInstallerMsgDialog:Landroid/app/ProgressDialog;

.field private mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->DEBUG:Z

    .line 33
    const-string v0, "PresetAppInstaller"

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v0, Lcom/android/server/pm/PresetPackagesInstaller$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PresetPackagesInstaller$3;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;)V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

    .line 44
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/android/server/pm/InstallerHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/InstallerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PresetPackagesInstaller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PresetPackagesInstaller;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PresetPackagesInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/PresetPackagesInstaller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/PresetPackagesInstaller;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PresetPackagesInstaller;->onProgress(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/InstallerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PresetPackagesInstaller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/pm/PresetPackagesInstaller;->onPackageInstallFinish()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PresetPackagesInstaller;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private enqueue(Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    .line 76
    return-void
.end method

.method private hideInstallingMessages()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PresetPackagesInstaller$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PresetPackagesInstaller$2;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method

.method private onPackageInstallFinish()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/server/pm/PresetPackagesInstaller;->hideInstallingMessages()V

    .line 177
    return-void
.end method

.method private onPackageInstallStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 168
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040417

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method private onProgress(II)V
    .locals 5
    .parameter "installedCount"
    .parameter "total"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040417

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private showInstallingMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PresetPackagesInstaller$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PresetPackagesInstaller$1;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public declared-synchronized preparePresetPackages()V
    .locals 9

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallerHelper;->getPresetPackages()Ljava/util/Set;

    move-result-object v8

    .line 53
    .local v8, packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    .line 54
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 57
    .local v7, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/InstallerHelper;->getPackageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, uri:Landroid/net/Uri;
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAll packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | installAll uri:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eqz v2, :cond_0

    .line 61
    const/16 v3, 0x40

    .line 62
    .local v3, flags:I
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/InstallerHelper;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    or-int/lit8 v3, v3, 0x2

    .line 65
    :cond_1
    new-instance v0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;

    iget-object v4, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mPackageInstallObserver:Landroid/content/pm/IPackageInstallObserver$Stub;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;Lcom/android/server/pm/PresetPackagesInstaller$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/PresetPackagesInstaller;->enqueue(Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #flags:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PresetPackagesInstaller;->onPackageInstallStart()V

    .line 68
    iget v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallerHelper;->updateDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startInstall()V
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;

    .line 80
    .local v1, task:Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 82
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
