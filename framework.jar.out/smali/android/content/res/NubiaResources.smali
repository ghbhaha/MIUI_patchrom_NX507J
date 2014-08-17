.class public final Landroid/content/res/NubiaResources;
.super Landroid/content/res/Resources;
.source "NubiaResources.java"


# static fields
.field private static final DEBUG_THEME:Z = false

.field static final TAG_THEME:Ljava/lang/String; = "zhangfan"

.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeNubia:I = 0x2

.field public static final sCookieTypeOther:I = 0x3


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lnubia/content/res/ThemeResources;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compatInfo"
    .parameter "token"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->init(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .parameter "cookie"

    .prologue
    .line 86
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 87
    .local v1, cookieType:I
    if-nez v1, :cond_0

    .line 88
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, cookieName:Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v1, 0x1

    .line 96
    :goto_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    .end local v0           #cookieName:Ljava/lang/String;
    :cond_0
    return v1

    .line 91
    .restart local v0       #cookieName:Ljava/lang/String;
    :cond_1
    const-string v2, "/system/framework/nubia-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const/4 v1, 0x2

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 134
    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 144
    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 149
    iget-boolean v2, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 158
    :goto_0
    return-object v2

    .line 152
    :cond_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 153
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 154
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 157
    .local v1, res:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 158
    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .parameter "id"

    .prologue
    .line 162
    iget-boolean v2, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v2, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 171
    :goto_0
    return-object v2

    .line 165
    :cond_0
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 166
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 167
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 170
    .local v1, res:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 171
    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 178
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/NubiaResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    .local v0, res:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 184
    .end local v0           #res:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nubia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    invoke-static {p0}, Lnubia/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    .line 197
    :goto_0
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    .line 202
    :goto_1
    return-void

    .line 195
    :cond_1
    invoke-static {p0, p1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    goto :goto_1
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-object v7, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v6

    .line 265
    :goto_0
    return-object v0

    .line 210
    :cond_0
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, mfilename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 212
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 214
    .local v3, mOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    .line 224
    .local v4, mThemeFileInfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    iget-object v7, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v8}, Landroid/content/res/NubiaResources;->getCookieType(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lnubia/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 229
    :goto_1
    if-eqz v4, :cond_3

    .line 233
    iget v6, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v6, :cond_2

    iget v6, p1, Landroid/util/TypedValue;->density:I

    const v7, 0xffff

    if-eq v6, v7, :cond_2

    .line 234
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3           #mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 235
    .restart local v3       #mOptions:Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 241
    :goto_2
    :try_start_1
    iget-object v2, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 243
    .local v2, is:Ljava/io/InputStream;
    const-string v6, ".9.png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    invoke-static {v2}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 246
    :cond_1
    invoke-static {p0, p1, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 257
    :try_start_2
    iget-object v6, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1

    .line 237
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 250
    :catch_2
    move-exception v1

    .line 251
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 257
    :try_start_3
    iget-object v6, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 258
    :catch_3
    move-exception v1

    .line 259
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 257
    :try_start_4
    iget-object v7, v4, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 260
    :goto_3
    throw v6

    .line 258
    :catch_4
    move-exception v1

    .line 259
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget-object v7, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v6

    .line 265
    goto :goto_0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/NubiaResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 280
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 281
    invoke-virtual {p0, p1, p2, v5}, Landroid/content/res/NubiaResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 282
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, file:Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, themefileinfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v4}, Landroid/content/res/NubiaResources;->getCookieType(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 290
    :goto_0
    if-eqz v2, :cond_0

    .line 291
    iget-object v3, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 294
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #themefileinfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_1
    return-object v3

    .line 287
    .restart local v1       #file:Ljava/lang/String;
    .restart local v2       #themefileinfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #themefileinfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1
.end method

.method protected replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "typedArray"

    .prologue
    .line 107
    iget-object v5, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    if-nez v5, :cond_1

    .line 125
    :cond_0
    return-object p1

    .line 111
    :cond_1
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 112
    .local v0, data:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 113
    add-int/lit8 v5, v1, 0x0

    aget v3, v0, v5

    .line 114
    .local v3, type:I
    add-int/lit8 v5, v1, 0x3

    aget v2, v0, v5

    .line 115
    .local v2, resid:I
    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    const/16 v5, 0x1f

    if-le v3, v5, :cond_4

    :cond_2
    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    .line 112
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/res/NubiaResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    .local v4, value:Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 123
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    goto :goto_1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 302
    .local v1, currentConfig:Landroid/content/res/Configuration;
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 303
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 307
    .local v0, configChanges:I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 309
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    if-eqz v2, :cond_2

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_0

    invoke-static {v0}, Lnubia/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    :cond_0
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/content/res/ThemeResourcesSystem;->checkUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 314
    :cond_1
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 315
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 316
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 317
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 318
    iget-object v2, p0, Landroid/content/res/NubiaResources;->mThemeResources:Lnubia/content/res/ThemeResources;

    invoke-virtual {v2}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/res/NubiaResources;->mHasValues:Z

    .line 320
    :cond_2
    return-void

    .line 305
    .end local v0           #configChanges:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #configChanges:I
    goto :goto_0
.end method
