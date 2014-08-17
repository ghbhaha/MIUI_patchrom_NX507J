.class public Landroid/net/wifi/WifiRssiInfo;
.super Ljava/lang/Object;
.source "WifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiRssiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastSignalRssi:I

.field private mNewFreq:I

.field private mNewRssi:I

.field private mStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/net/wifi/WifiRssiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiRssiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiRssiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter "StateMachine"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, -0x64

    iput v0, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 28
    iput-object p1, p0, Landroid/net/wifi/WifiRssiInfo;->mStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 32
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiRssiInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSignalRssi()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    return v0
.end method

.method public getNewFreq()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    return v0
.end method

.method public getNewRssi()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    return v0
.end method

.method public setLastSignalRssi(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 42
    return-void
.end method

.method public setNewRssi(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 45
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 47
    return-void
.end method

.method public updateLastSignalRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 36
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    .line 37
    return-void
.end method

.method public updateNewFreq(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 50
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 51
    return-void
.end method

.method public updateRssiAndFreq(ILjava/lang/String;)V
    .locals 4
    .parameter "rssi"
    .parameter "bssid"

    .prologue
    .line 70
    iput p1, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    .line 71
    iget-object v3, p0, Landroid/net/wifi/WifiRssiInfo;->mStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 74
    .local v1, result:Landroid/net/wifi/ScanResult;
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget v3, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v3, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
