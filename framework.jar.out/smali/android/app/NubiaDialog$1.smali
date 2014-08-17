.class Landroid/app/NubiaDialog$1;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NubiaDialog;


# direct methods
.method constructor <init>(Landroid/app/NubiaDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mbutton_ok:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$000(Landroid/app/NubiaDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$100(Landroid/app/NubiaDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$100(Landroid/app/NubiaDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    :cond_1
    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$400(Landroid/app/NubiaDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 87
    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mbutton_cancel:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$200(Landroid/app/NubiaDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$300(Landroid/app/NubiaDialog;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Landroid/app/NubiaDialog$1;->this$0:Landroid/app/NubiaDialog;

    #getter for: Landroid/app/NubiaDialog;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/app/NubiaDialog;->access$300(Landroid/app/NubiaDialog;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
