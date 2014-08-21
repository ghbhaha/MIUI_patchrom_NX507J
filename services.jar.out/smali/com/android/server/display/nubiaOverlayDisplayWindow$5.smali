.class Lcom/android/server/display/nubiaOverlayDisplayWindow$5;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 785
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "update  onDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    .line 804
    :cond_0
    return-void
.end method
