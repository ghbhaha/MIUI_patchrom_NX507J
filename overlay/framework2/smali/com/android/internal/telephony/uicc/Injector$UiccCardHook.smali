.class Lcom/android/internal/telephony/uicc/Injector$UiccCardHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiccCardHook"
.end annotation


# static fields
.field private static final DISMISS_DIALOG_TIME:I = 0x2710


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_onIccSwap(Landroid/content/Context;Ljava/lang/Object;Z)Z
    .locals 8
    .parameter "context"
    .parameter "lock"
    .parameter "isAdded"

    .prologue
    const/4 v4, 0x1

    .line 98
    if-eqz p2, :cond_0

    .line 129
    :goto_0
    return v4

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_2

    .line 103
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    :cond_2
    monitor-enter p1

    .line 107
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, r:Landroid/content/res/Resources;
    const v5, 0x1040452

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, title:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    const v6, 0x60d003e

    invoke-direct {v5, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 117
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 118
    .local v2, t:Ljava/util/Timer;
    new-instance v5, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;

    invoke-direct {v5, v0, v2}, Lcom/android/internal/telephony/uicc/Injector$UiccCardHook$1;-><init>(Landroid/app/AlertDialog;Ljava/util/Timer;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 127
    monitor-exit p1

    goto :goto_0

    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #t:Ljava/util/Timer;
    .end local v3           #title:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
