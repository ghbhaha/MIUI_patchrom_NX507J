.class Lcom/android/internal/policy/impl/NubiaGlobalActions$6;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->createDialog()Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;IIIII)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .parameter "buttonOn"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$700(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    #setter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$902(Lcom/android/internal/policy/impl/NubiaGlobalActions;Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_0

    .line 449
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method onToggle(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$700(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$802(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)Z

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$500(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method
