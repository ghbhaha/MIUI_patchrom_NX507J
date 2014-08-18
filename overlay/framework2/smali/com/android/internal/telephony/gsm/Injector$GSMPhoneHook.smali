.class Lcom/android/internal/telephony/gsm/Injector$GSMPhoneHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GSMPhoneHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_acceptCall(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 14
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeMessages(I)V

    .line 15
    return-void
.end method

.method public static checkAndNotifyDeviceId(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V
    .locals 3
    .parameter "phone"
    .parameter "msg"

    .prologue
    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeviceId(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phone"
    .parameter "deviceId"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->checkEmptyDeviceId(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
