.class Lnubia/ui/widget/ListPopupWindowBuilder$1;
.super Ljava/lang/Object;
.source "ListPopupWindowBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/ui/widget/ListPopupWindowBuilder;->initBezierContainer(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/ui/widget/ListPopupWindowBuilder;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lnubia/ui/widget/ListPopupWindowBuilder;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lnubia/ui/widget/ListPopupWindowBuilder$1;->this$0:Lnubia/ui/widget/ListPopupWindowBuilder;

    iput-object p2, p0, Lnubia/ui/widget/ListPopupWindowBuilder$1;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lnubia/ui/widget/ListPopupWindowBuilder$1;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 84
    return-void
.end method
