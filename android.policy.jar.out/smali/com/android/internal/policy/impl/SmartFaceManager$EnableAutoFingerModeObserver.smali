.class Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;
.super Landroid/database/ContentObserver;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableAutoFingerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    .line 1016
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1017
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1900(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1022
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "sensitive_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1025
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isAutoFingerEnable()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsAutoFingerMode:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2402(Lcom/android/internal/policy/impl/SmartFaceManager;Z)Z

    .line 1026
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isAutoFingerEnable()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v0

    .line 1031
    .local v0, enableFunction:Z
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnableFingerModeObserver onChange enableFunction ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-nez v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNode(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1100(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    .line 1038
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #setter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsAutoFingerMode:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2402(Lcom/android/internal/policy/impl/SmartFaceManager;Z)Z

    .line 1039
    return-void

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableAutoFingerModeObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNode(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1100(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0
.end method
