.class Lcom/android/internal/telephony/CallerInfo$Injector;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field private static mContactRef:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "cursor"
    .parameter "defaultName"

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/CallerInfo$Injector;->mContactRef:Landroid/net/Uri;

    invoke-static {v0, p1, p0}, Lmiui/telephony/CallerInfo;->getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static setContactRef(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactRef"

    .prologue
    .line 57
    sput-object p0, Lcom/android/internal/telephony/CallerInfo$Injector;->mContactRef:Landroid/net/Uri;

    return-void
.end method
