.class final Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightPointerEventListener;
.super Ljava/lang/Object;
.source "BreathingLightCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BreathingLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreathLightPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/BreathingLightCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightPointerEventListener;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/BreathingLightCtrl;Lcom/android/internal/policy/impl/BreathingLightCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightPointerEventListener;-><init>(Lcom/android/internal/policy/impl/BreathingLightCtrl;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "motionEvent"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 59
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightPointerEventListener;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    #getter for: Lcom/android/internal/policy/impl/BreathingLightCtrl;->mBreathLightHandler:Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/BreathingLightCtrl;->access$100(Lcom/android/internal/policy/impl/BreathingLightCtrl;)Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightPointerEventListener;->this$0:Lcom/android/internal/policy/impl/BreathingLightCtrl;

    #getter for: Lcom/android/internal/policy/impl/BreathingLightCtrl;->mBreathLightHandler:Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/BreathingLightCtrl;->access$100(Lcom/android/internal/policy/impl/BreathingLightCtrl;)Lcom/android/internal/policy/impl/BreathingLightCtrl$BreathLightHandler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
