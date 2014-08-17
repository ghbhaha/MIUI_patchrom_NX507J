.class public Lnubia/ui/widget/PopupWindowInfo;
.super Ljava/lang/Object;
.source "PopupWindowInfo.java"


# instance fields
.field public mHeight:I

.field public mOnTop:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .parameter "onTop"
    .parameter "height"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lnubia/ui/widget/PopupWindowInfo;->mOnTop:Z

    .line 14
    iput p2, p0, Lnubia/ui/widget/PopupWindowInfo;->mHeight:I

    .line 15
    return-void
.end method


# virtual methods
.method public setBeanParams(ZI)V
    .locals 0
    .parameter "onTop"
    .parameter "height"

    .prologue
    .line 17
    iput-boolean p1, p0, Lnubia/ui/widget/PopupWindowInfo;->mOnTop:Z

    .line 18
    iput p2, p0, Lnubia/ui/widget/PopupWindowInfo;->mHeight:I

    .line 19
    return-void
.end method
