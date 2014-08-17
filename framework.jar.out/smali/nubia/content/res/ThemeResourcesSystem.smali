.class public Lnubia/content/res/ThemeResourcesSystem;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static sIcons:Lnubia/content/res/ThemeResources;

.field private static sLockscreen:Lnubia/content/res/ThemeResources;

.field private static sNubia:Lnubia/content/res/ThemeResources;

.field private static sSystemUI:Lnubia/content/res/ThemeResources;


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 1
    .parameter "wrappedResources"
    .parameter "resources"
    .parameter "metaData"

    .prologue
    .line 23
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 24
    iget-object v0, p3, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    iput-object v0, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "fullName"
    .parameter "realName"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, result:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const-string v1, "lock_screen_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p2}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 47
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 48
    :cond_1
    return-object v0

    .line 40
    :cond_2
    const-string/jumbo v1, "status_bar_toggle_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-nez v1, :cond_3

    .line 42
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-static {v1, v2}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v1

    sput-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    .line 43
    :cond_3
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "fullName"
    .parameter "realName"

    .prologue
    .line 60
    const-string v1, "default_wallpaper.jpg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, result:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const-string/jumbo v1, "sym_def_app_icon.png"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 68
    :cond_2
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResourcesSystem;
    .locals 4
    .parameter "originalResources"

    .prologue
    .line 81
    const-string v3, "icons"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    .line 82
    const-string v3, "lockscreen"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    .line 83
    const-string/jumbo v3, "nubia-res"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, finalThemeResources:Lnubia/content/res/ThemeResourcesSystem;
    const/4 v1, 0x0

    .line 87
    .local v1, i:I
    :goto_0
    sget-object v3, Lnubia/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 88
    new-instance v2, Lnubia/content/res/ThemeResourcesSystem;

    sget-object v3, Lnubia/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v1

    invoke-direct {v2, v0, p0, v3}, Lnubia/content/res/ThemeResourcesSystem;-><init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 90
    .local v2, wrappedThemeResources:Lnubia/content/res/ThemeResourcesSystem;
    move-object v0, v2

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_0

    .line 93
    .end local v2           #wrappedThemeResources:Lnubia/content/res/ThemeResourcesSystem;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 99
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 100
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 101
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 103
    :cond_0
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 193
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 203
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "resources"
    .parameter "fileName"

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, result:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 116
    .local v2, info:Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_1

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iget v0, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 119
    .local v0, density:I
    if-lez v0, :cond_0

    .line 120
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 124
    :cond_0
    :try_start_0
    iget-object v5, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 129
    :try_start_1
    iget-object v5, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v0           #density:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v4

    .line 130
    .restart local v0       #density:I
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    iget-object v5, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 129
    :try_start_4
    iget-object v6, v2, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 132
    :goto_1
    throw v5

    .line 130
    :catch_3
    move-exception v1

    .line 131
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 145
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 213
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lnubia/content/res/ThemeResources;->mWrapped:Lnubia/content/res/ThemeResources;

    check-cast v1, Lnubia/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 227
    :cond_1
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"

    .prologue
    .line 150
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, result:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 152
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    :cond_0
    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .parameter "type"
    .parameter "fileName"

    .prologue
    .line 160
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, realName:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 162
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 169
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 171
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    :cond_0
    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    :cond_1
    return-object v0
.end method

.method public hasAwesomeLockscreen()Z
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "iconName"

    .prologue
    .line 237
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

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

.method public resetIcons()V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 250
    return-void
.end method
