.class Landroid/view/EtViewInfo;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# instance fields
.field path:Ljava/lang/String;

.field sameTextIndex:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "path"

    .prologue
    .line 2415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2416
    iput-object p1, p0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 2417
    iput-object p2, p0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    .line 2418
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/EtViewInfo;->sameTextIndex:I

    .line 2419
    return-void
.end method
