.class public Lnubia/util/InputStreamLoader;
.super Ljava/lang/Object;
.source "InputStreamLoader.java"


# instance fields
.field mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lnubia/util/InputStreamLoader;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lnubia/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    .line 27
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "zipPath"
    .parameter "entryName"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lnubia/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lnubia/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :cond_1
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 94
    return-void
.end method

.method public get()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lnubia/util/InputStreamLoader;->close()V

    .line 73
    :try_start_0
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lnubia/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object v1

    .line 75
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lnubia/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 77
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lnubia/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    instance-of v1, v1, Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 79
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lnubia/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 82
    iget-object v1, p0, Lnubia/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lnubia/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
