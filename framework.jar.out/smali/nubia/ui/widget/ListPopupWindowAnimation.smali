.class public Lnubia/ui/widget/ListPopupWindowAnimation;
.super Ljava/lang/Object;
.source "ListPopupWindowAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ALPHA_ANIMATION_TIME:I = 0x96

.field private static final ANIMATION_TIME:I = 0xfa


# instance fields
.field private mBezierView:Lnubia/ui/widget/BezierView;

.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lnubia/ui/widget/BezierView;)V
    .locals 0
    .parameter "contentView"
    .parameter "bezierView"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mContentView:Landroid/view/View;

    .line 27
    iput-object p2, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    .line 28
    return-void
.end method

.method private createAnimation(Landroid/view/View;)V
    .locals 14
    .parameter "contentView"

    .prologue
    const-wide/16 v12, 0x96

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 37
    const/high16 v8, 0x3f80

    .line 38
    .local v8, pivotY:F
    iget-object v2, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v2}, Lnubia/ui/widget/BezierView;->isOnTop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const/4 v8, 0x0

    .line 41
    :cond_0
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 42
    .local v11, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    move v2, v1

    move v4, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 45
    .local v0, sa:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnubia/ui/util/UiUtils;->getAnimationSwitch(Landroid/content/Context;)I

    move-result v10

    .line 47
    .local v10, animationSwitch:I
    if-nez v10, :cond_1

    .line 48
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v2, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 58
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    .local v9, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {p1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void

    .line 51
    .end local v9           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Lnubia/ui/widget/BezierView;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 85
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Lnubia/ui/widget/BezierView;->continueBezierAnimation()V

    .line 86
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 92
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 79
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Lnubia/ui/widget/BezierView;->startBezierAnimation()V

    .line 80
    return-void
.end method

.method public setContentViewAndBezierView(Landroid/view/View;Lnubia/ui/widget/BezierView;)V
    .locals 0
    .parameter "contentView"
    .parameter "bezierView"

    .prologue
    .line 31
    iput-object p1, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mContentView:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    .line 33
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lnubia/ui/widget/ListPopupWindowAnimation;->createAnimation(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowAnimation;->mBezierView:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Lnubia/ui/widget/BezierView;->stopRunning()V

    .line 71
    return-void
.end method
