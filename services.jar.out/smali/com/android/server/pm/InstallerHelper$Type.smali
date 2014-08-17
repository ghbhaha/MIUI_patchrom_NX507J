.class final enum Lcom/android/server/pm/InstallerHelper$Type;
.super Ljava/lang/Enum;
.source "InstallerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/InstallerHelper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/InstallerHelper$Type;

.field public static final enum INSTALLED:Lcom/android/server/pm/InstallerHelper$Type;

.field public static final enum PRESET:Lcom/android/server/pm/InstallerHelper$Type;

.field public static final enum RESTORE:Lcom/android/server/pm/InstallerHelper$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/android/server/pm/InstallerHelper$Type;

    const-string v1, "PRESET"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/InstallerHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Type;->PRESET:Lcom/android/server/pm/InstallerHelper$Type;

    new-instance v0, Lcom/android/server/pm/InstallerHelper$Type;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/InstallerHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Type;->INSTALLED:Lcom/android/server/pm/InstallerHelper$Type;

    new-instance v0, Lcom/android/server/pm/InstallerHelper$Type;

    const-string v1, "RESTORE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/InstallerHelper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Type;->RESTORE:Lcom/android/server/pm/InstallerHelper$Type;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/pm/InstallerHelper$Type;

    sget-object v1, Lcom/android/server/pm/InstallerHelper$Type;->PRESET:Lcom/android/server/pm/InstallerHelper$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/InstallerHelper$Type;->INSTALLED:Lcom/android/server/pm/InstallerHelper$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/InstallerHelper$Type;->RESTORE:Lcom/android/server/pm/InstallerHelper$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Type;->$VALUES:[Lcom/android/server/pm/InstallerHelper$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/InstallerHelper$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/android/server/pm/InstallerHelper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallerHelper$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/InstallerHelper$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/pm/InstallerHelper$Type;->$VALUES:[Lcom/android/server/pm/InstallerHelper$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/InstallerHelper$Type;

    return-object v0
.end method
