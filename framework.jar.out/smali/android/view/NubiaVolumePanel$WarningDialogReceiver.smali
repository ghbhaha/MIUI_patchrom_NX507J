.class Landroid/view/NubiaVolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NubiaVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NubiaVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mVolumePanel:Landroid/view/NubiaVolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/NubiaVolumePanel;)V
    .locals 2
    .parameter "context"
    .parameter "dialog"
    .parameter "volumePanel"

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 232
    iput-object p3, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/NubiaVolumePanel;

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Landroid/view/NubiaVolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/view/NubiaVolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/NubiaVolumePanel;

    #calls: Landroid/view/NubiaVolumePanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/NubiaVolumePanel;->access$200(Landroid/view/NubiaVolumePanel;)V

    .line 253
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/NubiaVolumePanel;

    invoke-virtual {v0}, Landroid/view/NubiaVolumePanel;->updateStates()V

    .line 254
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 246
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 240
    invoke-direct {p0}, Landroid/view/NubiaVolumePanel$WarningDialogReceiver;->cleanUp()V

    .line 241
    return-void
.end method
