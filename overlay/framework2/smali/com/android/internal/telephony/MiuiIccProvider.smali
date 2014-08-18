.class public Lcom/android/internal/telephony/MiuiIccProvider;
.super Landroid/content/ContentProvider;
.source "MiuiIccProvider.java"


# static fields
.field public static final ADDRESS_BOOK_COLUMN_ANR:I = 0x4

.field public static final ADDRESS_BOOK_COLUMN_EMAILS:I = 0x2

.field public static final ADDRESS_BOOK_COLUMN_ID:I = 0x3

.field public static final ADDRESS_BOOK_COLUMN_NAME:I = 0x0

.field public static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final ADDRESS_BOOK_COLUMN_NUMBER:I = 0x1

.field private static final ADN:I = 0x1

.field private static final ADN_CAPACITY:I = 0x5

.field private static final ADN_STORAGE:I = 0x6

.field static final DBG:Z = false

.field public static final ERROR_ADN_LIST_NOT_EXIST:I = -0x3f2

.field public static final ERROR_ANR_FULL:I = -0x3f0

.field public static final ERROR_ANR_TOO_LONG:I = -0x3f1

.field public static final ERROR_EMAIL_FULL:I = -0x3f3

.field public static final ERROR_EMAIL_TOO_LONG:I = -0x3f4

.field public static final ERROR_GENERIC_FAILURE:I = -0x3ea

.field public static final ERROR_ICC_CARD_RESET:I = -0x3f5

.field public static final ERROR_NOT_READY:I = -0x3ee

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NUMBER_TOO_LONG:I = -0x3eb

.field public static final ERROR_PASSWORD_ERROR:I = -0x3ef

.field public static final ERROR_STORAGE_FULL:I = -0x3ed

.field public static final ERROR_TEXT_TOO_LONG:I = -0x3ec

.field public static final ERROR_UNKNOWN:I = -0x3e9

.field public static final ERROR_UNKNOWN_EF:I = -0x3f6

.field private static final FDN:I = 0x2

.field private static final FREE_ADN:I = 0x4

.field private static final IS_PHONEBOOK_READY:I = 0x7

.field private static final IS_USIM_PHONEBOOK:I = 0x8

.field private static final LAST_ERROR:I = 0x9

.field private static final SDN:I = 0x3

.field public static final STR_ANR:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_ID:Ljava/lang/String; = "_id"

.field public static final STR_NAME:Ljava/lang/String; = "name"

