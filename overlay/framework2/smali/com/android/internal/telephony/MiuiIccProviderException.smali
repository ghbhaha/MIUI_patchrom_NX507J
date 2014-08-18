.class public Lcom/android/internal/telephony/MiuiIccProviderException;
.super Ljava/lang/RuntimeException;
.source "MiuiIccProviderException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MiuiIccProviderException$1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    .line 12
    return-void
.end method

.method public static getErrorCauseFromException(Ljava/lang/Throwable;)I
    .locals 5
    .parameter "e"

    .prologue
    .line 19
    const/4 v2, 0x0

    .line 20
    .local v2, ret:I
    if-eqz p0, :cond_0

    .line 21
    instance-of v3, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 22
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 23
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProviderException$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 32
    const/16 v2, -0x3e9

    .line 40
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return v2

    .line 25
    .restart local v0       #ce:Lcom/android/internal/telephony/CommandException;
    :pswitch_0
    const/16 v2, -0x3ea

    .line 26
    goto :goto_0

    .line 29
    :pswitch_1
    const/16 v2, -0x3ef

    .line 30
    goto :goto_0

    .line 35
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    instance-of v3, p0, Lcom/android/internal/telephony/MiuiIccProviderException;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 36
    check-cast v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    .line 37
    .local v1, ipe:Lcom/android/internal/telephony/MiuiIccProviderException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MiuiIccProviderException;->getError()I

    move-result v2

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getError()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    return v0
.end method
