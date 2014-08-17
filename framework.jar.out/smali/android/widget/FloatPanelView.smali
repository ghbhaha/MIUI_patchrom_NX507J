.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaCursorController"


# instance fields
.field private mBottomOffset:I

.field private mOnTop:Z

.field private mPos:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FloatPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FloatPanelView;->mOnTop:Z

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x105009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FloatPanelView;->mTopOffset:I

    .line 33
    const v1, 0x105009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FloatPanelView;->mBottomOffset:I

    .line 34
    const v1, 0x105009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 40
    const v11, 0x1020382

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 41
    .local v5, arrowUpView:Landroid/view/View;
    const v11, 0x1020383

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, arrowDownView:Landroid/view/View;
    const v11, 0x102037a

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, actionPanel:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const-string v11, "NubiaCursorController"

    const-string v12, "can\'t find view"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 47
    :cond_1
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 48
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-boolean v11, p0, Landroid/widget/FloatPanelView;->mOnTop:Z

    if-eqz v11, :cond_4

    move-object v9, v1

    .line 50
    .local v9, showArrow:Landroid/view/View;
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    move-object v10, v9

    .line 51
    check-cast v10, Landroid/widget/ImageView;

    .line 52
    .local v10, showImageView:Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 53
    .local v6, arrowWidth:I
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 54
    .local v2, arrowHeight:I
    iget v11, p0, Landroid/widget/FloatPanelView;->mPos:I

    div-int/lit8 v12, v6, 0x2

    sub-int v3, v11, v12

    .line 55
    .local v3, arrowPosX:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, p0, Landroid/widget/FloatPanelView;->mBottomOffset:I

    sub-int v4, v11, v12

    .line 56
    .local v4, arrowPosY:I
    const/4 v8, 0x0

    .line 57
    .local v8, panelPosY:I
    const v7, 0x1080715

    .line 58
    .local v7, panelBgResId:I
    iget v11, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v3, v11, :cond_5

    .line 59
    iget v11, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int v3, v11, v12

    .line 64
    :cond_2
    :goto_2
    iget-boolean v11, p0, Landroid/widget/FloatPanelView;->mOnTop:Z

    if-nez v11, :cond_3

    .line 65
    iget v11, p0, Landroid/widget/FloatPanelView;->mTopOffset:I

    sub-int v8, v2, v11

    .line 66
    const/4 v4, 0x0

    .line 67
    const v7, 0x108070d

    .line 69
    :cond_3
    add-int v11, v3, v6

    add-int v12, v4, v2

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v0, v11, v8, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 72
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v2           #arrowHeight:I
    .end local v3           #arrowPosX:I
    .end local v4           #arrowPosY:I
    .end local v6           #arrowWidth:I
    .end local v7           #panelBgResId:I
    .end local v8           #panelPosY:I
    .end local v9           #showArrow:Landroid/view/View;
    .end local v10           #showImageView:Landroid/widget/ImageView;
    :cond_4
    move-object v9, v5

    .line 49
    goto :goto_1

    .line 61
    .restart local v2       #arrowHeight:I
    .restart local v3       #arrowPosX:I
    .restart local v4       #arrowPosY:I
    .restart local v6       #arrowWidth:I
    .restart local v7       #panelBgResId:I
    .restart local v8       #panelPosY:I
    .restart local v9       #showArrow:Landroid/view/View;
    .restart local v10       #showImageView:Landroid/widget/ImageView;
    :cond_5
    sub-int v11, p4, v6

    iget v12, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int/2addr v11, v12

    if-le v3, v11, :cond_2

    .line 62
    sub-int v11, p4, v6

    iget v12, p0, Landroid/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int v3, v11, v12

    goto :goto_2
.end method

.method public setArrow(Z)V
    .locals 1
    .parameter "onTop"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/FloatPanelView;->mOnTop:Z

    if-ne v0, p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean p1, p0, Landroid/widget/FloatPanelView;->mOnTop:Z

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public setArrowPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 82
    iget v0, p0, Landroid/widget/FloatPanelView;->mPos:I

    if-ne v0, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput p1, p0, Landroid/widget/FloatPanelView;->mPos:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
