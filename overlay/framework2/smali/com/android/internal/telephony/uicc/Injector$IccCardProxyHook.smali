.class Lcom/android/internal/telephony/uicc/Injector$IccCardProxyHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccCardProxyHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUiccCardReady(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
    .locals 1
    .parameter "uiccCard"
    .parameter "radioOn"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
