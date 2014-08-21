.class public Lnubia/ui/NubiaSearchView;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Lnubia/ui/ISearchView;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lnubia/ui/NubiaSearchView;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public getDecoratedHint()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public getSearchViewLayout()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x1090075

    return v0
.end method

.method public setUseDropDownOriginStyle(Landroid/widget/SearchView$SearchAutoComplete;)V
    .locals 1
    .parameter "mQueryTextView"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->useDropDownOriginStyle(Z)V

    .line 18
    return-void
.end method
