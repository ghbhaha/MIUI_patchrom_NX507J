.class Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaCursorController$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaCursorController$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    iget-object v0, v0, Landroid/widget/NubiaCursorController;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/NubiaCursorController;)V

    .line 1132
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;->this$0:Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    #getter for: Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;
    invoke-static {v0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->access$500(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1133
    return-void
.end method
