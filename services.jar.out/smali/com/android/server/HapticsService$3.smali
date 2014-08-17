.class Lcom/android/server/HapticsService$3;
.super Landroid/database/ContentObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HapticsService;->InitHapticsRingSetting()V
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
    .line 251
    iput-object p1, p0, Lcom/android/server/HapticsService$3;->this$0:Lcom/android/server/HapticsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/HapticsService$3;->this$0:Lcom/android/server/HapticsService;

    iget-object v1, p0, Lcom/android/server/HapticsService$3;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/HapticsService;->access$500(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_vibrate_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/HapticsService;->mRingHapticsDefault:I
    invoke-static {v0, v1}, Lcom/android/server/HapticsService;->access$602(Lcom/android/server/HapticsService;I)I

    .line 256
    return-void
.end method
