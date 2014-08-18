.class Lcom/android/internal/telephony/cdma/Injector$CDMAPhoneHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CDMAPhoneHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after_getDeviceId(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phone"
    .parameter "deviceId"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->checkEmptyDeviceId(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static before_acceptCall(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 20
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeMessages(I)V

    .line 21
    return-void
.end method

.method public static checkAndNotifyDeviceId(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/os/Message;)V
    .locals 3
    .parameter "phone"
    .parameter "msg"

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/telephony/Injector$PhoneBaseHook;->checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
