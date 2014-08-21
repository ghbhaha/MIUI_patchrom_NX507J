.class abstract Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    sget-object v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 944
    iput p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 945
    iput p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 946
    iput p3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mMessageResId:I

    .line 947
    iput p4, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 948
    iput p5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 949
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 1023
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 1024
    return-void

    .line 1023
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->willCreate()V

    .line 963
    const v6, 0x1090045

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 966
    .local v5, v:Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 967
    .local v1, icon:Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 968
    .local v2, messageView:Landroid/widget/TextView;
    const v6, 0x102029c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 969
    .local v4, statusView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 971
    .local v0, enabled:Z
    if-eqz v2, :cond_0

    .line 972
    iget v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 973
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 976
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 977
    .local v3, on:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 978
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 983
    :cond_2
    if-eqz v4, :cond_3

    .line 984
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 986
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 987
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 989
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 991
    return-object v5

    .end local v3           #on:Z
    :cond_4
    move v3, v7

    .line 976
    goto :goto_0

    .line 978
    .restart local v3       #on:Z
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 984
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1001
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->onToggle(Z)V

    .line 1002
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1000
    .end local v0           #nowOn:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 1030
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method
