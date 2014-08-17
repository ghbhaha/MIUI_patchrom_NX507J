.class Landroid/view/NubiaVolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "NubiaVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NubiaVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field nubiaVolumeBar:Lcom/android/internal/widget/NubiaVolumeBar;

.field seekbarView:Landroid/widget/SeekBar;

.field streamType:I

.field final synthetic this$0:Landroid/view/NubiaVolumePanel;


# direct methods
.method private constructor <init>(Landroid/view/NubiaVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$StreamControl;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/NubiaVolumePanel;Landroid/view/NubiaVolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/view/NubiaVolumePanel$StreamControl;-><init>(Landroid/view/NubiaVolumePanel;)V

    return-void
.end method
