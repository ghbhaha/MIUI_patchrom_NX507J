.class Lcom/android/internal/telephony/uicc/Injector$AdnRecordHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdnRecordHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeAlphaTag(Ljava/lang/String;[BLjava/lang/String;I)Z
    .locals 8
    .parameter "logTag"
    .parameter "adnString"
    .parameter "alphaTag"
    .parameter "footerOffset"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 63
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    .line 64
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .local v0, byteTag:[B
    :goto_0
    array-length v7, v0

    if-le v7, p3, :cond_0

    .end local p3
    :goto_1
    invoke-static {v0, v6, p1, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .end local v0           #byteTag:[B
    :goto_2
    return v5

    .line 65
    .restart local p3
    :catch_0
    move-exception v2

    .line 66
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v7, "[buildAdnString]  can\'t encode with GSM alphabet, try utf-16be"

    invoke-static {p0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-array v3, v5, [B

    .line 69
    .local v3, header:[B
    const/16 v7, -0x80

    aput-byte v7, v3, v6

    .line 72
    :try_start_1
    const-string v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 77
    .local v1, data:[B
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    .line 78
    .restart local v0       #byteTag:[B
    invoke-static {v3, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v7, v1

    invoke-static {v1, v6, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 73
    .end local v0           #byteTag:[B
    .end local v1           #data:[B
    :catch_1
    move-exception v4

    .line 74
    .local v4, uex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "Implausible UnsupportedEncodingException "

    invoke-static {p0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 75
    goto :goto_2

    .line 81
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v3           #header:[B
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byteTag:[B
    :cond_0
    array-length p3, v0

    goto :goto_1
.end method
