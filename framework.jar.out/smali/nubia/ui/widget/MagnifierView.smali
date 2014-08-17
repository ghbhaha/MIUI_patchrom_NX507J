.class public Lnubia/ui/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field static final PADDING_LEFT:I = 0xb

.field static final PADDING_TOP:I = 0x2

.field private static sHeight:I

.field private static sRadius:I

.field private static sWidth:I


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mClipPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/View;

.field private mDstRect:Landroid/graphics/Rect;

.field private mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

.field private mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mUpdateDrawingCache:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "anchorView"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/ui/widget/MagnifierView;->initDrawable(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->initPaintFlagsDrawFilter()V

    .line 44
    invoke-direct {p0}, Lnubia/ui/widget/MagnifierView;->initRect()V

    .line 45
    iput-object p1, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 46
    return-void
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x108046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, 0x108046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lnubia/ui/widget/MagnifierView;->sHeight:I

    .line 53
    iget-object v1, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lnubia/ui/widget/MagnifierView;->sWidth:I

    .line 54
    return-void
.end method

.method private initPaintFlagsDrawFilter()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 58
    return-void
.end method

.method private initRect()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lnubia/ui/widget/MagnifierView;->sWidth:I

    sget v2, Lnubia/ui/widget/MagnifierView;->sHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 64
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xb

    sput v0, Lnubia/ui/widget/MagnifierView;->sRadius:I

    .line 65
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    sget v1, Lnubia/ui/widget/MagnifierView;->sRadius:I

    add-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    sget v2, Lnubia/ui/widget/MagnifierView;->sRadius:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lnubia/ui/widget/MagnifierView;->sRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 66
    return-void
.end method

.method private takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "activity"

    .prologue
    .line 116
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    .line 118
    :cond_0
    iget-boolean v0, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 120
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 123
    :cond_1
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 126
    :cond_2
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Landroid/app/Activity;

    .line 109
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0, v0}, Lnubia/ui/widget/MagnifierView;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 111
    :cond_0
    const-string v1, "MagnifierView"

    const-string/jumbo v2, "takeScreenShot param:context not instanceof Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public notifyUpdateDrawingCache()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/ui/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 104
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 75
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnubia/ui/widget/MagnifierView;->takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, screenShotBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 81
    .local v0, saveCount:I
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 82
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 83
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 87
    .end local v0           #saveCount:I
    .end local v1           #screenShotBmp:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lnubia/ui/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 88
    iget-object v2, p0, Lnubia/ui/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/ui/widget/MagnifierView;->mDecorView:Landroid/view/View;

    .line 134
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    sget v1, Lnubia/ui/widget/MagnifierView;->sHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 71
    return-void
.end method

.method public setShowRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "srcRect"

    .prologue
    .line 99
    iget-object v0, p0, Lnubia/ui/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    return-void
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lnubia/ui/widget/MagnifierView;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lnubia/ui/widget/MagnifierView;->sWidth:I

    return v0
.end method
