.class Lcom/android/internal/policy/impl/SmartFaceManager$5;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;->dealScreenNodeWhenScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->isFirstBootUp:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$900(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #setter for: Lcom/android/internal/policy/impl/SmartFaceManager;->isFirstBootUp:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$902(Lcom/android/internal/policy/impl/SmartFaceManager;Z)Z

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isAutoFingerEnable()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNode(Z)V
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1100(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    .line 367
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const-string v2, "1"

    const-string v3, "/data/tp/touch_mode"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/SmartFaceManager;->getScreenNodeMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 368
    .local v0, isInGloveMode:Z
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInGloveMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isSmartFaceEnable()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1200(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNodeForSmartFace(Z)V
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1300(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    .line 373
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNodeForSmartFace(Z)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1300(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    .line 381
    :cond_2
    :goto_1
    return-void

    .line 363
    .end local v0           #isInGloveMode:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNode(Z)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1100(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 377
    .restart local v0       #isInGloveMode:Z
    :cond_4
    if-eqz v0, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$5;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNodeForSmartFace(Z)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1300(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_1
.end method
