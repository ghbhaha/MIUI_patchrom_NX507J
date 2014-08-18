.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
.super Landroid/os/Handler;
.source "MiuiAdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x4

.field static final EVENT_ADN_SIZE_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x5

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x3

.field static final EVENT_EXT_SIZE_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "MiuiAdnRecordLoader"


# instance fields
.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sRecordSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    const/16 v2, -0x3e9

    const/4 v13, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 234
    :cond_1
    :goto_1
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 135
    .local v7, ar:Landroid/os/AsyncResult;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 136
    .local v11, recordSize:[I
    if-eqz v11, :cond_1

    .line 139
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 145
    :goto_2
    iput v13, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 143
    .restart local v11       #recordSize:[I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    aget v2, v11, v9

    aget v4, v11, v4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    goto :goto_2

    .line 149
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #recordSize:[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 150
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 151
    .restart local v11       #recordSize:[I
    if-eqz v11, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 156
    .restart local v11       #recordSize:[I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    aget v2, v11, v9

    aget v4, v11, v4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 157
    iput v13, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    goto :goto_0

    .line 161
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #recordSize:[I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 162
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v6, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 164
    .local v6, adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 165
    .restart local v11       #recordSize:[I
    if-eqz v11, :cond_1

    .line 169
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->recordNumber:I

    aget v1, v11, v4

    if-le v0, v1, :cond_3

    .line 170
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 174
    :cond_3
    aget v0, v11, v9

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)[B

    move-result-object v3

    .line 175
    .local v3, data:[B
    if-nez v3, :cond_4

    .line 176
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 179
    :cond_4
    iput v13, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->recordNumber:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 184
    .end local v3           #data:[B
    .end local v6           #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #recordSize:[I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 185
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 189
    :cond_5
    iput v9, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    .end local v7           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 195
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 196
    .restart local v3       #data:[B
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 197
    .restart local v6       #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 201
    :cond_6
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->appendExtRecord([B)V

    .line 202
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 206
    .end local v3           #data:[B
    .end local v6           #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 207
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    .line 208
    .local v8, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 209
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 213
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->adns:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->result:Ljava/lang/Object;

    .line 215
    iput v9, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    .line 216
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v9, v0, v9

    .line 217
    .local v9, extensionRecordSize:I
    :cond_8
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, s:I
    :goto_3
    if-ge v10, v12, :cond_0

    .line 218
    new-instance v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v6, v1, v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 219
    .restart local v6       #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    iget v2, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v9, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 217
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 5
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    .line 81
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    .line 82
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 85
    .local v0, recordSize:[I
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method saveRecordSize(ILandroid/os/AsyncResult;)[I
    .locals 4
    .parameter "efid"
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 254
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 248
    .local v0, recordSize:[I
    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 249
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 250
    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method sendErrorResponse(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 263
    :cond_0
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 104
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->ef:I

    .line 105
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->extensionEF:I

    .line 106
    iput p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->recordNumber:I

    .line 107
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 108
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pin2:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v3

    .line 114
    .local v3, data:[B
    if-nez v3, :cond_1

    .line 115
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->pendingExtLoads:I

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p2

    move v2, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
