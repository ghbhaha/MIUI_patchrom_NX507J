.class Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;
.super Landroid/os/Handler;
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
    .line 876
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 879
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-interface {v0}, Lcom/android/server/display/OnDoubleTouchListener;->onSingleTouch()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 882
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-interface {v0}, Lcom/android/server/display/OnDoubleTouchListener;->onDoubleTouch()V

    goto :goto_0
.end method
