.class Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;
.super Landroid/os/AsyncTask;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PresetPackagesInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private mObserver:Landroid/content/pm/IPackageInstallObserver;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "flags"
    .parameter "observer"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mUri:Landroid/net/Uri;

    .line 203
    iput p3, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mFlags:I

    .line 204
    iput-object p4, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mObserver:Landroid/content/pm/IPackageInstallObserver;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;Lcom/android/server/pm/PresetPackagesInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;-><init>(Lcom/android/server/pm/PresetPackagesInstaller;Landroid/net/Uri;ILandroid/content/pm/IPackageInstallObserver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 209
    const-string v0, "PresetAppInstaller"

    const-string v1, "InstallTask doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/pm/PresetPackagesInstaller;->access$700(Lcom/android/server/pm/PresetPackagesInstaller;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mObserver:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p0, Lcom/android/server/pm/PresetPackagesInstaller$InstallTask;->mFlags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 211
    return-object v4
.end method
