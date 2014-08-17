.class Landroid/os/nubia/breathlight/BreathinglightService$2;
.super Landroid/os/Handler;
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
    .line 494
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 497
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->handleNotificationAdd(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightService;->access$900(Landroid/os/nubia/breathlight/BreathinglightService;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$2;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->handleNotificationDel(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1000(Landroid/os/nubia/breathlight/BreathinglightService;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
