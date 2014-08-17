.class public Lcom/vzw/nfc/dos/FilterEntryDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "FilterEntryDo.java"


# static fields
.field public static final _TAG:I = 0xa1


# instance fields
.field private mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

.field private mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

.field private mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

.field private mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

.field private mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;


# direct methods
.method public constructor <init>(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;Lcom/vzw/nfc/dos/RoutingModeDo;Lcom/vzw/nfc/dos/FilterConditionTagDo;)V
    .locals 3
    .parameter "aid_range"
    .parameter "aid_mask"
    .parameter "routing_mode"
    .parameter "filter_condition_tag"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    const/16 v0, 0xa1

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    .line 24
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    .line 25
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    .line 26
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    .line 27
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    .line 37
    iput-object p2, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    .line 38
    iput-object p1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    .line 39
    iput-object p4, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    .line 40
    iput-object p3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    .line 41
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .parameter "rawData"
    .parameter "valueIndex"
    .parameter "valueLength"

    .prologue
    const/4 v1, 0x0

    .line 30
    const/16 v0, 0xa1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    .line 24
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    .line 25
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    .line 26
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    .line 27
    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    .line 31
    return-void
.end method


# virtual methods
.method public getAidMaskDo()Lcom/vzw/nfc/dos/AidMaskDo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    return-object v0
.end method

.method public getAidRangeDo()Lcom/vzw/nfc/dos/AidRangeDo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    return-object v0
.end method

.method public getFilterConditionTagDo()Lcom/vzw/nfc/dos/FilterConditionTagDo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    return-object v0
.end method

.method public getRoutingModeDo()Lcom/vzw/nfc/dos/RoutingModeDo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    return-object v0
.end method

.method public getVzwArDo()Lcom/vzw/nfc/dos/VzwPermissionDo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    return-object v0
.end method

.method public translate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    .line 67
    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    .line 68
    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    .line 69
    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    .line 71
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getRawData()[B

    move-result-object v0

    .line 72
    .local v0, data:[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v1

    .line 74
    .local v1, index:I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v3

    add-int/2addr v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_0

    .line 75
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Not enough data for FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    invoke-static {v0, v1}, Lcom/vzw/nfc/dos/VzwTlv;->parse([BI)Lcom/vzw/nfc/dos/VzwTlv;

    move-result-object v2

    .line 81
    .local v2, temp:Lcom/vzw/nfc/dos/VzwTlv;
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xc3

    if-ne v3, v4, :cond_2

    .line 82
    new-instance v3, Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/AidMaskDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    .line 84
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidMaskDo;->translate()V

    .line 104
    :goto_0
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v4

    add-int v1, v3, v4

    .line 105
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v3, v1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidMaskDo;->getAidMask()[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v4}, Lcom/vzw/nfc/dos/AidRangeDo;->getAidRange()[B

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_7

    .line 112
    :cond_1
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "missing DO in FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_2
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_3

    .line 86
    new-instance v3, Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/AidRangeDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    .line 88
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidRangeDo;->translate()V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xb2

    if-ne v3, v4, :cond_4

    .line 90
    new-instance v3, Lcom/vzw/nfc/dos/RoutingModeDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/RoutingModeDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    .line 92
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/RoutingModeDo;->translate()V

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xd2

    if-ne v3, v4, :cond_5

    .line 94
    new-instance v3, Lcom/vzw/nfc/dos/FilterConditionTagDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/FilterConditionTagDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    .line 96
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->translate()V

    goto/16 :goto_0

    .line 97
    :cond_5
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xe3

    if-ne v3, v4, :cond_6

    .line 98
    new-instance v3, Lcom/vzw/nfc/dos/VzwPermissionDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/VzwPermissionDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    .line 100
    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/VzwPermissionDo;->translate()V

    goto/16 :goto_0

    .line 102
    :cond_6
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Invalid DO in FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_7
    return-void
.end method
