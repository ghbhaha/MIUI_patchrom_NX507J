.class Landroid/os/nubia/breathlight/BreathinglightService$2;
.super Landroid/content/BroadcastReceiver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/nubia/breathlight/BreathinglightService;->batteryConnectionReceiver()V
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
    .line 442
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 448
    .local v2, plugged:I
    const-string v4, "level"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 449
    .local v1, level:I
    const-string v4, "status"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 450
    .local v3, status:I
    const-string v4, "BreathinglightService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryConnectionReceiver plugged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " level:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-lez v2, :cond_1

    if-ne v3, v9, :cond_1

    .line 452
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-static {v4, v9}, Landroid/os/nubia/breathlight/BreathinglightService;->access$776(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 453
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightFlag(IZ)V
    invoke-static {v4, v9, v8}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;IZ)V

    .line 458
    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_2

    .line 459
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-static {v4, v8}, Landroid/os/nubia/breathlight/BreathinglightService;->access$776(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 472
    .end local v1           #level:I
    .end local v2           #plugged:I
    .end local v3           #status:I
    :cond_0
    :goto_1
    return-void

    .line 455
    .restart local v1       #level:I
    .restart local v2       #plugged:I
    .restart local v3       #status:I
    :cond_1
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v5, -0x3

    invoke-static {v4, v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$772(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 456
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightFlag(IZ)V
    invoke-static {v4, v9, v7}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;IZ)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v5, -0x2

    invoke-static {v4, v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$772(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 462
    if-lez v2, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/16 v4, 0x64

    if-lt v1, v4, :cond_4

    .line 463
    :cond_3
    const-string v4, "BreathinglightService"

    const-string v5, "charge completed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-static {v4, v10}, Landroid/os/nubia/breathlight/BreathinglightService;->access$776(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 465
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightFlag(IZ)V
    invoke-static {v4, v10, v8}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;IZ)V

    goto :goto_1

    .line 467
    :cond_4
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v5, -0x5

    invoke-static {v4, v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$772(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 468
    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->setBreathLightFlag(IZ)V
    invoke-static {v4, v10, v7}, Landroid/os/nubia/breathlight/BreathinglightService;->access$800(Landroid/os/nubia/breathlight/BreathinglightService;IZ)V

    goto :goto_1
.end method