.field public static final STR_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NAME:Ljava/lang/String; = "newName"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "anr"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adnstroage"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isphonebookready"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isusimphonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "lasterror"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAdnCapacity()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, capacity:I
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v2, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 364
    .local v2, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 365
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 371
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 372
    .local v1, count:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    .line 373
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 374
    return-object v2

    .line 368
    .end local v1           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getFreeAdn()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, freeAdn:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 345
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 346
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 353
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 354
    .local v0, count:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 355
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    return-object v1

    .line 349
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    .locals 2

    .prologue
    .line 306
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 307
    .local v0, iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    instance-of v1, v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    if-eqz v1, :cond_0

    .line 308
    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    .line 310
    .end local v0           #iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .restart local v0       #iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastError()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, errno:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "error"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 436
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 437
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 438
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getLastError()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 443
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 444
    .local v0, count:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 445
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 446
    return-object v1

    .line 440
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getStorage()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, freeAdn:I
    const/4 v0, 0x0

    .line 380
    .local v0, capacity:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "total"

    aput-object v6, v5, v8

    const-string v6, "free"

    aput-object v6, v5, v7

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 383
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 384
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 385
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I

    move-result v0

    .line 386
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 391
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v4, v9, [Ljava/lang/Object;

    .line 392
    .local v4, storage:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 394
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 395
    return-object v1

    .line 388
    .end local v4           #storage:[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isPhoneBookReady()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, ready:Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "ready"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 402
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 403
    .local v2, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->isPhoneBookReady()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 409
    .end local v2           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 410
    .local v0, count:[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 411
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 412
    return-object v1

    :cond_1
    move v4, v5

    .line 410
    goto :goto_1

    .line 406
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private isUsimPhoneBook()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, usim:Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "usimphonebook"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 419
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 420
    .local v2, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->isUsimPhoneBookRecords()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 426
    .end local v2           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 427
    .local v0, count:[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 428
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 429
    return-object v1

    :cond_1
    move v4, v5

    .line 427
    goto :goto_1

    .line 423
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "efid"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 317
    .local v0, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 318
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .local v4, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    move-object v0, v4

    .line 328
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    .end local v4           #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 329
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, selections:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 331
    .local v1, cursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, s:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 332
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {p0, v7, v1, v2, v6}, Lcom/android/internal/telephony/MiuiIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v2           #i:I
    .end local v5           #s:I
    .end local v6           #selections:[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 337
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    :cond_2
    return-object v1

    .line 323
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V
    .locals 8
    .parameter "adn"
    .parameter "cursor"
    .parameter "id"
    .parameter "selections"

    .prologue
    const/4 v7, 0x0

    .line 499
    sget-object v5, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v5

    .line 500
    .local v3, length:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p4, p1, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 501
    new-array v1, v3, [Ljava/lang/Object;

    .line 502
    .local v1, contact:[Ljava/lang/Object;
    const/4 v5, 0x3

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 503
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 504
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v2, 0x1

    .local v2, i:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 510
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 515
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v4           #s:I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 516
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 518
    .end local v1           #contact:[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 604
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 5
    .parameter "selections"
    .parameter "adn"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 529
    const/4 v1, 0x1

    .line 530
    .local v1, match:Z
    if-eqz p1, :cond_2

    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 532
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 531
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_1
    if-nez v1, :cond_0

    .line 560
    .end local v0           #i:I
    :cond_2
    return v1

    .line 538
    .restart local v0       #i:I
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 539
    goto :goto_1

    .line 541
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 542
    goto :goto_1

    .line 544
    :pswitch_2
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 v1, 0x1

    .line 545
    :goto_2
    goto :goto_1

    :cond_3
    move v1, v2

    .line 544
    goto :goto_2

    .line 547
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 549
    :goto_3
    goto :goto_1

    .line 547
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_3

    .line 551
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    .line 536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 522
    .local v0, len:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 523
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 525
    :cond_0
    return-object p1
.end method

.method private parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 565
    const/4 v6, 0x0

    .line 600
    :cond_0
    return-object v6

    .line 568
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 569
    .local v6, results:[Ljava/lang/String;
    const-string v9, "AND"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 571
    .local v0, argsIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_0

    .line 572
    aget-object v5, v7, v2

    .line 573
    .local v5, param:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, keyVal:[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 571
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, key:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 580
    .local v8, val:Ljava/lang/String;
    const-string v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 581
    add-int/lit8 v1, v0, 0x1

    .end local v0           #argsIndex:I
    .local v1, argsIndex:I
    aget-object v8, p2, v0

    move v0, v1

    .line 584
    .end local v1           #argsIndex:I
    .restart local v0       #argsIndex:I
    :cond_4
    const-string v9, "tag"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 585
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 586
    :cond_5
    const-string v9, "pin2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 587
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 588
    :cond_6
    const-string v9, "number"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 589
    const/4 v9, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 590
    :cond_7
    const-string v9, "_id"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 591
    const/4 v9, 0x3

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 592
    :cond_8
    const-string v9, "name"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 593
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 594
    :cond_9
    const-string v9, "emails"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 595
    const/4 v9, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1

    .line 596
    :cond_a
    const-string v9, "anr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 597
    const/4 v9, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1
.end method

.method private updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 2
    .parameter "efid"
    .parameter "newAdn"
    .parameter "index"

    .prologue
    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 489
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v1

    .line 495
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "efid"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "index"

    .prologue
    .line 463
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 464
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    .line 465
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v1

    .line 470
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    .locals 2
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 477
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 483
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v1

    .line 483
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 452
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 453
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 458
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 455
    :catch_0
    move-exception v1

    .line 458
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 248
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 249
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 257
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 260
    .local v4, efid:I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 261
    .local v17, selections:[Ljava/lang/String;
    if-nez v17, :cond_0

    .line 262
    const/4 v3, 0x0

    .line 284
    :goto_1
    return v3

    .line 254
    .end local v4           #efid:I
    .end local v17           #selections:[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 255
    .restart local v4       #efid:I
    goto :goto_0

    .line 265
    .restart local v17       #selections:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x3

    aget-object v3, v17, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    aget-object v3, v17, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 268
    .local v8, index:I
    :goto_2
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_3

    .line 269
    if-ltz v8, :cond_2

    .line 270
    const-string v5, ""

    const-string v6, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v7, v17, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    .line 284
    .local v18, success:Z
    :goto_3
    if-nez v18, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    .line 265
    .end local v8           #index:I
    .end local v18           #success:Z
    :cond_1
    const/4 v8, -0x1

    goto :goto_2

    .line 272
    .restart local v8       #index:I
    :cond_2
    const/4 v3, 0x0

    aget-object v11, v17, v3

    const/4 v3, 0x1

    aget-object v12, v17, v3

    const-string v13, ""

    const-string v14, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v15, v17, v3

    move-object/from16 v9, p0

    move v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 276
    .end local v18           #success:Z
    :cond_3
    if-ltz v8, :cond_4

    .line 277
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const-string v9, ""

    invoke-direct {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 279
    .end local v18           #success:Z
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const/4 v6, 0x1

    aget-object v6, v17, v6

    const/4 v7, 0x0

    const-string v9, ""

    invoke-direct {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 284
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 289
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 133
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 145
    .local v3, efid:I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, tag:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    :cond_0
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, number:Ljava/lang/String;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_1

    .line 153
    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 165
    .local v16, success:Z
    :goto_1
    if-nez v16, :cond_3

    .line 166
    const/4 v14, 0x0

    .line 186
    :goto_2
    return-object v14

    .line 138
    .end local v3           #efid:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v16           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 139
    .restart local v3       #efid:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    goto :goto_0

    .line 155
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    :cond_1
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, strEmail:Ljava/lang/String;
    const/4 v12, 0x0

    .line 157
    .local v12, emails:[Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .end local v12           #emails:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v15, v12, v2

    .line 160
    .restart local v12       #emails:[Ljava/lang/String;
    :cond_2
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, anr:Ljava/lang/String;
    new-instance v9, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v9, v6, v7, v12, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v9, adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string v4, ""

    const-string v5, ""

    const/16 v17, 0x0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z

    move-result v16

    .restart local v16       #success:Z
    goto :goto_1

    .line 169
    .end local v9           #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v10           #anr:Ljava/lang/String;
    .end local v12           #emails:[Ljava/lang/String;
    .end local v15           #strEmail:Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v11, buf:Ljava/lang/StringBuilder;
    packed-switch v13, :pswitch_data_1

    .line 178
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 186
    .local v14, resultUri:Landroid/net/Uri;
    goto :goto_2

    .line 172
    .end local v14           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 175
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 108
    :pswitch_1
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getFreeAdn()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getAdnCapacity()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getStorage()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->isPhoneBookReady()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->isUsimPhoneBook()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getLastError()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 192
    const/4 v6, 0x0

    .line 193
    .local v6, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 194
    .local v17, match:I
    packed-switch v17, :pswitch_data_0

    .line 203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 206
    .local v3, efid:I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, tag:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    :cond_0
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, number:Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, newTag:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    const-string v2, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    :cond_1
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, newNumber:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 219
    .local v16, indexValue:Ljava/lang/Integer;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 222
    .local v7, index:I
    :goto_1
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_4

    .line 223
    if-ltz v7, :cond_3

    move-object/from16 v2, p0

    .line 224
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .line 242
    .local v21, success:Z
    :goto_2
    if-nez v21, :cond_7

    const/4 v2, 0x0

    :goto_3
    return v2

    .line 199
    .end local v3           #efid:I
    .end local v4           #newTag:Ljava/lang/String;
    .end local v5           #newNumber:Ljava/lang/String;
    .end local v7           #index:I
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v16           #indexValue:Ljava/lang/Integer;
    .end local v21           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 200
    .restart local v3       #efid:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    goto :goto_0

    .line 219
    .restart local v4       #newTag:Ljava/lang/String;
    .restart local v5       #newNumber:Ljava/lang/String;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v16       #indexValue:Ljava/lang/Integer;
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .restart local v7       #index:I
    :cond_3
    move-object/from16 v8, p0

    move v9, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    .line 226
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .restart local v21       #success:Z
    goto :goto_2

    .line 229
    .end local v21           #success:Z
    :cond_4
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 230
    .local v20, strEmail:Ljava/lang/String;
    const/16 v19, 0x0

    .line 231
    .local v19, newEmails:[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 232
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19           #newEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v20, v19, v2

    .line 234
    .restart local v19       #newEmails:[Ljava/lang/String;
    :cond_5
    const-string v2, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 235
    .local v18, newAnr:Ljava/lang/String;
    new-instance v15, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v15, v4, v5, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v15, adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    if-ltz v7, :cond_6

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v7}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v21

    .restart local v21       #success:Z
    goto :goto_2

    .line 239
    .end local v21           #success:Z
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v8, 0x0

    const-string v9, ""

    invoke-direct {v2, v10, v11, v8, v9}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z

    move-result v21

    .restart local v21       #success:Z
    goto :goto_2

    .line 242
    .end local v15           #adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v18           #newAnr:Ljava/lang/String;
    .end local v19           #newEmails:[Ljava/lang/String;
    .end local v20           #strEmail:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
