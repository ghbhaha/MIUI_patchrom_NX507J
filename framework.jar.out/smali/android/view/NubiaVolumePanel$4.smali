.class Landroid/view/NubiaVolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "NubiaVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/NubiaVolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NubiaVolumePanel;


# direct methods
.method constructor <init>(Landroid/view/NubiaVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$4;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x6

    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Landroid/view/NubiaVolumePanel$4;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v1, p0, Landroid/view/NubiaVolumePanel$4;->this$0:Landroid/view/NubiaVolumePanel;

    iget-object v2, p0, Landroid/view/NubiaVolumePanel$4;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Landroid/view/NubiaVolumePanel$4;->this$0:Landroid/view/NubiaVolumePanel;

    #calls: Landroid/view/NubiaVolumePanel;->forceTimeout()V
    invoke-static {v1}, Landroid/view/NubiaVolumePanel;->access$200(Landroid/view/NubiaVolumePanel;)V

    goto :goto_0
.end method
