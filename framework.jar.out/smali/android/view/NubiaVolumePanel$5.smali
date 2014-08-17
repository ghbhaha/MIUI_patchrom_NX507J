.class Landroid/view/NubiaVolumePanel$5;
.super Ljava/lang/Object;
.source "NubiaVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/NubiaVolumePanel;->onDisplaySafeVolumeWarning(I)V
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
    .line 936
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$5;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 938
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$5;->this$0:Landroid/view/NubiaVolumePanel;

    iget-object v0, v0, Landroid/view/NubiaVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->disableSafeMediaVolume()V

    .line 939
    return-void
.end method
