.class public abstract Landroid/os/nubia/breathlight/IBreathinglightService$Stub;
.super Landroid/os/Binder;
.source "IBreathinglightService.java"

# interfaces
.implements Landroid/os/nubia/breathlight/IBreathinglightService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/nubia/breathlight/IBreathinglightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/nubia/breathlight/IBreathinglightService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.nubia.breathlight.IBreathinglightService"

.field static final TRANSACTION_clearUnreadEvent:I = 0x3

.field static final TRANSACTION_enterScreenOffState:I = 0x9

.field static final TRANSACTION_getMinGrade:I = 0x5

.field static final TRANSACTION_handleNotification:I = 0x8

.field static final TRANSACTION_setBreathLightAuto:I = 0x7

.field static final TRANSACTION_setBreathLightLevel:I = 0x6

.field static final TRANSACTION_setBrightness:I = 0x1

.field static final TRANSACTION_setKeycodeBrightness:I = 0x2

.field static final TRANSACTION_setMinGrade:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/nubia/breathlight/IBreathinglightService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/nubia/breathlight/IBreathinglightService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/nubia/breathlight/IBreathinglightService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/nubia/breathlight/IBreathinglightService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->setBrightness(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->setKeycodeBrightness(II)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_3
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->clearUnreadEvent()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->setMinGrade(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->getMinGrade()I

    move-result v2

    .line 86
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v2           #_result:I
    :sswitch_6
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->setBreathLightLevel(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 104
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->setBreathLightAuto(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v4

    .line 103
    goto :goto_1

    .line 110
    :sswitch_8
    const-string v5, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 115
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->handleNotification(Ljava/lang/String;Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_1
    move v1, v4

    .line 114
    goto :goto_2

    .line 121
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v4, "android.os.nubia.breathlight.IBreathinglightService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/os/nubia/breathlight/IBreathinglightService$Stub;->enterScreenOffState()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
