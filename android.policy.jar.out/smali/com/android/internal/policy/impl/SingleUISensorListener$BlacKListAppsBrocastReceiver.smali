.class Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SingleUISensorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SingleUISensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlacKListAppsBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SingleUISensorListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SingleUISensorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;->this$0:Lcom/android/internal/policy/impl/SingleUISensorListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x2

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;->this$0:Lcom/android/internal/policy/impl/SingleUISensorListener;

    #calls: Lcom/android/internal/policy/impl/SingleUISensorListener;->getScreenState()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SingleUISensorListener;->access$300(Lcom/android/internal/policy/impl/SingleUISensorListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUISensorListener$BlacKListAppsBrocastReceiver;->this$0:Lcom/android/internal/policy/impl/SingleUISensorListener;

    #getter for: Lcom/android/internal/policy/impl/SingleUISensorListener;->mSingleUISensorEvent:Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SingleUISensorListener;->access$400(Lcom/android/internal/policy/impl/SingleUISensorListener;)Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/SingleUISensorListener$SingleUISensorEvent;->closeSingleUI(Landroid/content/Context;)V

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_sensor_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 380
    .local v1, suSensorSwitch:I
    if-nez v1, :cond_0

    .line 381
    const-string v2, "single_ui_mode_sensor_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 386
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #suSensorSwitch:I
    :cond_0
    return-void
.end method
