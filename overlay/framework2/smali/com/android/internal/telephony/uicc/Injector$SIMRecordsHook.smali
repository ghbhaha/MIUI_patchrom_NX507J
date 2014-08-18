.class Lcom/android/internal/telephony/uicc/Injector$SIMRecordsHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIMRecordsHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after_SIMRecords(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 1
    .parameter "records"

    .prologue
    .line 24
    invoke-static {}, Lmiui/telephony/MiuiSpnOverride;->getImpl()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 25
    return-void
.end method

.method public static after_setSpnFromConfig(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 1
    .parameter "records"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 31
    :cond_0
    return-void
.end method

.method public static before_isOnMatchingPlmn(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Z
    .locals 5
    .parameter "records"
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, operator:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    .end local v0           #operator:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 40
    .restart local v0       #operator:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmiui/telephony/MiuiSpnOverride;->getInstance()Lmiui/telephony/MiuiSpnOverride;

    move-result-object v2

    .line 41
    .local v2, spnOverride:Lmiui/telephony/MiuiSpnOverride;
    invoke-virtual {v2, p1}, Lmiui/telephony/MiuiSpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, plmnEquivalent:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lmiui/telephony/MiuiSpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    .end local v0           #operator:Ljava/lang/String;
    .end local v1           #plmnEquivalent:Ljava/lang/String;
    .end local v2           #spnOverride:Lmiui/telephony/MiuiSpnOverride;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
