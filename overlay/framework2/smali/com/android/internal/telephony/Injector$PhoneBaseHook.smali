.class public Lcom/android/internal/telephony/Injector$PhoneBaseHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneBaseHook"
.end annotation


# static fields
.field public static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field public static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field public static final EVENT_GET_IMEI_DONE:I = 0x9

.field private static final MAX_RETRY_DEVICE_ID_COUNT:I = 0x32

.field private static final RETRY_DEVICE_ID_INTERVAL_BASE:I = 0xc8

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "PhoneBaseHook"

    sput-object v0, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 6
    .parameter "deviceId"
    .parameter "phone"
    .parameter "cm"
    .parameter "retryTimes"

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    sget-object v3, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->TAG:Ljava/lang/String;

    const-string v4, "Get device id failed since it is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v3, 0x32

    if-ge p3, v3, :cond_1

    .line 59
    add-int/lit8 v2, p3, 0x1

    .line 60
    .local v2, times:I
    mul-int v3, v2, v2

    mul-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v0, v3

    .line 61
    .local v0, delay:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 62
    const-wide v0, 0x7fffffffffffffffL

    .line 64
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;

    invoke-direct {v3, p1, p2, v2}, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .end local v0           #delay:J
    .end local v2           #times:I
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get device id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p1, p0}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->sendDeviceIdReadyBroadcast(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 79
    invoke-static {p1, p0}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->setDeviceIdSystemProperty(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkEmptyDeviceId(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phone"
    .parameter "deviceId"

    .prologue
    .line 42
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, context:Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 47
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 48
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    .line 52
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-object p1
.end method

.method public static sendDeviceIdReadyBroadcast(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 3
    .parameter "phone"
    .parameter "deviceId"

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static setDeviceIdSystemProperty(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "deviceId"

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "ro.ril.miui.imei"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
