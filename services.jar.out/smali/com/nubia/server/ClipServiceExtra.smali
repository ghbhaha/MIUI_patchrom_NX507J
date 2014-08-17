.class public Lcom/nubia/server/ClipServiceExtra;
.super Lnubia/ui/content/IClipService$Stub;
.source "ClipServiceExtra.java"


# static fields
.field private static final MAX_CLIP_DATA_NUMBER:I = 0xa

.field private static final MIN_CLIP_DATA_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ClipServiceExtra"


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lnubia/ui/content/IClipService$Stub;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 4
    .parameter "pastedString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 18
    .local v0, size:I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getData(I)Ljava/util/List;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 24
    .local v0, size:I
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    .line 25
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/nubia/server/ClipServiceExtra;->mDatas:Ljava/util/ArrayList;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
