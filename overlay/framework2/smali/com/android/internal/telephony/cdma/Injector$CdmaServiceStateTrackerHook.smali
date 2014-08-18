.class Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CdmaServiceStateTrackerHook"
.end annotation


# static fields
.field private static sLocalReceiver:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after_CdmaServiceStateTracker(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "tracker"
    .parameter "phone"

    .prologue
    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 64
    .local v1, receiver:Landroid/content/BroadcastReceiver;
    sget-object v2, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public static after_dispose(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    sget-object v0, Lcom/android/internal/telephony/cdma/Injector$CdmaServiceStateTrackerHook;->sLocalReceiver:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method
