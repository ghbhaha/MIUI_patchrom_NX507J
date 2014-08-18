.class public Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
.super Ljava/lang/Object;
.source "MiuiIccFileHandler.java"


# instance fields
.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .parameter "fh"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 13
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 17
    return-void
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 53
    return-void
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 1
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 49
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 6
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 70
    return-void
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 16
    .parameter "fileid"
    .parameter "recordSize"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 20
    new-instance v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    .line 21
    .local v14, lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    iget v5, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v7, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    iget v9, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v12, v12, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v15, 0x7

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 28
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 45
    return-void
.end method

.method public loadEFLinearFixedAll(IIILandroid/os/Message;)V
    .locals 14
    .parameter "fileid"
    .parameter "recordSize"
    .parameter "recordCount"
    .parameter "onLoaded"

    .prologue
    .line 31
    new-instance v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p4

    invoke-direct {v12, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 32
    .local v12, lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 33
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 36
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb2

    iget v3, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v6, 0x4

    iget v7, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v10, v10, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v13, 0x7

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 41
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 57
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 65
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 61
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 75
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 79
    return-void
.end method
