.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const/16 v9, 0x80

    .line 206
    aget-byte v0, p1, p2

    .line 207
    .local v0, b0:B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 208
    .local v1, b1:B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 209
    .local v2, b2:B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 212
    .local v3, b3:B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 213
    .local v4, i0:I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 214
    .local v5, i1:I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 215
    .local v6, i2:I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 217
    .local v7, i3:I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4           #i0:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v7           #i3:I
    :cond_0
    move v4, v0

    .line 212
    goto :goto_0

    .restart local v4       #i0:I
    :cond_1
    move v5, v1

    .line 213
    goto :goto_1

    .restart local v5       #i1:I
    :cond_2
    move v6, v2

    .line 214
    goto :goto_2

    .restart local v6       #i2:I
    :cond_3
    move v7, v3

    .line 215
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 226
    .local v2, seconds:J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 227
    .local v0, fraction:J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "time"

    .prologue
    .line 235
    const-wide/16 v7, 0x3e8

    div-long v5, p3, v7

    .line 236
    .local v5, seconds:J
    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    sub-long v2, p3, v7

    .line 237
    .local v2, milliseconds:J
    const-wide v7, 0x83aa7e80L

    add-long/2addr v5, v7

    .line 240
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, offset:I
    const/16 v7, 0x18

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 241
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 242
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 243
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/4 v7, 0x0

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 245
    const-wide v7, 0x100000000L

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 247
    .local v0, fraction:J
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x18

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 248
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 249
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 251
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 252
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 43
    .parameter "host"
    .parameter "timeout"

    .prologue
    .line 75
    const/16 v34, 0x0

    .line 80
    .local v34, socket:Ljava/net/DatagramSocket;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    .line 81
    .local v7, addressDnsBack:[Ljava/net/InetAddress;
    const-string v39, "61.135.250.78"

    invoke-static/range {v39 .. v39}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 84
    .local v8, addressLTE:Ljava/net/InetAddress;
    const/4 v10, 0x0

    .line 85
    .local v10, bDuplicate:Z
    move-object v9, v7

    .local v9, arr$:[Ljava/net/InetAddress;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v4, v9, v16

    .line 86
    .local v4, add:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v39

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3

    .line 87
    const/4 v10, 0x1

    .line 92
    .end local v4           #add:Ljava/net/InetAddress;
    :cond_0
    if-nez v10, :cond_4

    .line 93
    array-length v0, v7

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    new-array v5, v0, [Ljava/net/InetAddress;

    .line 94
    .local v5, address:[Ljava/net/InetAddress;
    const/16 v39, 0x0

    const/16 v40, 0x0

    array-length v0, v7

    move/from16 v41, v0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v7, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length v0, v7

    move/from16 v39, v0

    aput-object v8, v5, v39

    .line 101
    :goto_1
    array-length v6, v5

    .line 102
    .local v6, addressCount:I
    move/from16 v0, p2

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v39, v0

    add-int v39, v39, v6

    add-int/lit8 v39, v39, -0x1

    div-int v39, v39, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, v39

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v36, v0

    .line 104
    .local v36, timeoutEach:I
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v35, v34

    .end local v34           #socket:Ljava/net/DatagramSocket;
    .local v35, socket:Ljava/net/DatagramSocket;
    :goto_2
    if-ge v15, v6, :cond_7

    .line 106
    :try_start_1
    new-instance v34, Ljava/net/DatagramSocket;

    invoke-direct/range {v34 .. v34}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v35           #socket:Ljava/net/DatagramSocket;
    .restart local v34       #socket:Ljava/net/DatagramSocket;
    :try_start_2
    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 108
    const/16 v39, 0x30

    move/from16 v0, v39

    new-array v11, v0, [B

    .line 109
    .local v11, buffer:[B
    new-instance v22, Ljava/net/DatagramPacket;

    array-length v0, v11

    move/from16 v39, v0

    aget-object v40, v5, v15

    const/16 v41, 0x7b

    move-object/from16 v0, v22

    move/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 114
    .local v22, request:Ljava/net/DatagramPacket;
    const/16 v39, 0x0

    const/16 v40, 0x1b

    aput-byte v40, v11, v39

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 118
    .local v25, requestTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 119
    .local v23, requestTicks:J
    const/16 v39, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-wide/from16 v2, v25

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 121
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 124
    new-instance v27, Ljava/net/DatagramPacket;

    array-length v0, v11

    move/from16 v39, v0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-direct {v0, v11, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 125
    .local v27, response:Ljava/net/DatagramPacket;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 127
    .local v28, responseTicks:J
    sub-long v39, v28, v23

    add-long v30, v25, v39

    .line 130
    .local v30, responseTime:J
    const/16 v39, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v11, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v18

    .line 131
    .local v18, originateTime:J
    const/16 v39, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v11, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v20

    .line 132
    .local v20, receiveTime:J
    const/16 v39, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v11, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v37

    .line 133
    .local v37, transmitTime:J
    sub-long v39, v28, v23

    sub-long v41, v37, v20

    sub-long v32, v39, v41

    .line 142
    .local v32, roundTripTime:J
    sub-long v39, v20, v18

    sub-long v41, v37, v30

    add-long v39, v39, v41

    const-wide/16 v41, 0x2

    div-long v12, v39, v41

    .line 148
    .local v12, clockOffset:J
    add-long v39, v30, v12

    move-wide/from16 v0, v39

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 149
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 150
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    const/16 v39, 0x1

    .line 155
    if-eqz v34, :cond_1

    .line 156
    :try_start_3
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 157
    const/16 v34, 0x0

    .line 166
    :cond_1
    if-eqz v34, :cond_2

    .line 167
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V

    .line 171
    .end local v5           #address:[Ljava/net/InetAddress;
    .end local v6           #addressCount:I
    .end local v7           #addressDnsBack:[Ljava/net/InetAddress;
    .end local v8           #addressLTE:Ljava/net/InetAddress;
    .end local v9           #arr$:[Ljava/net/InetAddress;
    .end local v10           #bDuplicate:Z
    .end local v11           #buffer:[B
    .end local v12           #clockOffset:J
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v18           #originateTime:J
    .end local v20           #receiveTime:J
    .end local v22           #request:Ljava/net/DatagramPacket;
    .end local v23           #requestTicks:J
    .end local v25           #requestTime:J
    .end local v27           #response:Ljava/net/DatagramPacket;
    .end local v28           #responseTicks:J
    .end local v30           #responseTime:J
    .end local v32           #roundTripTime:J
    .end local v36           #timeoutEach:I
    .end local v37           #transmitTime:J
    :cond_2
    :goto_3
    return v39

    .line 85
    .restart local v4       #add:Ljava/net/InetAddress;
    .restart local v7       #addressDnsBack:[Ljava/net/InetAddress;
    .restart local v8       #addressLTE:Ljava/net/InetAddress;
    .restart local v9       #arr$:[Ljava/net/InetAddress;
    .restart local v10       #bDuplicate:Z
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 97
    .end local v4           #add:Ljava/net/InetAddress;
    :cond_4
    move-object v5, v7

    .restart local v5       #address:[Ljava/net/InetAddress;
    goto/16 :goto_1

    .line 152
    .end local v34           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #addressCount:I
    .restart local v15       #i:I
    .restart local v35       #socket:Ljava/net/DatagramSocket;
    .restart local v36       #timeoutEach:I
    :catch_0
    move-exception v39

    move-object/from16 v34, v35

    .line 155
    .end local v35           #socket:Ljava/net/DatagramSocket;
    .restart local v34       #socket:Ljava/net/DatagramSocket;
    :goto_4
    if-eqz v34, :cond_5

    .line 156
    :try_start_4
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V

    .line 157
    const/16 v34, 0x0

    .line 104
    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v35, v34

    .end local v34           #socket:Ljava/net/DatagramSocket;
    .restart local v35       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_2

    .line 155
    :catchall_0
    move-exception v39

    move-object/from16 v34, v35

    .end local v35           #socket:Ljava/net/DatagramSocket;
    .restart local v34       #socket:Ljava/net/DatagramSocket;
    :goto_5
    if-eqz v34, :cond_6

    .line 156
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V

    .line 157
    const/16 v34, 0x0

    :cond_6
    throw v39
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 162
    .end local v5           #address:[Ljava/net/InetAddress;
    .end local v6           #addressCount:I
    .end local v7           #addressDnsBack:[Ljava/net/InetAddress;
    .end local v8           #addressLTE:Ljava/net/InetAddress;
    .end local v9           #arr$:[Ljava/net/InetAddress;
    .end local v10           #bDuplicate:Z
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v36           #timeoutEach:I
    :catch_1
    move-exception v14

    .line 164
    .local v14, e:Ljava/lang/Exception;
    const/16 v39, 0x0

    .line 166
    if-eqz v34, :cond_2

    .line 167
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    .line 166
    .end local v14           #e:Ljava/lang/Exception;
    .end local v34           #socket:Ljava/net/DatagramSocket;
    .restart local v5       #address:[Ljava/net/InetAddress;
    .restart local v6       #addressCount:I
    .restart local v7       #addressDnsBack:[Ljava/net/InetAddress;
    .restart local v8       #addressLTE:Ljava/net/InetAddress;
    .restart local v9       #arr$:[Ljava/net/InetAddress;
    .restart local v10       #bDuplicate:Z
    .restart local v15       #i:I
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v35       #socket:Ljava/net/DatagramSocket;
    .restart local v36       #timeoutEach:I
    :cond_7
    if-eqz v35, :cond_8

    .line 167
    invoke-virtual/range {v35 .. v35}, Ljava/net/DatagramSocket;->close()V

    .line 171
    :cond_8
    const/16 v39, 0x0

    move-object/from16 v34, v35

    .end local v35           #socket:Ljava/net/DatagramSocket;
    .restart local v34       #socket:Ljava/net/DatagramSocket;
    goto :goto_3

    .line 166
    .end local v5           #address:[Ljava/net/InetAddress;
    .end local v6           #addressCount:I
    .end local v7           #addressDnsBack:[Ljava/net/InetAddress;
    .end local v8           #addressLTE:Ljava/net/InetAddress;
    .end local v9           #arr$:[Ljava/net/InetAddress;
    .end local v10           #bDuplicate:Z
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v36           #timeoutEach:I
    :catchall_1
    move-exception v39

    if-eqz v34, :cond_9

    .line 167
    invoke-virtual/range {v34 .. v34}, Ljava/net/DatagramSocket;->close()V

    :cond_9
    throw v39

    .line 155
    .restart local v5       #address:[Ljava/net/InetAddress;
    .restart local v6       #addressCount:I
    .restart local v7       #addressDnsBack:[Ljava/net/InetAddress;
    .restart local v8       #addressLTE:Ljava/net/InetAddress;
    .restart local v9       #arr$:[Ljava/net/InetAddress;
    .restart local v10       #bDuplicate:Z
    .restart local v15       #i:I
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v36       #timeoutEach:I
    :catchall_2
    move-exception v39

    goto :goto_5

    .line 152
    :catch_2
    move-exception v39

    goto :goto_4
.end method
