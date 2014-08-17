.class public Lnubia/ui/NubiaActionBar;
.super Ljava/lang/Object;
.source "NubiaActionBar.java"

# interfaces
.implements Lnubia/ui/IActionBar;


# instance fields
.field _actionBarView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field _actionMenuItemView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field _actionMenuView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuView;",
            ">;"
        }
    .end annotation
.end field

.field _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionMenuItemView:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionMenuView:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method public computeMenuStart(IIII)I
    .locals 1
    .parameter "direction"
    .parameter "menuViewWidth"
    .parameter "menuPaddingLeft"
    .parameter "menuPaddingRight"

    .prologue
    .line 118
    add-int v0, p3, p4

    if-ne p2, v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    mul-int v0, p1, p2

    goto :goto_0
.end method

.method public getActionBarCustomPaddingStart()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getActionBarPaddingStart()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuHight()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getActionMenuItemViewOnMeasure(II)Z
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 110
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->nubiaUiOnMeasure(II)Z

    move-result v0

    return v0
.end method

.method public getActionMenuPresenter()Lcom/android/internal/view/menu/ActionMenuPresenter;
    .locals 4

    .prologue
    .line 62
    const v1, 0x1090070

    .line 63
    .local v1, mMenuLayout:I
    const v0, 0x109006f

    .line 64
    .local v0, mMenuItemLayout:I
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v3, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getActionMenuViewOnLayout(ZIIII)Z
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 106
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuView;->nubiaUiOnLayout(ZIIII)Z

    move-result v0

    return v0
.end method

.method public getActionMenuViewOnMeasure(II)Z
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 102
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->nubiaUiOnMeasure(II)Z

    move-result v0

    return v0
.end method

.method public getActionModeLayout()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x1090071

    return v0
.end method

.method public getHomeLayoutResId(Landroid/content/res/TypedArray;)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 57
    const/16 v0, 0xf

    const v1, 0x109006e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getHomeViewStartOffset()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNubiaStartOffset()I

    move-result v0

    return v0
.end method

.method public getMaxIconSize(I)I
    .locals 2
    .parameter "maxIconSize"

    .prologue
    .line 40
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public isSetWidthLimit(Z)Z
    .locals 1
    .parameter "strict"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isShowsOverflowMenuButton(Lcom/android/internal/view/ActionBarPolicy;)Z
    .locals 1
    .parameter "actionBarPolicy"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->showsNubiaOverflowMenuButton()Z

    move-result v0

    return v0
.end method

.method public resetMaxItemHeight()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public resetPositionChild()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public setDropDownSpinnerWidth(Landroid/widget/Spinner;)V
    .locals 5
    .parameter "spinner"

    .prologue
    .line 68
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v1, metric:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 70
    .local v0, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    .local v2, width:I
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 73
    return-void
.end method

.method public setHomeViewShowIcon(Z)V
    .locals 1
    .parameter "showIcon"

    .prologue
    .line 81
    iget-object v0, p0, Lnubia/ui/NubiaActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setNubiaShowIcon(Z)V

    .line 82
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v1, p0, Lnubia/ui/NubiaActionBar;->_actionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 45
    .local v0, v:Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lnubia/ui/NubiaActionBar;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 47
    invoke-virtual {v0, p1, v3, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v0, v3, p1, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method
