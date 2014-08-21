.class Landroid/os/nubia/breathlight/BreathinglightService$1;
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
.method constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$1;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService$1;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/os/nubia/breathlight/BreathinglightService;->setBrightnessJNI(II)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
