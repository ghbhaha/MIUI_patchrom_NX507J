.class Landroid/view/NubiaVolumePanel$3;
.super Ljava/lang/Object;
.source "NubiaVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Landroid/view/NubiaVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$3;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$3;->this$0:Landroid/view/NubiaVolumePanel;

    const/4 v1, -0x1

    #setter for: Landroid/view/NubiaVolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Landroid/view/NubiaVolumePanel;->access$402(Landroid/view/NubiaVolumePanel;I)I

    .line 308
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$3;->this$0:Landroid/view/NubiaVolumePanel;

    #getter for: Landroid/view/NubiaVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/view/NubiaVolumePanel;->access$500(Landroid/view/NubiaVolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/NubiaVolumePanel$3;->this$0:Landroid/view/NubiaVolumePanel;

    #getter for: Landroid/view/NubiaVolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Landroid/view/NubiaVolumePanel;->access$400(Landroid/view/NubiaVolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 309
    return-void
.end method
