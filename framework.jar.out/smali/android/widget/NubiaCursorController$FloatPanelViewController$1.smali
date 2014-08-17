.class Landroid/widget/NubiaCursorController$FloatPanelViewController$1;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaCursorController$FloatPanelViewController;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/NubiaCursorController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field final synthetic val$this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method constructor <init>(Landroid/widget/NubiaCursorController$FloatPanelViewController;Landroid/widget/NubiaCursorController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Landroid/widget/NubiaCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    iput-object p2, p0, Landroid/widget/NubiaCursorController$FloatPanelViewController$1;->val$this$0:Landroid/widget/NubiaCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/NubiaCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    #calls: Landroid/widget/NubiaCursorController$FloatPanelViewController;->updatePosition()V
    invoke-static {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->access$000(Landroid/widget/NubiaCursorController$FloatPanelViewController;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
