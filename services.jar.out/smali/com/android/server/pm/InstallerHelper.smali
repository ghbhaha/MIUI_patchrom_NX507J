.class public Lcom/android/server/pm/InstallerHelper;
.super Ljava/lang/Object;
.source "InstallerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallerHelper$1;,
        Lcom/android/server/pm/InstallerHelper$ApkInfo;,
        Lcom/android/server/pm/InstallerHelper$Type;,
        Lcom/android/server/pm/InstallerHelper$Result;
    }
.end annotation


# instance fields
.field private final DATABASE_NAME:Ljava/lang/String;

.field private final DATABASE_PATH:Ljava/lang/String;

.field private final DATA_APP_DIR:Ljava/lang/String;

.field private final DEBUG:Z

.field private final KEY_PREF:Ljava/lang/String;

.field private final PRESET_DIR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/android/server/pm/PackageDatabaseHelper;

.field private mInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallerHelper$ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPresetPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallerHelper$ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestorepackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallerHelper;->DEBUG:Z

    .line 26
    const-string v0, "PresetAppInstaller"

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "com.nubia.package.preset"

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->DATABASE_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "persist.sys.package.preset"

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->KEY_PREF:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/preset_apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->PRESET_DIR:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->DATA_APP_DIR:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nubia.package.preset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->DATABASE_PATH:Ljava/lang/String;

    .line 48
    const-string v0, "PresetAppInstaller"

    const-string v1, "PresetPackagesInstaller create"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/InstallerHelper;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->initDatabase()V

    .line 51
    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->initPresetPackages()V

    .line 52
    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->initInstalledPackages()V

    .line 53
    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->initRestorePackages()V

    .line 55
    return-void
.end method

