.class Lcom/android/internal/policy/impl/ShutdownAnimationCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownAnimationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl$1;->this$0:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.ztemt.shutdown.startanimation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl$1;->this$0:Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationStart:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->access$002(Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;Z)Z

    .line 19
    :cond_0
    return-void
.end method
