.class final Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;
.super Ljava/lang/Object;
.source "Injector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Injector$PhoneBaseHook;->checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cm:Lcom/android/internal/telephony/CommandsInterface;

.field final synthetic val$phone:Lcom/android/internal/telephony/PhoneBase;

.field final synthetic val$times:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p2, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$cm:Lcom/android/internal/telephony/CommandsInterface;

    iput p3, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$times:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 68
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x15

    iget v4, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$times:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x9

    iget v4, p0, Lcom/android/internal/telephony/Injector$PhoneBaseHook$1;->val$times:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    goto :goto_0
.end method
