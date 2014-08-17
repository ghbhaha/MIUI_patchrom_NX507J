.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field final synthetic val$wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2242
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2246
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23003

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2248
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->val$wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2249
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->keypadInputOnclickedBroadcast(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 2252
    :cond_0
    return-void
.end method
