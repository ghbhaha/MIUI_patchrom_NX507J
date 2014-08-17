.class public Lcom/android/server/HapticsService;
.super Landroid/os/IHapticsService$Stub;
.source "HapticsService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final HAPTIC_MODE_AUDIO2HAPTIC:I = 0x1

.field private static final HAPTIC_MODE_IDLE:I = 0x0

.field private static final HAPTIC_MODE_RING:I = 0x8

.field private static final HAPTIC_MODE_RTP_PLAYBACK:I = 0x4

.field private static final HAPTIC_MODE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final HAPTIC_RING_CONFIG:Ljava/lang/String; = "/system/etc/RingHaptics.xml"

.field private static final HAPTIC_RING_SILENCE:Ljava/lang/String; = "0"

.field private static final SW_STATE_AUDIO2HAPTIC:I = 0x1

.field private static final SW_STATE_IDLE:I = 0x0

.field private static final SW_STATE_RTP_PLAYBACK:I = 0x4

.field private static final SW_STATE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HapticsService"

.field private static final XML_HAPTICS:Ljava/lang/String; = "Haptics"

.field private static final XML_HAPTICS_NAME:Ljava/lang/String; = "name"

.field private static final XML_HAPTICS_SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private mA2H_str:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedbackEnabled:I

.field private mHapticWhenRing:I

.field private mHapticsLockScreen:I

.field private mHapticsMode:I

.field private mHapticsMultitouch:I

.field private mHapticsRepeat:I

.field private mHapticsScrolling:I

.field private mHapticsStatus:I

.field private mHapticsStatusObserver:Landroid/os/UEventObserver;

.field private mHapticsStatusPrev:I

.field private mHapticsThemeDialpad:I

.field private mHapticsThemeGallery:I

.field private mHapticsThemeLPress:I

.field private mHapticsThemeLauncher:I

.field private mHapticsThemeRotate:I

.field private mHapticsThemeSIP:I

.field private mHapticsThemeVK:I

