.class Lcom/android/server/display/nubiaOverlayDisplayWindow$8;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->registerDoubleTouchListener(Landroid/view/View;Lcom/android/server/display/OnDoubleTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DOUBLE_TOUCH_TIME:I = 0x12c

.field private static final MSG_SINGLE_TOUCH:I = 0x5


# instance fields
.field private handler:Landroid/os/Handler;

.field private singleGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

.field final synthetic val$listener:Lcom/android/server/display/OnDoubleTouchListener;

.field private waitDouble:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Lcom/android/server/display/OnDoubleTouchListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iput-object p2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->waitDouble:Z

    .line 876
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->handler:Landroid/os/Handler;

    .line 888
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->singleGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow$8;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 909
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 910
    const/4 v2, 0x0

    .line 921
    :goto_0
    return v2

    .line 912
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 913
    .local v0, action:I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v6}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 918
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->singleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 921
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
