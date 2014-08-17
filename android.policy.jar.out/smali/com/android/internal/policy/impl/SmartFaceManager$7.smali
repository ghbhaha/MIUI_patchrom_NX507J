.class Lcom/android/internal/policy/impl/SmartFaceManager$7;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;->dealGLoveNode(Z)V
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
    .line 395
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$7;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$7;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$7;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$7;->val$enable:Z

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->enableGloveTouch(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1500(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V

    .line 399
    return-void
.end method
