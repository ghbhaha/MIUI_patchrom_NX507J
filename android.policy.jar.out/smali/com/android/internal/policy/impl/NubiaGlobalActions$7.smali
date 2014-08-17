.class Lcom/android/internal/policy/impl/NubiaGlobalActions$7;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;
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
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 479
    return v1
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 475
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method
