.class public Lnubia/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field public static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance"

.field static DBG:Z = false

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final NUBIA_NAME:Ljava/lang/String; = "nubia-res"

.field public static final NUBIA_PACKAGE:Ljava/lang/String; = "com.nubia"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/system/theme/current/"

.field public static final THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData; = null

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final sAppliedLockstyleConfigPath:Ljava/lang/String;

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lnubia/content/res/ThemeResourcesSystem;


# instance fields
.field protected mHasValue:Z

.field protected mHasWrapped:Z

.field protected mPackageZipFile:Lnubia/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/Resources;

.field protected mSupportWrapper:Z

.field protected mWrapped:Lnubia/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    sput-boolean v4, Lnubia/content/res/ThemeResources;->DBG:Z

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme/current/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeResources;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lnubia/content/res/ThemeResources$MetaData;

    sput-object v0, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    .line 55
    sget-object v0, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    new-instance v1, Lnubia/content/res/ThemeResources$MetaData;

    const-string v2, "/system/media/theme/default/"

    invoke-direct {v1, v2, v3, v3, v3}, Lnubia/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v4

    .line 56
    sget-object v0, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    new-instance v1, Lnubia/content/res/ThemeResources$MetaData;

    const-string v2, "/data/system/theme/current/"

    invoke-direct {v1, v2, v3, v3, v3}, Lnubia/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v3

    .line 57
    return-void
.end method

.method protected constructor <init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 1
    .parameter "wrappedResources"
    .parameter "resources"
    .parameter "fileName"
    .parameter "metaData"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    .line 68
    iput-object p2, p0, Lnubia/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    .line 69
    invoke-static {p4, p3, p2}, Lnubia/content/res/ThemeZipFile;->getThemeZipFile(Lnubia/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lnubia/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    .line 71
    const-string v0, "icons"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnubia/content/res/ThemeResources;->mSupportWrapper:Z

    .line 72
    invoke-virtual {p0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final clearLockWallpaperCache()V
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    sput-wide v0, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "context"

    .prologue
    .line 91
    const/4 v5, 0x0

    .line 93
    .local v5, result:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    invoke-virtual {v8}, Lnubia/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v2

    .line 94
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    sget-wide v8, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lnubia/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 98
    const/4 v8, 0x0

    sput-object v8, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 100
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 101
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .local v7, width:I
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    .local v3, height:I
    if-le v7, v3, :cond_0

    .line 104
    const-string v8, "LockWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong display metrics for width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move v6, v7

    .line 107
    .local v6, temp:I
    move v7, v3

    .line 108
    move v3, v6

    .line 110
    .end local v6           #temp:I
    :cond_0
    new-instance v8, Lnubia/util/InputStreamLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnubia/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v7, v3}, Lnubia/util/ImageUtils;->getBitmap(Lnubia/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v8, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v7           #width:I
    :cond_1
    :goto_0
    sget-object v5, Lnubia/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 121
    :cond_2
    return-object v5

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResources;
    .locals 1
    .parameter "originalResources"

    .prologue
    .line 131
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0}, Lnubia/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    .line 133
    :cond_0
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lnubia/content/res/ThemeResourcesSystem;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lnubia/content/res/ThemeResources;->sSystem:Lnubia/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;
    .locals 4
    .parameter "originalResources"
    .parameter "themeFileName"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, finalThemeResources:Lnubia/content/res/ThemeResources;
    const/4 v2, 0x0

    .line 156
    .local v2, i:I
    :goto_0
    sget-object v3, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 157
    new-instance v1, Lnubia/content/res/ThemeResources;

    sget-object v3, Lnubia/content/res/ThemeResources;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v2

    invoke-direct {v1, v0, p0, p1, v3}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 159
    .end local v0           #finalThemeResources:Lnubia/content/res/ThemeResources;
    .local v1, finalThemeResources:Lnubia/content/res/ThemeResources;
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    .end local v1           #finalThemeResources:Lnubia/content/res/ThemeResources;
    .restart local v0       #finalThemeResources:Lnubia/content/res/ThemeResources;
    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1}, Lnubia/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 171
    .local v0, result:Z
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1}, Lnubia/content/res/ThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    .line 172
    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v1

    or-int/2addr v0, v1

    .line 174
    :cond_1
    invoke-virtual {p0}, Lnubia/content/res/ThemeResources;->hasValuesInner()Z

    move-result v1

    iput-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasValue:Z

    .line 175
    return v0

    .line 171
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .parameter "resourceName"

    .prologue
    .line 186
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 187
    .local v0, contains:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1}, Lnubia/content/res/ThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 189
    :cond_0
    return v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 211
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    .local v0, charSequence:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "cookieType"
    .parameter "fileName"

    .prologue
    .line 225
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 246
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 247
    .local v0, fileInfo:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 249
    :cond_0
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 271
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 272
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 274
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lnubia/content/res/ThemeResources;->mHasValue:Z

    return v0
.end method

.method protected hasValuesInner()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mPackageZipFile:Lnubia/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lnubia/content/res/ThemeZipFile;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnubia/content/res/ThemeResources;->mHasWrapped:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValuesInner()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
