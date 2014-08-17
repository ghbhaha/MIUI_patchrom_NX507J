.class Landroid/widget/NubiaCursorController$FloatPanelViewController$2;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;


# direct methods
.method constructor <init>(Landroid/widget/NubiaCursorController$FloatPanelViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Landroid/widget/NubiaCursorController$FloatPanelViewController$2;->this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/widget/NubiaCursorController$FloatPanelViewController$2;->this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    #calls: Landroid/widget/NubiaCursorController$FloatPanelViewController;->updatePosition()V
    invoke-static {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->access$000(Landroid/widget/NubiaCursorController$FloatPanelViewController;)V

    .line 327
    return-void
.end method
