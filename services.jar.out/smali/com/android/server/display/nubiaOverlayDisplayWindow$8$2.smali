.class Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 891
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 892
    .local v0, doubleTap:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 894
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 895
    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 900
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 901
    .local v0, singleTap:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 902
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 903
    return v4
.end method
