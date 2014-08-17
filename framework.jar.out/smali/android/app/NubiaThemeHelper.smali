.class public Landroid/app/NubiaThemeHelper;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NubiaThemeHelper$UnitEntry;
    }
.end annotation


# static fields
.field public static final NUBIA_RES_PATH:Ljava/lang/String; = "/system/framework/nubia-res.apk"

.field private static final NUBIA_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static final sFloatOut:[F

.field private static final sFloatPattern:Ljava/util/regex/Pattern;

.field private static final sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x5

    .line 193
    const-string v0, "(-?[0-9]+(?:\\.[0-9]+)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    .line 194
    new-array v0, v7, [F

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    .line 210
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/app/NubiaThemeHelper$UnitEntry;

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "px"

    invoke-direct {v1, v2, v5, v8, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "dip"

    invoke-direct {v1, v2, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "dp"

    invoke-direct {v2, v3, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "sp"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "pt"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "in"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v5, v3, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "mm"

    invoke-direct {v1, v2, v5, v5, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%"

    const v4, 0x3c23d70a

    invoke-direct {v2, v3, v9, v8, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%p"

    const v4, 0x3c23d70a

    invoke-direct {v2, v3, v9, v7, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "assetManager"

    .prologue
    .line 36
    const-string v0, "/system/framework/nubia-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V
    .locals 2
    .parameter "unit"
    .parameter "outValue"
    .parameter "outScale"

    .prologue
    .line 351
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    iput v0, p1, Landroid/util/TypedValue;->type:I

    .line 352
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    shl-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/util/TypedValue;->data:I

    .line 353
    const/4 v0, 0x0

    iget v1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    aput v1, p2, v0

    .line 354
    return-void
.end method

.method private static computeTypedValue(Landroid/util/TypedValue;FF)V
    .locals 10
    .parameter "outValue"
    .parameter "value"
    .parameter "scale"

    .prologue
    const-wide/16 v8, 0x0

    .line 297
    mul-float/2addr p1, p2

    .line 298
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    const/4 v3, 0x1

    .line 299
    .local v3, neg:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 300
    neg-float p1, p1

    .line 302
    :cond_0
    const/high16 v6, 0x4b00

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-long v0, v6

    .line 305
    .local v0, bits:J
    const-wide/32 v6, 0x7fffff

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 308
    const/4 v4, 0x0

    .line 309
    .local v4, radix:I
    const/16 v5, 0x17

    .line 327
    .local v5, shift:I
    :goto_1
    shr-long v6, v0, v5

    const-wide/32 v8, 0xffffff

    and-long/2addr v6, v8

    long-to-int v2, v6

    .line 329
    .local v2, mantissa:I
    if-eqz v3, :cond_1

    .line 330
    neg-int v6, v2

    const v7, 0xffffff

    and-int v2, v6, v7

    .line 332
    :cond_1
    iget v6, p0, Landroid/util/TypedValue;->data:I

    shl-int/lit8 v7, v4, 0x4

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Landroid/util/TypedValue;->data:I

    .line 335
    return-void

    .line 298
    .end local v0           #bits:J
    .end local v2           #mantissa:I
    .end local v3           #neg:Z
    .end local v4           #radix:I
    .end local v5           #shift:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 310
    .restart local v0       #bits:J
    .restart local v3       #neg:Z
    :cond_3
    const-wide/32 v6, -0x800000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 312
    const/4 v4, 0x3

    .line 313
    .restart local v4       #radix:I
    const/4 v5, 0x0

    .restart local v5       #shift:I
    goto :goto_1

    .line 314
    .end local v4           #radix:I
    .end local v5           #shift:I
    :cond_4
    const-wide/32 v6, -0x80000000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 316
    const/4 v4, 0x2

    .line 317
    .restart local v4       #radix:I
    const/16 v5, 0x8

    .restart local v5       #shift:I
    goto :goto_1

    .line 318
    .end local v4           #radix:I
    .end local v5           #shift:I
    :cond_5
    const-wide v6, -0x8000000000L

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 320
    const/4 v4, 0x1

    .line 321
    .restart local v4       #radix:I
    const/16 v5, 0x10

    .restart local v5       #shift:I
    goto :goto_1

    .line 324
    .end local v4           #radix:I
    .end local v5           #shift:I
    :cond_6
    const/4 v4, 0x0

    .line 325
    .restart local v4       #radix:I
    const/16 v5, 0x17

    .restart local v5       #shift:I
    goto :goto_1
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 40
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v1, v1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 41
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "ai"
    .parameter "packageItemInfo"
    .parameter "isCustomizedIcon"

    .prologue
    .line 45
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/NubiaThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "pm"
    .parameter "packageName"
    .parameter "iconId"
    .parameter "ai"
    .parameter "packageItemName"

    .prologue
    .line 64
    invoke-static {p1, p4}, Lnubia/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v1, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v1, resourceName:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-static {v1}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 71
    .local v2, retDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 72
    invoke-static {p1}, Lnubia/content/res/IconCustomizer;->isExclude(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 101
    invoke-static {v1, v2}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v3, v2

    .line 103
    .end local v2           #retDrawable:Landroid/graphics/drawable/Drawable;
    .local v3, retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 76
    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #retDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {p1, p4}, Lnubia/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 78
    if-nez v2, :cond_0

    .line 81
    const-string v4, "com.android.calendar2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cn.nubia.calendar.preset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 82
    :cond_3
    new-instance v2, Lnubia/fancydrawable/DateDrawable;

    .end local v2           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2}, Lnubia/fancydrawable/DateDrawable;-><init>()V

    .line 86
    .restart local v2       #retDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    move-object v3, v2

    .line 87
    .end local v2           #retDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 83
    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #retDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v4, "com.android.timemanager"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cn.nubia.deskclock.preset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    :cond_6
    new-instance v2, Lnubia/fancydrawable/TimeDrawable;

    .end local v2           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2}, Lnubia/fancydrawable/TimeDrawable;-><init>()V

    .restart local v2       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 90
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 94
    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v4, v2

    .line 95
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lnubia/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changed"

    .prologue
    .line 112
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lnubia/content/res/IconCustomizer;->clearCache()V

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "changed"
    .parameter "cfg"
    .parameter "cxt"
    .parameter "handler"

    .prologue
    .line 131
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {v0, v1}, Lnubia/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    .line 135
    invoke-static {p0}, Landroid/app/NubiaThemeHelper;->handleExtraConfigurationChanges(I)V

    goto :goto_0
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "changed"

    .prologue
    .line 145
    const/high16 v0, 0x800

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    .line 149
    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 151
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    .line 156
    .end local v0           #i:I
    :goto_1
    return v1

    .line 150
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changed"
    .parameter "cfg"

    .prologue
    .line 177
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lnubia/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lnubia/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/NubiaThemeHelper;->parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 13
    .parameter "value"
    .parameter "requireUnit"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 230
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 232
    .local v8, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 235
    .local v6, len:I
    if-gtz v6, :cond_0

    .line 236
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 293
    :goto_0
    return-object v9

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 241
    .local v0, buf:[C
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 242
    aget-char v9, v0, v5

    const/16 v10, 0xff

    if-le v9, v10, :cond_1

    .line 243
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 241
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 248
    :cond_2
    aget-char v9, v0, v11

    const/16 v10, 0x30

    if-ge v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x39

    if-le v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    .line 249
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 253
    :cond_3
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 254
    .local v7, m:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 255
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, f_str:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, end:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 266
    .local v3, f:F
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    .line 268
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v2, v8, v9}, Landroid/app/NubiaThemeHelper;->parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 269
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    .line 270
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 261
    .end local v3           #f:F
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 272
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #f:F
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 276
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 279
    if-eqz v8, :cond_7

    .line 280
    if-nez p1, :cond_6

    .line 281
    const/4 v9, 0x4

    iput v9, v8, Landroid/util/TypedValue;->type:I

    .line 282
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    iput v9, v8, Landroid/util/TypedValue;->data:I

    .line 288
    :goto_2
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .line 285
    :cond_6
    sget-object v9, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    aget-object v9, v9, v12

    sget-object v10, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v9, v8, v10}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 286
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    goto :goto_2

    .line 293
    .end local v2           #end:Ljava/lang/String;
    .end local v3           #f:F
    .end local v4           #f_str:Ljava/lang/String;
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z
    .locals 5
    .parameter "str"
    .parameter "outValue"
    .parameter "outScale"

    .prologue
    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 340
    sget-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    .local v0, arr$:[Landroid/app/NubiaThemeHelper$UnitEntry;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 341
    .local v3, unit:Landroid/app/NubiaThemeHelper$UnitEntry;
    iget-object v4, v3, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    invoke-static {v3, p1, p2}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 343
    const/4 v4, 0x1

    .line 347
    .end local v3           #unit:Landroid/app/NubiaThemeHelper$UnitEntry;
    :goto_1
    return v4

    .line 340
    .restart local v3       #unit:Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v3           #unit:Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
