.class public Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboundSmsHandlerHook"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "InboundSmsHandler"

    sput-object v0, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_dispatchIntent(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 17
    .parameter "handler"
    .parameter "intent"
    .parameter "permission"
    .parameter "appOp"
    .parameter "resultReceiver"

    .prologue
    .line 199
    sget-object v14, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->TAG:Ljava/lang/String;

    const-string v15, "before_dispatchIntent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, action:Ljava/lang/String;
    const/4 v12, 0x0

    .line 204
    .local v12, smsBlocked:Z
    const-string v14, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 209
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "pdus"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 211
    .local v10, pdusArray:[Ljava/lang/Object;
    array-length v14, v10

    new-array v9, v14, [[B

    .line 212
    .local v9, pdus:[[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v14, v10

    if-ge v7, v14, :cond_0

    .line 213
    aget-object v14, v10, v7

    check-cast v14, [B

    move-object v0, v14

    check-cast v0, [B

    move-object v8, v0

    .line 214
    .local v8, part:[B
    aput-object v8, v9, v7

    .line 212
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    .end local v8           #part:[B
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->checkSmsCmd(Lcom/android/internal/telephony/InboundSmsHandler;[[B)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 217
    sget-object v14, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->TAG:Ljava/lang/String;

    const-string v15, "checkSmsCmd is true, intercept this sms."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v12, 0x1

    .line 226
    .end local v7           #i:I
    .end local v9           #pdus:[[B
    .end local v10           #pdusArray:[Ljava/lang/Object;
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    .line 228
    :try_start_1
    const-string v14, "security"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v11

    .line 230
    .local v11, securityManager:Lmiui/security/ISecurityManager;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-eqz v14, :cond_2

    .line 231
    const/4 v12, 0x1

    .line 238
    .end local v11           #securityManager:Lmiui/security/ISecurityManager;
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 242
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 245
    .local v13, smsReceiverClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "mDeleteWhere"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 246
    .local v4, deleteWhereField:Ljava/lang/reflect/Field;
    const-string v14, "mDeleteWhereArgs"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 247
    .local v2, deleteWhereArgsField:Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 248
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 250
    .local v5, deleteWhereValue:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 253
    .local v3, deleteWhereArgsValue:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    const/4 v14, 0x1

    .line 262
    .end local v2           #deleteWhereArgsField:Ljava/lang/reflect/Field;
    .end local v3           #deleteWhereArgsValue:[Ljava/lang/String;
    .end local v4           #deleteWhereField:Ljava/lang/reflect/Field;
    .end local v5           #deleteWhereValue:Ljava/lang/String;
    .end local v13           #smsReceiverClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    return v14

    .line 220
    :catch_0
    move-exception v6

    .line 221
    .local v6, e:Ljava/lang/Exception;
    sget-object v14, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception before InboundSmsDispatcher: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 234
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 259
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public static checkSmsCmd(Lcom/android/internal/telephony/InboundSmsHandler;[[B)Z
    .locals 8
    .parameter "inboundSmsHandler"
    .parameter "pdus"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    if-eqz p1, :cond_0

    aget-object v6, p1, v5

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 190
    :cond_1
    :goto_0
    return v4

    .line 175
    :cond_2
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 179
    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, ex:Ljava/lang/NullPointerException;
    sget-object v6, Lcom/android/internal/telephony/Injector$InboundSmsHandlerHook;->TAG:Ljava/lang/String;

    const-string v7, "NPE in checkSmsCmd: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 184
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 187
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 190
    goto :goto_0
.end method
