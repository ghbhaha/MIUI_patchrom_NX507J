.class abstract Landroid/widget/NubiaCursorController$NubiaHandleView;
.super Landroid/view/View;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NubiaHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "NubiaCursorController"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field protected final mContainer:Landroid/widget/PopupWindow;

.field protected mContainerX:I

.field protected mContainerY:I

.field private mCursorController:Landroid/widget/NubiaCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableMark:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/Editor;

.field protected mHandleNoShadowHeight:I

.field protected mHandleNoShadowMinHeight:I

.field private mHandleRange:I

.field protected mHandleTypeOffset:I

.field protected mHotspotX:I

.field protected mIdealVerticalOffset:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field protected mLineHeight:I

.field protected mMarkHeightMatchHandleHeight:I

.field protected mMinHandleRatio:F

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mRatio:F

.field protected mTextView:Landroid/widget/TextView;

.field protected mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mType:I

.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter
    .parameter "editor"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 770
    iput-object p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 771
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 752
    iput v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLineHeight:I

    .line 754
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMinHandleRatio:F

    .line 755
    iput v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 756
    iput-boolean v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    .line 759
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 760
    iput v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 761
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    .line 762
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    .line 763
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    .line 772
    iput-object p2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    .line 773
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    .line 774
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 775
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleRange:I

    .line 776
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 777
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 778
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 779
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 780
    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 781
    iput-object p3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 782
    iput-object p4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 783
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10806cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    .line 784
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    .line 785
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowMinHeight:I

    .line 786
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMarkHeightMatchHandleHeight:I

    .line 787
    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowMinHeight:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMinHandleRatio:F

    .line 788
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateDrawable()V

    .line 789
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 792
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 793
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 794
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 795
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 796
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 800
    .local v3, now:J
    const/4 v0, 0x0

    .line 801
    .local v0, i:I
    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 802
    .local v2, index:I
    iget v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 803
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 804
    add-int/lit8 v0, v0, 0x1

    .line 805
    iget v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 808
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 810
    iget-object v5, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 812
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 815
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 816
    invoke-direct {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->addPositionToTouchUpFilter(I)V

    .line 817
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    .line 821
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 822
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 823
    return-void
.end method

.method public distance(FF)F
    .locals 2
    .parameter "xpos"
    .parameter "ypos"

    .prologue
    .line 826
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHandleNoShadowRealHeight()I
    .locals 2

    .prologue
    .line 832
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public abstract getHotspotLocationOnScreen([I)V
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->dismiss()V

    .line 840
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p0}, Landroid/widget/Editor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 841
    return-void
.end method

.method public inRecRange(FF)Z
    .locals 5
    .parameter "xTouch"
    .parameter "yTouch"

    .prologue
    .line 844
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 845
    .local v0, height:I
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int v1, v3, v4

    .line 846
    .local v1, x:I
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    div-int/lit8 v4, v0, 0x2

    add-int v2, v3, v4

    .line 847
    .local v2, y:I
    int-to-float v3, v1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleRange:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 853
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    return v0
.end method

.method protected isOffsetVisible(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 860
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->isOffsetVisibleWrap(I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 869
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 875
    :goto_0
    return v0

    .line 872
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    const/4 v0, 0x0

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 934
    :goto_0
    iget-object v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/NubiaCursorController;->onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z

    .line 935
    return v11

    .line 890
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/NubiaCursorController$NubiaHandleView;->startTouchUpFilter(I)V

    .line 891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleTypeOffset:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 894
    iget-object v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getPositionListenerPosition()J

    move-result-wide v4

    .line 895
    .local v4, packRangeLong:J
    #calls: Landroid/widget/NubiaCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/NubiaCursorController;->access$300(J)I

    move-result v9

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    .line 896
    #calls: Landroid/widget/NubiaCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/NubiaCursorController;->access$400(J)I

    move-result v9

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    .line 897
    iput-boolean v11, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto :goto_0

    .line 902
    .end local v4           #packRangeLong:J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 903
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 906
    .local v8, rawY:F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 907
    .local v6, previousVerticalOffset:F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 909
    .local v0, currentVerticalOffset:F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_0

    .line 910
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 911
    .local v3, newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 916
    :goto_1
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 918
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v7, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 919
    .local v1, newPosX:F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 921
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 913
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_0
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 914
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 926
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v6           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->filterOnTouchUp()V

    .line 927
    iput-boolean v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 931
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 5
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 940
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 941
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 943
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_3

    move v1, v2

    .line 947
    .local v1, offsetChanged:Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 948
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateSelection(I)V

    .line 949
    invoke-direct {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->addPositionToTouchUpFilter(I)V

    .line 950
    invoke-virtual {p0, p1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updatePositionXY(IZ)V

    .line 951
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 952
    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1           #offsetChanged:Z
    :cond_3
    move v1, v3

    .line 946
    goto :goto_1
.end method

.method public setCursorController(Landroid/widget/NubiaCursorController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 957
    iput-object p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    .line 958
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 961
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mType:I

    .line 962
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 968
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 969
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected abstract updateContainerSize()V
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 976
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 977
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 978
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateContainerSize()V

    .line 979
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    .line 980
    return-void

    .line 977
    :cond_0
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 986
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 987
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_4

    .line 988
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 990
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 991
    :cond_1
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    .line 992
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 993
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    .line 994
    iput p2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    .line 995
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/TextMagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/ui/widget/MagnifierController;->onParentChanged()V

    .line 999
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onHandleMoved()V

    .line 1001
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1002
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    .line 1003
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    .line 1004
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1005
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1006
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1017
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    .line 1018
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->updatePosition()V

    .line 1019
    return-void

    .line 1008
    :cond_5
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1012
    :cond_6
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1013
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updatePositionXY(IZ)V
.end method

.method protected abstract updateSelection(I)V
.end method
