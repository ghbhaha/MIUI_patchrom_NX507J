.class public Lnubia/ui/ProtoActionBar;
.super Ljava/lang/Object;
.source "ProtoActionBar.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/ProtoActionBar;->_actionMenuItemView:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/ProtoActionBar;->_actionMenuView:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnubia/ui/ProtoActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    .line 26
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
    .line 109
    mul-int v0, p1, p2

    return v0
.end method

.method public getActionBarCustomPaddingStart()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarPaddingStart()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuHight()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method public getActionMenuItemViewOnMeasure(II)Z
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuPresenter()Lcom/android/internal/view/menu/ActionMenuPresenter;
    .locals 4

    .prologue
    .line 57
    const v1, 0x109001c

    .line 58
    .local v1, menuLayout:I
    const v0, 0x109001b

    .line 59
    .local v0, menuItemLayout:I
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v3, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getActionMenuViewOnLayout(ZIIII)Z
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getActionMenuViewOnMeasure(II)Z
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getActionModeLayout()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x109001e

    return v0
.end method

.method public getHomeLayoutResId(Landroid/content/res/TypedArray;)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 51
    const/16 v0, 0xf

    const v1, 0x1090018

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getHomeViewStartOffset()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnubia/ui/ProtoActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getStartOffset()I

    move-result v0

    return v0
.end method

.method public getMaxIconSize(I)I
    .locals 4
    .parameter "maxIconSizie"

    .prologue
    .line 37
    iget-object v2, p0, Lnubia/ui/ProtoActionBar;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 39
    .local v0, density:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public isSetWidthLimit(Z)Z
    .locals 0
    .parameter "strict"

    .prologue
    .line 76
    return p1
.end method

.method public isShowsOverflowMenuButton(Lcom/android/internal/view/ActionBarPolicy;)Z
    .locals 1
    .parameter "actionBarPolicy"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    return v0
.end method

.method public resetMaxItemHeight()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public resetPositionChild()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public setDropDownSpinnerWidth(Landroid/widget/Spinner;)V
    .locals 0
    .parameter "spinner"

    .prologue
    .line 65
    return-void
.end method

.method public setHomeViewShowIcon(Z)V
    .locals 1
    .parameter "showIcon"

    .prologue
    .line 72
    iget-object v0, p0, Lnubia/ui/ProtoActionBar;->_actionBarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setShowIcon(Z)V

    .line 73
    return-void
.end method

.method public setMenuCompoundIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v1, p0, Lnubia/ui/ProtoActionBar;->_actionMenuItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 44
    .local v0, v:Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    return-void
.end method
