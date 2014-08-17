.class Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;
.super Landroid/os/Handler;
.source "BreathingLightCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BreathingLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BreathLightHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BreathingLightCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x28

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightStatus(II)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    #calls: Lcom/android/internal/policy/impl/BreathingLightCtrl;->turnButtonKeyLightOffDelay()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/BreathingLightCtrl;->access$200(Lcom/android/internal/policy/impl/BreathingLightCtrl;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    #getter for: Lcom/android/internal/policy/impl/BreathingLightCtrl;->buttonLightFlag:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/BreathingLightCtrl;->access$300(Lcom/android/internal/policy/impl/BreathingLightCtrl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x5

    invoke-static {v0, v2}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightStatus(II)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
