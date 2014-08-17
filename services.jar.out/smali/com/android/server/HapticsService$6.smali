.class Lcom/android/server/HapticsService$6;
.super Landroid/database/ContentObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HapticsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HapticsService;


# direct methods
.method constructor <init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/HapticsService$6;->this$0:Lcom/android/server/HapticsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/HapticsService$6;->this$0:Lcom/android/server/HapticsService;

    iget-object v1, p0, Lcom/android/server/HapticsService$6;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/HapticsService;->access$500(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/HapticsService;->mFeedbackEnabled:I
    invoke-static {v0, v1}, Lcom/android/server/HapticsService;->access$1702(Lcom/android/server/HapticsService;I)I

    .line 408
    return-void
.end method
