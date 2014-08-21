.class public Lnubia/ui/ProtoSearchView;
.super Ljava/lang/Object;
.source "ProtoSearchView.java"

# interfaces
.implements Lnubia/ui/ISearchView;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnubia/ui/ProtoSearchView;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getDecoratedHint()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getSearchViewLayout()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x10900a6

    return v0
.end method

.method public setUseDropDownOriginStyle(Landroid/widget/SearchView$SearchAutoComplete;)V
    .locals 0
    .parameter "mQueryTextView"

    .prologue
    .line 17
    return-void
.end method
