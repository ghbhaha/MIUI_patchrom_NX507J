.class Landroid/widget/NubiaCursorController$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaCursorController$InsertionHandleView;->hideAfterDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/NubiaCursorController$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/NubiaCursorController$InsertionHandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView$1;->this$1:Landroid/widget/NubiaCursorController$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView$1;->this$1:Landroid/widget/NubiaCursorController$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 403
    return-void
.end method
