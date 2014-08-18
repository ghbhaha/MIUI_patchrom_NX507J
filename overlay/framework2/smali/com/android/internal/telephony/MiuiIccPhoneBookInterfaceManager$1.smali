.class Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "MiuiIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 101
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 57
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 60
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 62
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 63
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    .line 67
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 68
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 65
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 72
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 73
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 74
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-boolean v2, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    if-nez v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    .line 79
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 80
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 77
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 83
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 84
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_4
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 87
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 88
    .local v0, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iput-object v0, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    .line 94
    .end local v0           #adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 95
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 91
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 92
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
