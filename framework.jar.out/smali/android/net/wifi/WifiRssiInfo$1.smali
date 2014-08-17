.class final Landroid/net/wifi/WifiRssiInfo$1;
.super Ljava/lang/Object;
.source "WifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiRssiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiRssiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiRssiInfo;
    .locals 6
    .parameter "in"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, lastRssi:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, rssi:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, freq:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, subtypeName:Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/WifiRssiInfo;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/net/wifi/WifiRssiInfo;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    .line 115
    .local v3, rssiInfo:Landroid/net/wifi/WifiRssiInfo;
    #setter for: Landroid/net/wifi/WifiRssiInfo;->mLastSignalRssi:I
    invoke-static {v3, v1}, Landroid/net/wifi/WifiRssiInfo;->access$002(Landroid/net/wifi/WifiRssiInfo;I)I

    .line 116
    #setter for: Landroid/net/wifi/WifiRssiInfo;->mNewRssi:I
    invoke-static {v3, v2}, Landroid/net/wifi/WifiRssiInfo;->access$102(Landroid/net/wifi/WifiRssiInfo;I)I

    .line 117
    #setter for: Landroid/net/wifi/WifiRssiInfo;->mNewFreq:I
    invoke-static {v3, v0}, Landroid/net/wifi/WifiRssiInfo;->access$202(Landroid/net/wifi/WifiRssiInfo;I)I

    .line 118
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiRssiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiRssiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiRssiInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 122
    new-array v0, p1, [Landroid/net/wifi/WifiRssiInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiRssiInfo$1;->newArray(I)[Landroid/net/wifi/WifiRssiInfo;

    move-result-object v0

    return-object v0
.end method
