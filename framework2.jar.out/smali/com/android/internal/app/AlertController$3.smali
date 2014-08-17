.class Lcom/android/internal/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->createNubiaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$animationSwitch:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    iput p2, p0, Lcom/android/internal/app/AlertController$3;->val$animationSwitch:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 304
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 293
    iget v0, p0, Lcom/android/internal/app/AlertController$3;->val$animationSwitch:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
