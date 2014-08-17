.class Lcom/android/server/pm/InstallerHelper$ApkInfo;
.super Ljava/lang/Object;
.source "InstallerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApkInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallerHelper;

.field private uri:Landroid/net/Uri;

.field private versionCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallerHelper;ILandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "versionCode"
    .parameter "uri"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/pm/InstallerHelper$ApkInfo;->this$0:Lcom/android/server/pm/InstallerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p2, p0, Lcom/android/server/pm/InstallerHelper$ApkInfo;->versionCode:I

    .line 277
    iput-object p3, p0, Lcom/android/server/pm/InstallerHelper$ApkInfo;->uri:Landroid/net/Uri;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/InstallerHelper$ApkInfo;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/pm/InstallerHelper$ApkInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/InstallerHelper$ApkInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/pm/InstallerHelper$ApkInfo;->versionCode:I

    return v0
.end method
