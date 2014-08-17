.class Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1000(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/nubiaOverlayDisplayWindow;

    move-result-object v0

    .line 465
    .local v0, window:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    invoke-static {v1, v3}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1002(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .line 466
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    .line 470
    const/4 v0, 0x0

    .line 472
    :cond_0
    return-void

    .line 466
    .end local v0           #window:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
