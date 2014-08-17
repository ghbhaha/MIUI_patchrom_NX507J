.class Lcom/android/server/display/nubiaOverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 421
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->X:I
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$002(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 426
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->Y:I
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$102(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->down:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->upnum:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->move:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->down:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$202(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 458
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->upnum:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$902(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 459
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->move:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$502(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->down:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->upnum:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->move:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->down:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$202(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 464
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->upnum:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$902(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 465
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->move:I
    invoke-static {v0, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$502(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)I

    .line 466
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->clickSwitchLock()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 468
    :cond_2
    return v3

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$208(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    .line 431
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mStartX:F
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$302(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)F

    .line 432
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mStartY:F
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$402(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)F

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$508(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    .line 436
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const/4 v1, 0x2

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowPosition(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)V

    .line 437
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->move:I
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMoveStatusView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10805d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$908(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowPosition(I)V
    invoke-static {v0, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMoveStatusView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10805d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMoveStatusView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10805d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
