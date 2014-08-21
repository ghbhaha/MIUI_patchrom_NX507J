.class Lcom/android/server/display/nubiaOverlayDisplayWindow$7;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {v0, p3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1824(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)F

    .line 854
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 855
    const/4 v0, 0x1

    return v0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {v0, p4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1824(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)F

    goto :goto_0
.end method
