.class Lcom/android/server/display/nubiaOverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "nubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$000(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    .line 122
    return-void
.end method
