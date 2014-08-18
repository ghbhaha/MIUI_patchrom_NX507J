.class public Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPhoneNotifierHook"
.end annotation


# static fields
.field private static final HANG_UP_DELAY:I = 0x1f4

.field static sDelayHangupRunnable:Ljava/lang/Runnable;

.field static sHandler:Landroid/os/Handler;

.field static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_notifyPhoneState(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "sender"

    .prologue
    .line 122
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sDelayHangupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->notifyPhoneStateDelay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyPhoneStateDelay()Z
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 137
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    .line 140
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sDelayHangupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sDelayHangupRunnable:Ljava/lang/Runnable;

    .line 150
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sDelayHangupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/telephony/Injector$DefaultPhoneNotifierHook;->sDelayHangupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
