.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;
.super Lcom/android/internal/telephony/uicc/AdnRecordCache;
.source "MiuiAdnRecordCache.java"


# static fields
.field static final EVENT_WAIT_ADN_ALL_LOAD_DONE:I = 0x65

.field static final MAX_PHB_ANR_LENGTH:I = 0x14

.field static final MAX_PHB_NAME_LENGTH:I = 0x3c

.field static final MAX_PHB_NUMBER_LENGTH:I = 0x28


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field private mLock:Ljava/lang/Object;

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    .line 39
    return-void
.end method


# virtual methods
.method clearUserWriters()V
    .locals 5

    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 85
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const/16 v4, -0x3f5

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 89
    monitor-exit v3

    .line 90
    return-void

    .line 89
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clearWaiters()V
    .locals 9

    .prologue
    .line 59
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 61
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 62
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 63
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v8, -0x3f5

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {v0, v4, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 64
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->notifyWaitersLocked(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 67
    monitor-exit v5

    .line 68
    return-void

    .line 67
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAdnCapacity(I)I
    .locals 2
    .parameter "efid"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getFreeAdn(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 311
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v3, :cond_1

    .line 312
    const/4 v1, 0x0

    .line 321
    :cond_0
    return v1

    .line 315
    :cond_1
    const/4 v1, 0x0

    .line 316
    .local v1, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 317
    .local v0, adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 55
    .local v0, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 256
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 258
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 259
    .local v1, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 260
    .local v2, efid:I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 261
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 262
    .local v6, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 263
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 265
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 266
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    .end local v4           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_0
    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->notifyWaitersLocked(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 269
    monitor-exit v8

    goto :goto_0

    .end local v6           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 272
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #efid:I
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 273
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 274
    .restart local v2       #efid:I
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 275
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 276
    .local v3, index:I
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 277
    .local v0, adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    .line 278
    if-eqz v0, :cond_1

    .line 279
    iput v3, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    .line 280
    iget v7, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    if-gtz v7, :cond_1

    .line 281
    iput v2, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mEfid:I

    .line 285
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 286
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 287
    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 288
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 293
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 295
    if-eqz v5, :cond_3

    .line 296
    const/4 v7, 0x0

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 297
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 299
    :cond_3
    monitor-exit v8

    goto :goto_0

    .end local v0           #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v3           #index:I
    .end local v5           #response:Landroid/os/Message;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 302
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #efid:I
    :sswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 303
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 304
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v7

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method loadAllAdn(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->getAdnRecordsIfLoaded()Ljava/util/ArrayList;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    goto :goto_0
.end method

.method notifyWaitersLocked(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 4
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 80
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 75
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 76
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 77
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 214
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 221
    if-eqz p3, :cond_0

    .line 222
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 223
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_0
    :goto_1
    return-void

    .line 217
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    goto :goto_0

    .line 228
    :cond_2
    if-gez p2, :cond_3

    .line 229
    if-eqz p3, :cond_0

    .line 230
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v4, -0x3f6

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 231
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 238
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_4

    .line 239
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v3

    goto :goto_1

    .line 249
    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 243
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 249
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->reset()V

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->clearWaiters()V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->clearUserWriters()V

    .line 49
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;I)V
    .locals 2
    .parameter "response"
    .parameter "errno"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 95
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    :cond_0
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 103
    .local v4, extensionEf:I
    if-gez v4, :cond_0

    .line 104
    const/16 v1, -0x3f6

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 147
    .end local p2
    :goto_0
    return-void

    .line 108
    .restart local p2
    :cond_0
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    .line 109
    const/16 v1, -0x3ec

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 114
    .local v8, length:I
    if-lez v8, :cond_2

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 115
    add-int/lit8 v8, v8, -0x1

    .line 117
    :cond_2
    const/16 v1, 0x28

    if-le v8, v1, :cond_3

    .line 118
    const/16 v1, -0x3eb

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 122
    :cond_3
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_6

    move-object v9, p2

    .line 123
    check-cast v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 124
    .local v9, miuiAdn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v1, v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    .line 125
    const/16 v1, -0x3f1

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    check-cast p2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .end local p2
    invoke-virtual {v1, p3, p2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->update(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v10

    .line 130
    .local v10, ret:I
    if-eqz v10, :cond_5

    .line 131
    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 133
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 134
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 137
    .end local v9           #miuiAdn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v10           #ret:I
    .restart local p2
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 139
    const/16 v1, -0x3ee

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 140
    monitor-exit v11

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 142
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    new-instance v1, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p3, p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p2

    move v3, p1

    move v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 145
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 15
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->loadAllAdn(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 153
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    if-nez v12, :cond_0

    .line 154
    const/16 v2, -0x3f2

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    .line 209
    .end local p2
    .end local p3
    :goto_0
    return-void

    .line 158
    .restart local p2
    .restart local p3
    :cond_0
    const/4 v5, -0x1

    .line 159
    .local v5, index:I
    const/4 v8, 0x1

    .line 160
    .local v8, count:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    move v5, v8

    .line 168
    :cond_1
    const/4 v2, -0x1

    if-ne v5, v2, :cond_3

    .line 169
    const/16 v2, -0x3f2

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v9

    .line 174
    .local v9, extensionEf:I
    if-gez v9, :cond_4

    .line 175
    const/16 v2, -0x3f6

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 179
    :cond_4
    const/16 v2, 0x4f30

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 180
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_5

    .line 181
    const/16 v2, -0x3ec

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    .line 185
    :cond_5
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 186
    .local v11, length:I
    if-lez v11, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_6

    .line 187
    add-int/lit8 v11, v11, -0x1

    .line 189
    :cond_6
    const/16 v2, 0x28

    if-le v11, v2, :cond_7

    .line 190
    const/16 v2, -0x3eb

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto :goto_0

    :cond_7
    move-object/from16 v13, p3

    .line 193
    check-cast v13, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 194
    .local v13, miuiAdn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v2, v13, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v13, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_8

    .line 195
    const/16 v2, -0x3f1

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 199
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    check-cast p2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .end local p2
    check-cast p3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .end local p3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v5, v1}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;->update(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;ILcom/android/internal/telephony/uicc/MiuiAdnRecord;)I

    move-result v14

    .line 200
    .local v14, ret:I
    if-eqz v14, :cond_9

    .line 201
    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v14}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->sendErrorResponse(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 203
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 204
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v11           #length:I
    .end local v13           #miuiAdn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v14           #ret:I
    .restart local p2
    .restart local p3
    :cond_a
    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 207
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
