.class Landroid/os/nubia/breathlight/BreathinglightService$4;
.super Landroid/content/BroadcastReceiver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/nubia/breathlight/BreathinglightService;->notificationReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/nubia/breathlight/BreathinglightService;


# direct methods
.method constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$4;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 558
    const/4 v3, 0x0

    .line 559
    .local v3, notiDeleteFlag:Z
    const/4 v4, 0x0

    .line 561
    .local v4, pkg:Ljava/lang/String;
    :try_start_0
    const-string v5, "Keyguard_delete"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 562
    const-string v5, "pkg"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 567
    :goto_0
    const-string v5, "BreathinglightService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationReceiver pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " notiDeleteFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-nez v4, :cond_0

    .line 578
    :goto_1
    return-void

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    .line 572
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$4;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1100(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 573
    .local v1, deleteMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$4;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1100(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 575
    .end local v1           #deleteMsg:Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$4;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1100(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 576
    .local v0, addMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$4;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1100(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
