.class Lcom/android/internal/policy/impl/SmartFaceManager$8;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNodeForSmartFace(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->val$enable:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const-string v1, "1"

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->writeGloveTouchForSmartFace(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1600(Lcom/android/internal/policy/impl/SmartFaceManager;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const-string v1, "2"

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->writeGloveTouchForSmartFace(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1600(Lcom/android/internal/policy/impl/SmartFaceManager;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isAutoFingerEnable()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const-string v1, "3"

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->writeGloveTouchForSmartFace(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1600(Lcom/android/internal/policy/impl/SmartFaceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$8;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    const-string v1, "0"

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->writeGloveTouchForSmartFace(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1600(Lcom/android/internal/policy/impl/SmartFaceManager;Ljava/lang/String;)V

    goto :goto_0
.end method
