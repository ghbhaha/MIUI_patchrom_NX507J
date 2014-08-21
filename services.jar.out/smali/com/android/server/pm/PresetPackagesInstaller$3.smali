.class Lcom/android/server/pm/PresetPackagesInstaller$3;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PresetPackagesInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    const/4 v3, 0x0

    .line 182
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInstalled packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | returnCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$200(Lcom/android/server/pm/PresetPackagesInstaller;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$200(Lcom/android/server/pm/PresetPackagesInstaller;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I
    invoke-static {v1}, Lcom/android/server/pm/PresetPackagesInstaller;->access$300(Lcom/android/server/pm/PresetPackagesInstaller;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/pm/PresetPackagesInstaller;->access$200(Lcom/android/server/pm/PresetPackagesInstaller;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I
    invoke-static {v2}, Lcom/android/server/pm/PresetPackagesInstaller;->access$300(Lcom/android/server/pm/PresetPackagesInstaller;)I

    move-result v2

    #calls: Lcom/android/server/pm/PresetPackagesInstaller;->onProgress(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PresetPackagesInstaller;->access$400(Lcom/android/server/pm/PresetPackagesInstaller;II)V

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #setter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstallTotal:I
    invoke-static {v0, v3}, Lcom/android/server/pm/PresetPackagesInstaller;->access$302(Lcom/android/server/pm/PresetPackagesInstaller;I)I

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstalledCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$200(Lcom/android/server/pm/PresetPackagesInstaller;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerHelper:Lcom/android/server/pm/InstallerHelper;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$500(Lcom/android/server/pm/PresetPackagesInstaller;)Lcom/android/server/pm/InstallerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/InstallerHelper;->updateDatabase()V

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$3;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #calls: Lcom/android/server/pm/PresetPackagesInstaller;->onPackageInstallFinish()V
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$600(Lcom/android/server/pm/PresetPackagesInstaller;)V

    goto :goto_0
.end method
