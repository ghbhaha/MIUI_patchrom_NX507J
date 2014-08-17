.class public Lnubia/util/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final DENSITIES:[I = null

.field public static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    .line 11
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/16 v1, 0x1e0

    aput v1, v0, v3

    .line 12
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/16 v1, 0x140

    aput v1, v0, v4

    .line 13
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/4 v1, 0x2

    const/16 v2, 0xf0

    aput v2, v0, v1

    .line 14
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/4 v1, 0x3

    const/16 v2, 0xa0

    aput v2, v0, v1

    .line 15
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/4 v1, 0x4

    const/16 v2, 0x78

    aput v2, v0, v1

    .line 16
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 17
    sget-object v0, Lnubia/util/DisplayUtils;->DENSITIES:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestDensityOrder(I)[I
    .locals 7
    .parameter "density"

    .prologue
    .line 23
    const/4 v1, 0x1

    .line 26
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 27
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v2

    if-ne p0, v6, :cond_2

    .line 28
    const/4 v1, 0x0

    .line 32
    :cond_0
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    add-int/2addr v6, v1

    new-array v0, v6, [I

    .line 33
    .local v0, best:[I
    const/4 v6, 0x0

    aput p0, v0, v6

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, k:I
    const/4 v4, 0x1

    .line 36
    .local v4, m:I
    :goto_1
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 37
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v3

    if-eq p0, v6, :cond_1

    .line 38
    add-int/lit8 v5, v4, 0x1

    .end local v4           #m:I
    .local v5, m:I
    sget-object v6, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v3

    aput v6, v0, v4

    move v4, v5

    .line 40
    .end local v5           #m:I
    .restart local v4       #m:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    .end local v0           #best:[I
    .end local v3           #k:I
    .end local v4           #m:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .restart local v0       #best:[I
    .restart local v3       #k:I
    .restart local v4       #m:I
    :cond_3
    return-object v0
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .locals 5
    .parameter "density"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, densityName:Ljava/lang/String;
    sget-object v3, Lnubia/util/DisplayUtils;->DENSITIES:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 49
    .local v1, i:I
    add-int/lit8 v2, v1, -0x1

    .local v2, j:I
    :goto_0
    if-ltz v2, :cond_0

    .line 50
    sget-object v3, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget v3, v3, v2

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget-object v4, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget v4, v4, v1

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 51
    move v1, v2

    .line 49
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 56
    :cond_0
    sget-object v3, Lnubia/util/DisplayUtils;->DENSITIES:[I

    aget p0, v3, v1

    .line 58
    sparse-switch p0, :sswitch_data_0

    .line 81
    const-string/jumbo v0, "mdpi"

    .line 84
    :goto_1
    return-object v0

    .line 60
    :sswitch_0
    const-string v0, "ldpi"

    .line 61
    goto :goto_1

    .line 63
    :sswitch_1
    const-string/jumbo v0, "mdpi"

    .line 64
    goto :goto_1

    .line 66
    :sswitch_2
    const-string v0, "hdpi"

    .line 67
    goto :goto_1

    .line 69
    :sswitch_3
    const-string/jumbo v0, "xhdpi"

    .line 70
    goto :goto_1

    .line 72
    :sswitch_4
    const-string/jumbo v0, "xxhdpi"

    .line 73
    goto :goto_1

    .line 75
    :sswitch_5
    const-string/jumbo v0, "nodpi"

    .line 76
    goto :goto_1

    .line 78
    :sswitch_6
    const-string v0, ""

    .line 79
    goto :goto_1

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 3
    .parameter "density"

    .prologue
    .line 88
    invoke-static {p0}, Lnubia/util/DisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, name:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public static getDrawbleDensityFolder(I)Ljava/lang/String;
    .locals 2
    .parameter "density"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnubia/util/DisplayUtils;->getDrawbleDensityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawbleDensityName(I)Ljava/lang/String;
    .locals 2
    .parameter "density"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnubia/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
