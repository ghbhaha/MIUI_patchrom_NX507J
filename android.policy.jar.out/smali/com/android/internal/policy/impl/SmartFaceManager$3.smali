.class Lcom/android/internal/policy/impl/SmartFaceManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;
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
    .line 188
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, state:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$500(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$500(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v3           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v4, "com.nubia.smartface.state.changed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, pkgName:Ljava/lang/String;
    const-string v4, "display"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 206
    .local v2, show:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->putAppViewMap(Ljava/lang/String;Z)V
    invoke-static {v4, v1, v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$600(Lcom/android/internal/policy/impl/SmartFaceManager;Ljava/lang/String;Z)V

    .line 207
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$500(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$500(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 210
    .end local v1           #pkgName:Ljava/lang/String;
    .end local v2           #show:Z
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager$3;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dealScreenNodeWhenScreenOn()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$700(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method
