.class final Lnubia/ui/util/BlurUtil$1;
.super Ljava/lang/Object;
.source "BlurUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/ui/util/BlurUtil;->asyncSaveBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$h:I

.field final synthetic val$src:Landroid/graphics/Bitmap;

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lnubia/ui/util/BlurUtil$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lnubia/ui/util/BlurUtil$1;->val$w:I

    iput p3, p0, Lnubia/ui/util/BlurUtil$1;->val$h:I

    iput-object p4, p0, Lnubia/ui/util/BlurUtil$1;->val$src:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lnubia/ui/util/BlurUtil$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lnubia/ui/util/BlurUtil$1;->val$w:I

    iget v2, p0, Lnubia/ui/util/BlurUtil$1;->val$h:I

    #calls: Lnubia/ui/util/BlurUtil;->saveWallpaperParams(Landroid/content/Context;II)V
    invoke-static {v0, v1, v2}, Lnubia/ui/util/BlurUtil;->access$000(Landroid/content/Context;II)V

    .line 104
    iget-object v0, p0, Lnubia/ui/util/BlurUtil$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnubia/ui/util/BlurUtil$1;->val$src:Landroid/graphics/Bitmap;

    #calls: Lnubia/ui/util/BlurUtil;->doBlurWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lnubia/ui/util/BlurUtil;->access$100(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 105
    return-void
.end method