.method private compareVersion(Ljava/lang/String;)Lcom/android/server/pm/InstallerHelper$Result;
    .locals 9
    .parameter "packageName"

    .prologue
    .line 102
    sget-object v4, Lcom/android/server/pm/InstallerHelper$Result;->INSTALLED_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    .line 103
    .local v4, result:Lcom/android/server/pm/InstallerHelper$Result;
    sget-object v6, Lcom/android/server/pm/InstallerHelper$Type;->PRESET:Lcom/android/server/pm/InstallerHelper$Type;

    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/InstallerHelper;->getVersion(Ljava/lang/String;Lcom/android/server/pm/InstallerHelper$Type;)I

    move-result v2

    .line 104
    .local v2, presetVersion:I
    sget-object v6, Lcom/android/server/pm/InstallerHelper$Type;->INSTALLED:Lcom/android/server/pm/InstallerHelper$Type;

    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/InstallerHelper;->getVersion(Ljava/lang/String;Lcom/android/server/pm/InstallerHelper$Type;)I

    move-result v0

    .line 105
    .local v0, installedVersion:I
    sget-object v6, Lcom/android/server/pm/InstallerHelper$Type;->RESTORE:Lcom/android/server/pm/InstallerHelper$Type;

    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/InstallerHelper;->getVersion(Ljava/lang/String;Lcom/android/server/pm/InstallerHelper$Type;)I

    move-result v3

    .line 106
    .local v3, restoreVersion:I
    const-string v6, "PresetAppInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compareVersion presetVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | installedVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | restoreVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v6, "PresetAppInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRestored:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallerHelper;->isRestored(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallerHelper;->isRestored(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eq v0, v3, :cond_0

    move-object v5, v4

    .line 119
    .end local v4           #result:Lcom/android/server/pm/InstallerHelper$Result;
    .local v5, result:Lcom/android/server/pm/InstallerHelper$Result;
    :goto_0
    return-object v5

    .line 112
    .end local v5           #result:Lcom/android/server/pm/InstallerHelper$Result;
    .restart local v4       #result:Lcom/android/server/pm/InstallerHelper$Result;
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    .local v1, maxVersion:I
    if-ne v2, v1, :cond_1

    .line 114
    sget-object v4, Lcom/android/server/pm/InstallerHelper$Result;->PRESET_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    .line 116
    :cond_1
    if-ne v0, v1, :cond_2

    .line 117
    sget-object v4, Lcom/android/server/pm/InstallerHelper$Result;->INSTALLED_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    :cond_2
    move-object v5, v4

    .line 119
    .end local v4           #result:Lcom/android/server/pm/InstallerHelper$Result;
    .restart local v5       #result:Lcom/android/server/pm/InstallerHelper$Result;
    goto :goto_0
.end method

.method private getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 12
    .parameter "archiveFilePath"
    .parameter "flags"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 255
    new-instance v10, Landroid/content/pm/PackageParser;

    invoke-direct {v10, p1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 256
    .local v10, packageParser:Landroid/content/pm/PackageParser;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 257
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 258
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v11, sourceFile:Ljava/io/File;
    invoke-virtual {v10, v11, p1, v9, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 261
    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-object v1

    .line 264
    :cond_0
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v10, v0, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 267
    :cond_1
    new-instance v8, Landroid/content/pm/PackageUserState;

    invoke-direct {v8}, Landroid/content/pm/PackageUserState;-><init>()V

    .local v8, state:Landroid/content/pm/PackageUserState;
    move v2, p2

    move-wide v5, v3

    move-object v7, v1

    .line 268
    invoke-static/range {v0 .. v8}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersion(Ljava/lang/String;Lcom/android/server/pm/InstallerHelper$Type;)I
    .locals 5
    .parameter "packageName"
    .parameter "type"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    const/4 v2, -0x1

    .line 125
    .local v2, version:I
    sget-object v3, Lcom/android/server/pm/InstallerHelper$1;->$SwitchMap$com$android$server$pm$InstallerHelper$Type:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 142
    #getter for: Lcom/android/server/pm/InstallerHelper$ApkInfo;->versionCode:I
    invoke-static {v0}, Lcom/android/server/pm/InstallerHelper$ApkInfo;->access$100(Lcom/android/server/pm/InstallerHelper$ApkInfo;)I

    move-result v2

    .line 144
    :cond_1
    return v2

    .line 127
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    check-cast v0, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    .line 128
    .restart local v0       #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/pm/InstallerHelper;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    check-cast v0, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    .line 131
    .restart local v0       #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/pm/InstallerHelper;->mRestorepackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 134
    .local v1, value:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasDatabase()Z
    .locals 4

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallerHelper;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, file:Ljava/io/File;
    const-string v1, "PresetAppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDatabase DATABASE_PATH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/InstallerHelper;->DATABASE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private initDatabase()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDatabase hasDatabase():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->hasDatabase()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | isRestoreSetting():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->isRestoreSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/android/server/pm/PackageDatabaseHelper;

    iget-object v1, p0, Lcom/android/server/pm/InstallerHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.nubia.package.preset"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mDatabaseHelper:Lcom/android/server/pm/PackageDatabaseHelper;

    .line 183
    return-void
.end method

.method private initInstalledPackages()V
    .locals 12

    .prologue
    .line 210
    const-string v7, "PresetAppInstaller"

    const-string v8, "initInstalledPackages"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/InstallerHelper;->mInstalledPackages:Ljava/util/Map;

    .line 212
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/InstallerHelper;->DATA_APP_DIR:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, directory:Ljava/io/File;
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initInstalledPackages directory:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 218
    .local v6, list:[Ljava/io/File;
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 219
    .local v2, file:Ljava/io/File;
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initInstalledPackages file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/InstallerHelper;->isPackageFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/InstallerHelper;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 222
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_3

    .line 218
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_3
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRestorePackages packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "versionCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v7, p0, Lcom/android/server/pm/InstallerHelper;->mInstalledPackages:Ljava/util/Map;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v9, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/pm/InstallerHelper$ApkInfo;-><init>(Lcom/android/server/pm/InstallerHelper;ILandroid/net/Uri;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private initPresetPackages()V
    .locals 12

    .prologue
    .line 186
    const-string v7, "PresetAppInstaller"

    const-string v8, "initPresetPackages"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    .line 188
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/InstallerHelper;->PRESET_DIR:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, directory:Ljava/io/File;
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPresetPackages directory:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 207
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 194
    .local v6, list:[Ljava/io/File;
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 195
    .local v2, file:Ljava/io/File;
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPresetPackages file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/InstallerHelper;->isPackageFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/InstallerHelper;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 198
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_3

    .line 194
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_3
    const-string v7, "PresetAppInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPresetPackages packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v7, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v9, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/pm/InstallerHelper$ApkInfo;-><init>(Lcom/android/server/pm/InstallerHelper;ILandroid/net/Uri;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private initRestorePackages()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "PresetAppInstaller"

    const-string v1, "initRestorePackages"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mRestorepackages:Ljava/util/Map;

    .line 236
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mDatabaseHelper:Lcom/android/server/pm/PackageDatabaseHelper;

    const-string v1, "packages"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageDatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, packageName:Ljava/lang/String;
    const-string v0, "version_code"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 244
    .local v8, versionCode:I
    const-string v0, "PresetAppInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRestorePackages packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "versionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mRestorepackages:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #versionCode:I
    :cond_2
    if-eqz v6, :cond_0

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 250
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isPackageFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoved()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/InstallerHelper;->isRestored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallerHelper;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestoreSetting()Z
    .locals 3

    .prologue
    .line 166
    const-string v1, "persist.sys.package.preset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, value:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isRestored(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mRestorepackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private saveState()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "persist.sys.package.preset"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method


# virtual methods
.method public declared-synchronized getPackageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 62
    monitor-enter p0

    :try_start_0
    const-string v3, "PresetAppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageUri packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/InstallerHelper;->mPackageName:Ljava/lang/String;

    .line 66
    const-string v3, "PresetAppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageUri isRestored:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallerHelper;->isRestored(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | isInstalled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallerHelper;->isInstalled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/android/server/pm/InstallerHelper;->isRemoved()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 74
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallerHelper;->compareVersion(Ljava/lang/String;)Lcom/android/server/pm/InstallerHelper$Result;

    move-result-object v1

    .line 75
    .local v1, result:Lcom/android/server/pm/InstallerHelper$Result;
    const-string v3, "PresetAppInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageUri result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v3, Lcom/android/server/pm/InstallerHelper$Result;->PRESET_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    .line 78
    .local v0, info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    #getter for: Lcom/android/server/pm/InstallerHelper$ApkInfo;->uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/pm/InstallerHelper$ApkInfo;->access$000(Lcom/android/server/pm/InstallerHelper$ApkInfo;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v0           #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    .end local v1           #result:Lcom/android/server/pm/InstallerHelper$Result;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPresetPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDatabase()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 84
    const-string v6, "PresetAppInstaller"

    const-string v7, "refreshDatabase"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v6, p0, Lcom/android/server/pm/InstallerHelper;->mDatabaseHelper:Lcom/android/server/pm/PackageDatabaseHelper;

    const-string v7, "packages"

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/pm/PackageDatabaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, count:I
    const-string v6, "PresetAppInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshDatabase delete count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/server/pm/InstallerHelper;->getPresetPackages()Ljava/util/Set;

    move-result-object v4

    .line 88
    .local v4, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, packageName:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "package_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lcom/android/server/pm/InstallerHelper;->mPresetPackages:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallerHelper$ApkInfo;

    .line 92
    .local v2, info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    const-string v6, "version_code"

    #getter for: Lcom/android/server/pm/InstallerHelper$ApkInfo;->versionCode:I
    invoke-static {v2}, Lcom/android/server/pm/InstallerHelper$ApkInfo;->access$100(Lcom/android/server/pm/InstallerHelper$ApkInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-object v6, p0, Lcom/android/server/pm/InstallerHelper;->mDatabaseHelper:Lcom/android/server/pm/PackageDatabaseHelper;

    const-string v7, "packages"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/pm/PackageDatabaseHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 95
    .end local v2           #info:Lcom/android/server/pm/InstallerHelper$ApkInfo;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
