.class Landroid/view/NubiaVolumePanel$2;
.super Landroid/app/Dialog;
.source "NubiaVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/NubiaVolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NubiaVolumePanel;


# direct methods
.method constructor <init>(Landroid/view/NubiaVolumePanel;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$2;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/NubiaVolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$2;->this$0:Landroid/view/NubiaVolumePanel;

    #calls: Landroid/view/NubiaVolumePanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/NubiaVolumePanel;->access$200(Landroid/view/NubiaVolumePanel;)V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
