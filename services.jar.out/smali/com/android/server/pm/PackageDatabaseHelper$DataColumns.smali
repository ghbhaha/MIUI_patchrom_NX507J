.class public Lcom/android/server/pm/PackageDatabaseHelper$DataColumns;
.super Ljava/lang/Object;
.source "PackageDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataColumns"
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final VERSION_CODE:Ljava/lang/String; = "version_code"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageDatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/pm/PackageDatabaseHelper$DataColumns;->this$0:Lcom/android/server/pm/PackageDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
