.class public Landroid/content/SmartShowContext;
.super Ljava/lang/Object;
.source "SmartShowContext.java"


# static fields
.field static mContext:Landroid/content/ISmartShowContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/content/ISmartShowContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    sput-object p0, Landroid/content/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    .line 38
    return-void
.end method

.method public static getInstance()Landroid/content/ISmartShowContext;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/content/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    return-object v0
.end method
