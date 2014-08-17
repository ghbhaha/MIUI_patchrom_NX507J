.class Landroid/view/NubiaVolumePanel$1;
.super Ljava/lang/Object;
.source "NubiaVolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 282
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$1;->this$0:Landroid/view/NubiaVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$1;->this$0:Landroid/view/NubiaVolumePanel;

    #calls: Landroid/view/NubiaVolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/NubiaVolumePanel;->access$300(Landroid/view/NubiaVolumePanel;)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method
