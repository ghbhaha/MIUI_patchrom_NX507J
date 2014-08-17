.class Landroid/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static final DEBUG_THEME:Z = false

.field private static PNG_HEAD_FORMAT:[B = null

.field static final TAG_THEME:Ljava/lang/String; = "zfzfzf"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    return-void

    :array_0
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static computePatchColor([B)I
    .locals 1
    .parameter "abyte0"

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .locals 2
    .parameter "abyte0"
    .parameter "i"

    .prologue
    .line 38
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .locals 2
    .parameter "abyte0"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 42
    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 43
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 44
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 45
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 46
    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .locals 10
    .parameter "pngData"

    .prologue
    const/16 v9, 0x21

    .line 50
    if-eqz p0, :cond_0

    array-length v7, p0

    const/16 v8, 0x29

    if-lt v7, v8, :cond_0

    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v7

    if-nez v7, :cond_3

    .line 51
    :cond_0
    const/4 p0, 0x0

    :cond_1
    move-object v1, p0

    .line 77
    :cond_2
    return-object v1

    .line 53
    :cond_3
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 57
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v2

    .line 58
    .local v2, header:[B
    array-length v7, p0

    add-int/lit8 v7, v7, 0xc

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v1, v7, [B

    .line 59
    .local v1, finalData:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_4

    .line 60
    aget-byte v7, p0, v3

    aput-byte v7, v1, v3

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_4
    array-length v7, v2

    invoke-static {v1, v9, v7}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 63
    invoke-static {v1}, Landroid/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    .line 64
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_5

    .line 65
    add-int/lit8 v7, v4, 0x29

    aget-byte v8, v2, v4

    aput-byte v8, v1, v7

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 67
    :cond_5
    array-length v7, v2

    add-int/lit8 v5, v7, 0x29

    .line 68
    .local v5, k:I
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 69
    .local v0, crc32:Ljava/util/zip/CRC32;
    const/16 v7, 0x25

    array-length v8, v2

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v1, v7, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 70
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v1, v5, v7}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 71
    const/4 v6, 0x0

    .local v6, l:I
    :goto_2
    array-length v7, p0

    add-int/lit8 v7, v7, -0x21

    if-ge v6, v7, :cond_2

    .line 72
    add-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v6

    add-int/lit8 v8, v6, 0x21

    aget-byte v8, p0, v8

    aput-byte v8, v1, v7

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8
    .parameter "inputstream"

    .prologue
    const/16 v7, 0x29

    .line 82
    const/16 v6, 0x29

    :try_start_0
    new-array v5, v6, [B

    .line 83
    .local v5, localObject:[B
    move-object v0, v5

    check-cast v0, [B

    move-object v6, v0

    check-cast v6, [B

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 87
    .local v3, i:I
    if-gtz v3, :cond_1

    .line 88
    const/4 v5, 0x0

    .line 93
    .end local v5           #localObject:[B
    :cond_0
    :goto_0
    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v2

    .line 97
    .local v2, arrayOfByte2:[B
    if-eqz v2, :cond_2

    .line 99
    new-instance v6, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v6, p0, v2}, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 105
    .end local v2           #arrayOfByte2:[B
    .end local v3           #i:I
    :goto_1
    return-object v6

    .line 89
    .restart local v3       #i:I
    .restart local v5       #localObject:[B
    :cond_1
    if-ge v3, v7, :cond_0

    .line 90
    check-cast v5, [B

    .end local v5           #localObject:[B
    check-cast v5, [B

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .local v1, arrayOfByte1:[B
    move-object v5, v1

    .restart local v5       #localObject:[B
    goto :goto_0

    .line 101
    .end local v1           #arrayOfByte1:[B
    .end local v3           #i:I
    .end local v5           #localObject:[B
    :catch_0
    move-exception v4

    .line 103
    .local v4, localException:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .end local v4           #localException:Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static fillNinePngFormatMark([B)V
    .locals 2
    .parameter "abyte0"

    .prologue
    .line 109
    const/16 v0, 0x25

    const/16 v1, 0x6e

    aput-byte v1, p0, v0

    .line 110
    const/16 v0, 0x26

    const/16 v1, 0x70

    aput-byte v1, p0, v0

    .line 111
    const/16 v0, 0x27

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    .line 112
    const/16 v0, 0x28

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    .line 113
    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 117
    const/16 v3, 0x10

    invoke-static {p0, v3}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    .line 118
    .local v1, i:I
    const/16 v3, 0x14

    invoke-static {p0, v3}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v2

    .line 119
    .local v2, j:I
    const/16 v3, 0x34

    new-array v0, v3, [B

    .line 120
    .local v0, chunk:[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 121
    aput-byte v5, v0, v4

    .line 122
    aput-byte v5, v0, v5

    .line 123
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 124
    const/16 v3, 0x24

    invoke-static {v0, v3, v1}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 125
    const/16 v3, 0x2c

    invoke-static {v0, v3, v2}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 126
    const/16 v3, 0x30

    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 127
    return-object v0
.end method

.method private static isNinePngFormat([B)Z
    .locals 3
    .parameter "pngdata"

    .prologue
    const/16 v2, 0x28

    .line 132
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v2, :cond_0

    .line 139
    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, v2, :cond_1

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_1

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v2

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPngFormat([B)Z
    .locals 3
    .parameter "data"

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 144
    aget-byte v1, p0, v0

    sget-object v2, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 146
    :goto_1
    return v1

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
