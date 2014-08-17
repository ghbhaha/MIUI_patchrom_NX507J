.class Lnubia/ui/widget/BezierView$1;
.super Landroid/os/Handler;
.source "BezierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/ui/widget/BezierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/ui/widget/BezierView;


# direct methods
.method constructor <init>(Lnubia/ui/widget/BezierView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lnubia/ui/widget/BezierView$1;->this$0:Lnubia/ui/widget/BezierView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 48
    iget-object v0, p0, Lnubia/ui/widget/BezierView$1;->this$0:Lnubia/ui/widget/BezierView;

    invoke-static {v0}, Lnubia/ui/widget/BezierView;->access$004(Lnubia/ui/widget/BezierView;)I

    .line 49
    iget-object v0, p0, Lnubia/ui/widget/BezierView$1;->this$0:Lnubia/ui/widget/BezierView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 50
    return-void
.end method
