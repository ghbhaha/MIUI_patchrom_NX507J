.class Lcom/android/internal/telephony/dataconnection/Injector$DcTrackerHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DcTrackerHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMmsDataEnabled(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 4
    .parameter "tracker"

    .prologue
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 16
    .local v0, apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 5
    .parameter "apnContext"
    .parameter "apn"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 24
    .local v0, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmiui/net/FirewallManager;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local v0           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    return-void
.end method

.method public static onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 4
    .parameter "apnContext"
    .parameter "apn"

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 34
    .local v0, dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmiui/net/FirewallManager;->onDataDisconnected(ILjava/lang/String;)V

    .line 39
    .end local v0           #dcac:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    return-void
.end method
