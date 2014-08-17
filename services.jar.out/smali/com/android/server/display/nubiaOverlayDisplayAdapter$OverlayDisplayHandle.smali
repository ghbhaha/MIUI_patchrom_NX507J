.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mHeight:I

.field private final mLeftOrRight:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mWidth:I

.field private mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

.field private final rate:D

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Ljava/lang/String;IIIILjava/lang/String;D)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "width"
    .parameter "height"
    .parameter "densityDpi"
    .parameter "gravity"
    .parameter "leftOrRight"
    .parameter "rate"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 459
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 382
    iput-object p2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 383
    iput p3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 384
    iput p4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 385
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    .line 386
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 387
    iput-object p7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    .line 388
    iput-wide p8, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    .line 390
    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    return-wide v0
.end method


# virtual methods
.method public dismissLocked()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 439
    .local v0, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 440
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    .line 442
    .end local v0           #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public onSetRotated(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z
    invoke-static {v0, p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$102(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Z)Z

    .line 427
    return-void
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;F)V
    .locals 10
    .parameter "surfaceTexture"
    .parameter "refreshRate"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v9

    monitor-enter v9

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 403
    .local v2, displayToken:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iget v7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    move v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILandroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    .line 405
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 406
    monitor-exit v9

    .line 407
    return-void

    .line 406
    .end local v2           #displayToken:Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowDestroyed()V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "OverlayDisplayAdapter"

    const-string v2, "update onWindowDestroyed()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->clearSurfaceTextureLocked()V

    .line 416
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
