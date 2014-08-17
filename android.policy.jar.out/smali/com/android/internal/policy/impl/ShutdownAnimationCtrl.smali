.class public Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;
.super Ljava/lang/Object;
.source "ShutdownAnimationCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final SHUTDOWN_ACTION:Ljava/lang/String; = "com.ztemt.shutdown.startanimation"


# instance fields
.field private mShutdownAnimationReceiver:Landroid/content/BroadcastReceiver;

.field private mShutdownAnimationStart:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationStart:Z

    .line 13
    new-instance v1, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl$1;-><init>(Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.ztemt.shutdown.startanimation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationStart:Z

    return p1
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ShutdownAnimationCtrl;->mShutdownAnimationStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
