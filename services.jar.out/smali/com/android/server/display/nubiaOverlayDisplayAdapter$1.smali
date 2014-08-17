.class Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_overlay_display_devices"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1$1;

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$000(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    .line 126
    return-void
.end method
