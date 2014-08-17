.class Lcom/android/internal/policy/impl/NubiaGlobalActions$5;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 400
    .local v0, airplaneModeOn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    if-nez v0, :cond_1

    move v3, v1

    :goto_1
    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$500(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    if-nez v0, :cond_2

    :goto_2
    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAirplaneView(Z)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$600(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 403
    return-void

    .end local v0           #airplaneModeOn:Z
    :cond_0
    move v0, v2

    .line 398
    goto :goto_0

    .restart local v0       #airplaneModeOn:Z
    :cond_1
    move v3, v2

    .line 400
    goto :goto_1

    :cond_2
    move v1, v2

    .line 401
    goto :goto_2
.end method
