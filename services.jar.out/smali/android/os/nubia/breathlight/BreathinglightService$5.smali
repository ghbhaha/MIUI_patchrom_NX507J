.class Landroid/os/nubia/breathlight/BreathinglightService$5;
.super Landroid/content/BroadcastReceiver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/nubia/breathlight/BreathinglightService;
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
    .line 671
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, brightnessMode:I
    :try_start_0
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/os/nubia/breathlight/BreathinglightService;->access$000(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_light_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 683
    :goto_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    if-ne v0, v5, :cond_0

    .line 685
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v2, v6}, Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightAuto(Z)V

    .line 692
    :cond_0
    :goto_1
    return-void

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "BreathinglightService"

    const-string v3, "mScreenOnOffReceiver Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    if-ne v0, v5, :cond_0

    .line 689
    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v2, v5}, Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightAuto(Z)V

    goto :goto_1
.end method
