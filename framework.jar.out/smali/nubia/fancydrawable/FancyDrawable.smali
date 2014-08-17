.class public abstract Lnubia/fancydrawable/FancyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FancyDrawable.java"

# interfaces
.implements Lnubia/fancydrawable/FancyDrawableListener;


# instance fields
.field protected mAvailableHeight:I

.field protected mAvailableWidth:I

.field protected mHandler:Landroid/os/Handler;

.field protected mID:Ljava/lang/String;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 11
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 12
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 22
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 32
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    sub-int v0, p3, p1

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 69
    sub-int v0, p4, p2

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 37
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 51
    iput-object p1, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->startToRun()V

    .line 53
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 46
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 47
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    .line 85
    iput p2, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    .line 86
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 41
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 42
    return-void
.end method

.method public startToRun()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "nubia.fancydrawable.FancyDrawable"

    return-object v0
.end method
