.class Lcom/android/internal/policy/impl/SmartFaceManager$10;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;->dismissSmartFaceMain()V
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
    .line 713
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$10;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$10;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dismissSmartFaceView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1800(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    .line 717
    return-void
.end method
