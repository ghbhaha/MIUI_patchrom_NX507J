.class final Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;
.super Ljava/util/TimerTask;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/Injector$UiccCardHook;->before_onIccSwap(Landroid/content/Context;Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;->val$t:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    return-void
.end method
