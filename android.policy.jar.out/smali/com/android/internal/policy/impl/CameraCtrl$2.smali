.class Lcom/android/internal/policy/impl/CameraCtrl$2;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CameraCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CameraCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CameraCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/CameraCtrl$2;->this$0:Lcom/android/internal/policy/impl/CameraCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl$2;->this$0:Lcom/android/internal/policy/impl/CameraCtrl;

    #getter for: Lcom/android/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CameraCtrl;->access$100(Lcom/android/internal/policy/impl/CameraCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CameraCtrl$2;->this$0:Lcom/android/internal/policy/impl/CameraCtrl;

    #getter for: Lcom/android/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CameraCtrl;->access$000(Lcom/android/internal/policy/impl/CameraCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/CameraCtrl$2;->this$0:Lcom/android/internal/policy/impl/CameraCtrl;

    #calls: Lcom/android/internal/policy/impl/CameraCtrl;->startCamera()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/CameraCtrl;->access$200(Lcom/android/internal/policy/impl/CameraCtrl;)V

    .line 51
    return-void
.end method