.field private mRTPSeq:[B

.field private mRTPSeqLen:I

.field private mRingHapticsDefault:I

.field private mRingHapticsName:[Ljava/lang/String;

.field private mRingHapticsSeq:[Ljava/lang/String;

.field private mSeq:[B

.field private mUnLockEffect:[B

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/os/IHapticsService$Stub;-><init>()V

    .line 93
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 94
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 95
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 96
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 97
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 98
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 99
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 100
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 101
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 102
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    .line 104
    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 105
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 106
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    .line 107
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    .line 108
    iput v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 109
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    .line 110
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    .line 111
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 112
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 113
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/HapticsService;->mUnLockEffect:[B

    .line 115
    new-instance v0, Lcom/android/server/HapticsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HapticsService$1;-><init>(Lcom/android/server/HapticsService;)V

    iput-object v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    .line 143
    iput-object p1, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    .line 145
    return-void

    .line 113
    nop

    :array_0
    .array-data 0x1
        0x5ct
        0x77t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetRingHapticsFromConfig()V
    .locals 18

    .prologue
    .line 770
    const/4 v11, 0x0

    .line 771
    .local v11, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 772
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 773
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v15, "/system/etc/RingHaptics.xml"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v2, config_file:Ljava/io/File;
    const/4 v3, 0x0

    .line 776
    .local v3, document:Lorg/w3c/dom/Document;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 778
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 782
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 792
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #inputStream:Ljava/io/InputStream;
    .local v12, inputStream:Ljava/io/InputStream;
    move-object v11, v12

    .line 802
    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 815
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 816
    .local v14, root:Lorg/w3c/dom/Element;
    const-string v15, "Haptics"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 817
    .local v13, nl_haptics:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 818
    .local v9, haptics_count:I
    if-nez v9, :cond_0

    .line 849
    .end local v9           #haptics_count:I
    .end local v13           #nl_haptics:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :goto_3
    return-void

    .line 784
    :catch_0
    move-exception v4

    .line 787
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 794
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 797
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 804
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 807
    .local v5, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 809
    .end local v5           #e1:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 812
    .local v5, e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 822
    .end local v5           #e1:Ljava/io/IOException;
    .restart local v9       #haptics_count:I
    .restart local v13       #nl_haptics:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :cond_0
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    .line 823
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    .line 825
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    if-ge v10, v9, :cond_1

    .line 827
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 828
    .local v6, em_haptics:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 830
    const-string v15, "seq"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 831
    .local v7, em_seq:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 832
    const-string v15, "HapticsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " seq="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 837
    .end local v6           #em_haptics:Lorg/w3c/dom/Element;
    .end local v7           #em_seq:Lorg/w3c/dom/Element;
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 839
    :catch_4
    move-exception v4

    .line 842
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 847
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #haptics_count:I
    .end local v10           #i:I
    .end local v13           #nl_haptics:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :cond_2
    const-string v15, "HapticsService"

    const-string v16, "/system/etc/RingHaptics.xml is missing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private InitHapticsA2HSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 191
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 192
    iget-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 194
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/etc/haptics_A2H.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, a2h_f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 198
    .local v4, filelen:I
    if-lez v4, :cond_1

    .line 200
    new-array v0, v4, [C

    .line 203
    .local v0, a2hBuf:[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 204
    .local v2, bufReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/BufferedReader;->read([CII)I

    .line 205
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 225
    .end local v0           #a2hBuf:[C
    .end local v4           #filelen:I
    :goto_1
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    iget-object v7, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    .end local v1           #a2h_f:Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/HapticsService$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/HapticsService$2;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    return-void

    .line 207
    .restart local v0       #a2hBuf:[C
    .restart local v1       #a2h_f:Ljava/io/File;
    .restart local v4       #filelen:I
    :catch_0
    move-exception v3

    .line 209
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "HapticsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2H BufferedReader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v0           #a2hBuf:[C
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f length ZERO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1

    .line 221
    .end local v4           #filelen:I
    :cond_2
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1
.end method

.method private InitHapticsEffectSettings(Ljava/lang/String;I)V
    .locals 6
    .parameter "setting_str"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, setting:I
    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    move v0, p2

    .line 282
    :cond_0
    const-string v1, "data_haptictheme_SIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 319
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/HapticsService$5;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    return-void

    .line 286
    :cond_2
    const-string v1, "data_haptictheme_dialpad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    goto :goto_0

    .line 290
    :cond_3
    const-string v1, "data_haptictheme_launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    goto :goto_0

    .line 294
    :cond_4
    const-string v1, "data_haptictheme_longpress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    goto :goto_0

    .line 298
    :cond_5
    const-string v1, "data_haptictheme_virtualkey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    goto :goto_0

    .line 302
    :cond_6
    const-string v1, "data_haptictheme_rotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    goto :goto_0

    .line 306
    :cond_7
    const-string v1, "data_haptictheme_gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 308
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    goto :goto_0

    .line 310
    :cond_8
    const-string v1, "data_haptictheme_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 312
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    goto :goto_0

    .line 314
    :cond_9
    const-string v1, "data_haptictheme_multi_touch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    goto :goto_0
.end method

.method private InitHapticsRingSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-direct {p0}, Lcom/android/server/HapticsService;->GetRingHapticsFromConfig()V

    .line 243
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    .line 244
    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    iget v2, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$3;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 261
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$4;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    return-void
.end method

.method private LookupHapticValue(I)I
    .locals 1
    .parameter "effectID"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, value:I
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return v0

    .line 153
    :pswitch_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 154
    goto :goto_0

    .line 156
    :pswitch_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 157
    goto :goto_0

    .line 159
    :pswitch_3
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 160
    goto :goto_0

    .line 162
    :pswitch_4
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 163
    goto :goto_0

    .line 165
    :pswitch_5
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 166
    goto :goto_0

    .line 168
    :pswitch_6
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 169
    goto :goto_0

    .line 171
    :pswitch_7
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 172
    goto :goto_0

    .line 174
    :pswitch_8
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 175
    goto :goto_0

    .line 177
    :pswitch_9
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 178
    goto :goto_0

    .line 180
    :pswitch_a
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    .line 181
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/HapticsService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HapticsService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/HapticsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    return p1
.end method

.method private isA2HEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "appname"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setupRTPSeq(Ljava/lang/String;)V
    .locals 5
    .parameter "sequence"

    .prologue
    const/16 v2, 0x20

    .line 447
    iget-object v3, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 448
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, seq_str:[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v2, :cond_0

    :goto_0
    iput v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 450
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    .end local v0           #i:I
    :cond_0
    array-length v2, v1

    goto :goto_0

    .line 454
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method private setupRTPSeq([BI)V
    .locals 4
    .parameter "sequence"
    .parameter "buffSize"

    .prologue
    const/16 v1, 0x20

    .line 458
    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 460
    if-le p2, v1, :cond_0

    move p2, v1

    .end local p2
    :cond_0
    iput p2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method

.method private setupSeq(Ljava/lang/String;)V
    .locals 4
    .parameter "sequence"

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 429
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, seq_str:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method private setupSeq([BI)V
    .locals 3
    .parameter "sequence"
    .parameter "buffSize"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/server/HapticsService;->mSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "token"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    return-object v0
.end method

.method public playEffectSeqBuff([BILandroid/os/IBinder;)V
    .locals 3
    .parameter "sequence"
    .parameter "buffSize"
    .parameter "token"

    .prologue
    .line 591
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 593
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    .line 600
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/android/server/HapticsService;->setupSeq([BI)V

    .line 602
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    invoke-static {v0, p2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter "sequence"
    .parameter "token"

    .prologue
    .line 566
    iget v0, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 568
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 570
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_3
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 581
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 2
    .parameter "sequence"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 654
    iput p2, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    .line 658
    return-void
.end method

.method public playNubiaEffect(IZLandroid/os/IBinder;)V
    .locals 3
    .parameter "effectID"
    .parameter "ignoreFeedBack"
    .parameter "token"

    .prologue
    .line 489
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNubiaEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") skip,ignoreFeedBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-nez p2, :cond_2

    .line 492
    iget v0, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 494
    if-lez p1, :cond_1

    const/16 v0, 0x7c

    if-ge p1, v0, :cond_1

    .line 496
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 500
    :cond_0
    invoke-static {p1}, Lcom/ti/Haptic;->playEffect(I)V

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 506
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_3

    .line 508
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 510
    :cond_3
    invoke-static {p1}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0
.end method

.method public playPatternRTP(IIIILandroid/os/IBinder;)V
    .locals 0
    .parameter "vibrationDuration"
    .parameter "silienceDuration"
    .parameter "repeat_times"
    .parameter "vibrationStrength"
    .parameter "token"

    .prologue
    .line 560
    invoke-static {p1, p2, p3, p4}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    .line 562
    return-void
.end method

.method public playRTPSeqBuff([BILandroid/os/IBinder;)V
    .locals 3
    .parameter "sequence"
    .parameter "buffSize"
    .parameter "token"

    .prologue
    .line 634
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 636
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 640
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 642
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/android/server/HapticsService;->setupRTPSeq([BI)V

    .line 644
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter "sequence"
    .parameter "token"

    .prologue
    .line 612
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return-void

    .line 618
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupRTPSeq(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcom/android/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRingHaptics(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 715
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingHaptics: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRingHapticsDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 719
    :cond_0
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 720
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 725
    :cond_1
    if-nez p1, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 734
    :goto_1
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playRingSeq(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 741
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingSeq :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez p1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 745
    :cond_0
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 747
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playTimedEffect(ILandroid/os/IBinder;)V
    .locals 0
    .parameter "effectDuration"
    .parameter "token"

    .prologue
    .line 553
    invoke-static {p1}, Lcom/ti/Haptic;->playTimedEffect(I)V

    .line 555
    return-void
.end method

.method public playeffect(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "effectID"
    .parameter "token"

    .prologue
    .line 469
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 471
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 478
    .local v0, value:I
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-lez v0, :cond_3

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_3

    .line 480
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 482
    :cond_3
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playeffectforce(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "effectID"
    .parameter "token"

    .prologue
    .line 518
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 520
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffectforce playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 524
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 526
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/android/server/HapticsService;->mUnLockEffect:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 532
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 533
    .local v0, value:I
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-lez v0, :cond_5

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_5

    .line 536
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v1, :cond_4

    .line 538
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 540
    :cond_4
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 543
    :cond_5
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "appname"
    .parameter "token"

    .prologue
    const/4 v4, 0x1

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->isA2HEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 688
    .local v0, sw:Z
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioHapticEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mHapticsMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz v0, :cond_1

    .line 691
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 692
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-static {v4}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    goto :goto_0

    .line 702
    :cond_1
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    if-ne v1, v4, :cond_2

    .line 704
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 706
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    goto :goto_0
.end method

.method public stopPlayingEffect(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 663
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 665
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 666
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 669
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlayingEffect2 mHapticsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 672
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 673
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 676
    :cond_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 678
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 679
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 682
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 380
    :try_start_0
    invoke-static {}, Lcom/ti/Haptic;->initialize()V

    .line 381
    const-string v1, "HapticsService"

    const-string v2, "Haptic initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    const-string v1, "data_haptictheme_SIP"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 389
    const-string v1, "data_haptictheme_dialpad"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 390
    const-string v1, "data_haptictheme_launcher"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 391
    const-string v1, "data_haptictheme_longpress"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 392
    const-string v1, "data_haptictheme_virtualkey"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 393
    const-string v1, "data_haptictheme_rotate"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 394
    const-string v1, "data_haptictheme_gallery"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 395
    const-string v1, "data_haptictheme_scroll"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 396
    const-string v1, "data_haptictheme_multi_touch"

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMultitouch:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 397
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsA2HSetting()V

    .line 398
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsRingSetting()V

    .line 400
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 401
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/HapticsService$6;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/haptics/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/haptics"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 419
    :goto_1
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "HapticsService"

    const-string v2, "switch not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
