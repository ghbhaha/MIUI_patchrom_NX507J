.class public Lcom/android/internal/policy/impl/CameraOnSafeModeCtrl;
.super Ljava/lang/Object;
.source "CameraOnSafeModeCtrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCameraViewOnSafeMode(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .parameter "mTopFullscreenOpaqueWindowState"

    .prologue
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_1

    .line 12
    :cond_0
    :goto_0
    return v0

    .line 9
    :cond_1
    const-string v1, "com.android.camera"

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    const/4 v0, 0x1

    goto :goto_0
.end method
