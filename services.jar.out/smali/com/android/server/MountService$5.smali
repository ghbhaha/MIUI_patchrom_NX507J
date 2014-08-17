.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$volume:Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/MountService$5;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 879
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 880
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService$5;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/server/MountService$5;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/MountService$5;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 884
    iget-object v3, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 885
    .local v1, pVolume:Landroid/os/storage/StorageVolume;
    iget-object v3, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$5;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/MountService;->compareVolumeSize(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    iget-object v3, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/16 v4, 0x276

    #calls: Lcom/android/server/MountService;->sendPrimaryStorageIntent(I)V
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v1           #pVolume:Landroid/os/storage/StorageVolume;
    .end local v2           #rc:I
    :cond_1
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to mount media on insertion"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
