.class public Landroid/os/RecoverySystemWrapper;
.super Ljava/lang/Object;
.source "RecoverySystemWrapper.java"


# static fields
.field private static final DELETE_FUNCTION:Ljava/lang/String; = "delete"

.field private static final EXTRA_FUNCTION:Ljava/lang/String; = "function"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "delete"

    const-string v1, "function"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootDeleteUserData(Landroid/content/Context;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    goto :goto_0
.end method
