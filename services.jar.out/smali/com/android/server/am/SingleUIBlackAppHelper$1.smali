.class Lcom/android/server/am/SingleUIBlackAppHelper$1;
.super Ljava/util/ArrayList;
.source "SingleUIBlackAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SingleUIBlackAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SingleUIBlackAppHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/SingleUIBlackAppHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$1;->this$0:Lcom/android/server/am/SingleUIBlackAppHelper;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/am/SingleUIBlackAppHelper;->access$000()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
