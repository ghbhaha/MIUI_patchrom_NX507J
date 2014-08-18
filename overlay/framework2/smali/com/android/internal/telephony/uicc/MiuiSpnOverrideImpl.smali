.class public Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;
.super Lcom/android/internal/telephony/uicc/SpnOverride;
.source "MiuiSpnOverrideImpl.java"


# static fields
.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# instance fields
.field private final mNumericEquivalencies:[Ljava/lang/String;

.field private final mNumericValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .line 25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x606000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x606000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->mNumericEquivalencies:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method private getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "carrier"

    .prologue
    .line 84
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "carrier"

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    .end local v0           #i:I
    :goto_1
    return v0

    .line 90
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->mNumericEquivalencies:[Ljava/lang/String;

    aget-object p1, v1, v0

    .end local p1
    :cond_0
    return-object p1
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "carrier"
    .parameter "spn"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, result:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 60
    :cond_0
    if-ltz v0, :cond_1

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x606000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, operatorNames:[Ljava/lang/String;
    :try_start_0
    aget-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #index:I
    .end local v1           #operatorNames:[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_2
    return-object v2

    .line 67
    .restart local v0       #index:I
    .restart local v1       #operatorNames:[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSpnFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
