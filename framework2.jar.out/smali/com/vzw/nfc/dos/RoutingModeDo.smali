.class public Lcom/vzw/nfc/dos/RoutingModeDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "RoutingModeDo.java"


# static fields
.field public static final _TAG:I = 0xb2


# instance fields
.field private mFullPowerModeAllowed:Z

.field private mLowPowerModeAllowed:Z

.field private mNoPowerModeAllowed:Z

.field private mRoutingInfo:B


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .parameter "route_info"

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x0

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 25
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 26
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 27
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 42
    iput-byte p1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 43
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 3
    .parameter "low_power"
    .parameter "full_power"
    .parameter "no_power"

    .prologue
    const/4 v2, 0x0

    .line 34
    const/4 v0, 0x0

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 25
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 26
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 27
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 35
    iput-boolean p1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 36
    iput-boolean p2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 37
    iput-boolean p3, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 38
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
    const/16 v0, 0xb2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    .line 23
    iput-byte v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 25
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 26
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 27
    iput-boolean v1, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getRoutingInfo()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    return v0
.end method

.method public isFullPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    return v0
.end method

.method public isLowPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    return v0
.end method

.method public isNoPowerModeAllowed()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    return v0
.end method

.method public translate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    iput-byte v4, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 66
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getRawData()[B

    move-result-object v0

    .line 67
    .local v0, data:[B
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v1

    .line 69
    .local v1, index:I
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v5, v0

    if-le v2, v5, :cond_0

    .line 70
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 75
    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Invalid length of FILTER_CONDITION_TAG_DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    .line 81
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mNoPowerModeAllowed:Z

    .line 82
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mLowPowerModeAllowed:Z

    .line 83
    iget-byte v2, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mRoutingInfo:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/vzw/nfc/dos/RoutingModeDo;->mFullPowerModeAllowed:Z

    .line 84
    return-void

    :cond_2
    move v2, v4

    .line 81
    goto :goto_0

    :cond_3
    move v2, v4

    .line 82
    goto :goto_1

    :cond_4
    move v3, v4

    .line 83
    goto :goto_2
.end method
