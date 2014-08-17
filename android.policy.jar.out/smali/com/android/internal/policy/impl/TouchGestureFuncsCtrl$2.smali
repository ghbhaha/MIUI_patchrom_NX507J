.class Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->enableTouchGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;->this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;->this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    #getter for: Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->access$300(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;

    move-result-object v0

    invoke-static {p1, v0}, Lnubia/gesture/touch/GestureManager;->touch(Landroid/view/MotionEvent;Lnubia/gesture/touch/GestureListener;)Z

    .line 146
    return-void
.end method
