.class Lcom/android/server/pm/PresetPackageInstallerMonitor;
.super Ljava/lang/Object;
.source "PresetPackageInstallerMonitor.java"

# interfaces
.implements Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mPresetInstaller:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->DEBUG:Z

    .line 9
    const-string v0, "PresetAppInstaller"

    iput-object v0, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->TAG:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public onPackageInstallFinish()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "PresetAppInstaller"

    const-string v1, "onPackageInstallFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mPresetInstaller:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-virtual {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->hideInstallingMessages()V

    .line 40
    return-void
.end method

.method public onPackageInstallStart(I)V
    .locals 7
    .parameter "total"

    .prologue
    const/4 v6, 0x1

    .line 30
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageInstallStart total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mPresetInstaller:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040417

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public onProgress(II)V
    .locals 6
    .parameter "installedCount"
    .parameter "total"

    .prologue
    .line 22
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageInstallStart total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | installedCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mPresetInstaller:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040417

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method setInstaller(Lcom/android/server/pm/PresetPackagesInstaller;)V
    .locals 0
    .parameter "installer"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/pm/PresetPackageInstallerMonitor;->mPresetInstaller:Lcom/android/server/pm/PresetPackagesInstaller;

    .line 18
    return-void
.end method
