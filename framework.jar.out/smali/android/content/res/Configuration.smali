.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration; = null

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public extraConfig:Lmiui/content/res/ExtraConfiguration;

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1229
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    .line 617
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    .line 629
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 630
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/content/res/ExtraConfiguration;

    invoke-direct {v0}, Lmiui/content/res/ExtraConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    .line 1249
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1250
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .parameter "screenLayout"

    .prologue
    .line 1393
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static needNewResources(II)Z
    .locals 1
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 1112
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    and-int/2addr v0, p0

    if-nez v0, :cond_miui

    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_miui
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .parameter "curLayout"
    .parameter "longSizeDp"
    .parameter "shortSizeDp"

    .prologue
    .line 202
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 205
    const/4 v3, 0x1

    .line 206
    .local v3, screenLayoutSize:I
    const/4 v2, 0x0

    .line 207
    .local v2, screenLayoutLong:Z
    const/4 v1, 0x0

    .line 242
    .local v1, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v2, :cond_0

    .line 243
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 245
    :cond_0
    if-eqz v1, :cond_1

    .line 246
    const/high16 v4, 0x1000

    or-int/2addr p0, v4

    .line 248
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 249
    .local v0, curSize:I
    if-ge v3, v0, :cond_2

    .line 250
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 252
    :cond_2
    return p0

    .line 210
    .end local v0           #curSize:I
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 213
    const/4 v3, 0x4

    .line 225
    .restart local v3       #screenLayoutSize:I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 226
    :cond_4
    const/4 v1, 0x1

    .line 232
    .restart local v1       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 234
    const/4 v2, 0x1

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0

    .line 214
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 217
    const/4 v3, 0x3

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 219
    .end local v3           #screenLayoutSize:I
    :cond_6
    const/4 v3, 0x2

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 228
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 236
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .parameter "curLayout"

    .prologue
    .line 187
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1254
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1255
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1256
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 1306
    :cond_0
    :goto_0
    return v2

    .line 1257
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1258
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 1259
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1260
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 1261
    if-nez v2, :cond_0

    .line 1262
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 1263
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 1264
    :cond_3
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v4, :cond_4

    move v2, v3

    .line 1265
    goto :goto_0

    .line 1267
    :cond_4
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1268
    if-nez v2, :cond_0

    .line 1269
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1270
    if-nez v2, :cond_0

    .line 1271
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1272
    if-nez v2, :cond_0

    .line 1274
    :cond_5
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v3, v4

    .line 1275
    if-nez v2, :cond_0

    .line 1276
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v3, v4

    .line 1277
    if-nez v2, :cond_0

    .line 1278
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v3, v4

    .line 1279
    if-nez v2, :cond_0

    .line 1280
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v3, v4

    .line 1281
    if-nez v2, :cond_0

    .line 1282
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v3, v4

    .line 1283
    if-nez v2, :cond_0

    .line 1284
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v3, v4

    .line 1285
    if-nez v2, :cond_0

    .line 1286
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v3, v4

    .line 1287
    if-nez v2, :cond_0

    .line 1288
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v3, v4

    .line 1289
    if-nez v2, :cond_0

    .line 1290
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v3, v4

    .line 1291
    if-nez v2, :cond_0

    .line 1292
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v3, v4

    .line 1293
    if-nez v2, :cond_0

    .line 1294
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v3, v4

    .line 1295
    if-nez v2, :cond_0

    .line 1296
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v3, v4

    .line 1297
    if-nez v2, :cond_0

    .line 1298
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v2, v3, v4

    invoke-static {p0, v2, p1}, Landroid/content/res/Injector$ConfigurationHook;->compareTo(Landroid/content/res/Configuration;ILandroid/content/res/Configuration;)I

    move-result v2

    .line 1306
    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1152
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, changed:I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1017
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 1019
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    .line 1020
    or-int/lit8 v0, v0, 0x1

    .line 1022
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    .line 1023
    or-int/lit8 v0, v0, 0x2

    .line 1025
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1027
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1028
    or-int/lit16 v0, v0, 0x2000

    .line 1030
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .line 1031
    .local v1, deltaScreenLayoutDir:I
    if-eqz v1, :cond_5

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5

    .line 1033
    or-int/lit16 v0, v0, 0x2000

    .line 1035
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_6

    .line 1037
    or-int/lit8 v0, v0, 0x8

    .line 1039
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_7

    .line 1041
    or-int/lit8 v0, v0, 0x10

    .line 1043
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_8

    .line 1045
    or-int/lit8 v0, v0, 0x20

    .line 1047
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_9

    .line 1049
    or-int/lit8 v0, v0, 0x20

    .line 1051
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_a

    .line 1053
    or-int/lit8 v0, v0, 0x40

    .line 1055
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_b

    .line 1057
    or-int/lit8 v0, v0, 0x20

    .line 1059
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_c

    .line 1061
    or-int/lit16 v0, v0, 0x80

    .line 1063
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 1067
    or-int/lit16 v0, v0, 0x100

    .line 1069
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_e

    .line 1071
    or-int/lit16 v0, v0, 0x200

    .line 1073
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_f

    .line 1075
    or-int/lit16 v0, v0, 0x400

    .line 1077
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_10

    .line 1079
    or-int/lit16 v0, v0, 0x400

    .line 1081
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_11

    .line 1083
    or-int/lit16 v0, v0, 0x800

    .line 1085
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_12

    .line 1087
    or-int/lit16 v0, v0, 0x1000

    .line 1092
    :cond_12
    invoke-static {p0, p1, v0}, Landroid/content/res/Injector$ConfigurationHook;->diff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v2

    return v2
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1310
    if-nez p1, :cond_1

    move v0, v1

    .line 1312
    :cond_0
    :goto_0
    return v0

    .line 1311
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1312
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 1317
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1320
    :goto_0
    return v0

    .line 1318
    :catch_0
    move-exception v0

    .line 1320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1324
    const/16 v0, 0x11

    .line 1325
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1326
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v2

    .line 1327
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v2

    .line 1328
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 1329
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v2

    .line 1330
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v2

    .line 1331
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v2

    .line 1332
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v2

    .line 1333
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v2

    .line 1334
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v2

    .line 1335
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v2

    .line 1336
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v2

    .line 1337
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v2

    .line 1338
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v2

    .line 1339
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v2

    .line 1340
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v2

    .line 1341
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v2

    invoke-static {p0}, Landroid/content/res/Injector$ConfigurationHook;->hashCode(Landroid/content/res/Configuration;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 1328
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 266
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 267
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    if-nez p1, :cond_1

    move v1, v2

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1129
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1134
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1139
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1140
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1143
    goto :goto_0

    .line 1145
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 838
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1197
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-static {p0, p1}, Landroid/content/res/Injector$ConfigurationHook;->readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V

    .line 1227
    return-void

    .line 1204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 1387
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1388
    .local v0, layoutDirection:I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1390
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1358
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1360
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1361
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 633
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 634
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 635
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 636
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 639
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 640
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 641
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 642
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 643
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 644
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 645
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 646
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 647
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 648
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 649
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 650
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 651
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 652
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 653
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 654
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 655
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 656
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-static {p0, p1}, Landroid/content/res/Injector$ConfigurationHook;->setTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 662
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 811
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 813
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 814
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 815
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 816
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 817
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 818
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 819
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 820
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 821
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 822
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 823
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 824
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 825
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 826
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 827
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    invoke-static {p0}, Landroid/content/res/Injector$ConfigurationHook;->setToDefaults(Landroid/content/res/Configuration;)V

    .line 833
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 666
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    .line 670
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    .line 676
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 682
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 688
    .local v0, layoutDir:I
    sparse-switch v0, :sswitch_data_0

    .line 692
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    .line 696
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    .line 701
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    .line 706
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    .line 711
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 721
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 728
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 735
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 744
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 750
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 757
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 764
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 771
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 777
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 785
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 791
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    .line 794
    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    :cond_0
    .line 802
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/content/res/Injector$ConfigurationHook;->toString(Landroid/content/res/Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 673
    .end local v0           #layoutDir:I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 679
    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 685
    :cond_3
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 689
    .restart local v0       #layoutDir:I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 690
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 691
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 698
    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 703
    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 708
    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 713
    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 716
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 717
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 718
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 719
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 720
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 725
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 727
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 732
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 733
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 734
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 738
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 740
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 741
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 742
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 743
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 747
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 749
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 753
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 754
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 755
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 756
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 760
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 761
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 762
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 763
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 767
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 768
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 769
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 770
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 774
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 775
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 776
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 780
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 781
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 782
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 783
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 784
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 788
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 789
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 790
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 724
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 731
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 737
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 746
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 752
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 759
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 766
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 773
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 779
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 787
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, changed:I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 851
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 852
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 854
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    .line 855
    or-int/lit8 v0, v0, 0x1

    .line 856
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    .line 858
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    .line 859
    or-int/lit8 v0, v0, 0x2

    .line 860
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    .line 862
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 864
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 865
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    :goto_0
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 868
    or-int/lit16 v0, v0, 0x2000

    .line 871
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 873
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .line 874
    .local v1, deltaScreenLayoutDir:I
    if-eqz v1, :cond_5

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5

    .line 876
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 877
    or-int/lit16 v0, v0, 0x2000

    .line 879
    :cond_5
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_6

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_7

    .line 881
    :cond_6
    or-int/lit8 v0, v0, 0x4

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 884
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_8

    .line 886
    or-int/lit8 v0, v0, 0x8

    .line 887
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 889
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_9

    .line 891
    or-int/lit8 v0, v0, 0x10

    .line 892
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 894
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_a

    .line 896
    or-int/lit8 v0, v0, 0x20

    .line 897
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 899
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_b

    .line 901
    or-int/lit8 v0, v0, 0x20

    .line 902
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 904
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_c

    .line 906
    or-int/lit8 v0, v0, 0x40

    .line 907
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 909
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_d

    .line 911
    or-int/lit8 v0, v0, 0x20

    .line 912
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 914
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_e

    .line 916
    or-int/lit16 v0, v0, 0x80

    .line 917
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 919
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_f

    .line 923
    or-int/lit16 v0, v0, 0x100

    .line 925
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-nez v2, :cond_1b

    .line 926
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 931
    :cond_f
    :goto_1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_11

    .line 933
    or-int/lit16 v0, v0, 0x200

    .line 934
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_10

    .line 935
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 938
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_11

    .line 939
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 943
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_12

    .line 945
    or-int/lit16 v0, v0, 0x400

    .line 946
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 948
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_13

    .line 950
    or-int/lit16 v0, v0, 0x400

    .line 951
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 953
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_14

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_14

    .line 955
    or-int/lit16 v0, v0, 0x800

    .line 956
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 958
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_15

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_15

    .line 960
    or-int/lit16 v0, v0, 0x1000

    .line 961
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 963
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_16

    .line 964
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 966
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_17

    .line 967
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 969
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_18

    .line 970
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 972
    :cond_18
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_19

    .line 973
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 977
    :cond_19
    invoke-static {p0, p1, v0}, Landroid/content/res/Injector$ConfigurationHook;->updateFrom(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v2

    return v2

    .end local v1           #deltaScreenLayoutDir:I
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 928
    .restart local v1       #deltaScreenLayoutDir:I
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1156
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1157
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1160
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0, p1, p2}, Landroid/content/res/Injector$ConfigurationHook;->writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;I)V

    .line 1194
    return-void

    .line 1162
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
