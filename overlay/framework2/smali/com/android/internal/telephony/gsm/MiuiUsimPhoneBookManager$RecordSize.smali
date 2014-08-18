.class Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;
.super Ljava/lang/Object;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordSize"
.end annotation


# instance fields
.field mRecordCount:I

.field mRecordSize:I

.field mTotalSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;[I)V
    .locals 1
    .parameter
    .parameter "recordSize"

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->this$0:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 1042
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mTotalSize:I

    .line 1043
    const/4 v0, 0x2

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 1044
    return-void
.end method
