.class Lnubia/fancydrawable/DateDrawable$1;
.super Ljava/lang/Object;
.source "DateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/fancydrawable/DateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/fancydrawable/DateDrawable;


# direct methods
.method constructor <init>(Lnubia/fancydrawable/DateDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    #setter for: Lnubia/fancydrawable/DateDrawable;->mStartTime:J
    invoke-static {v0, v1, v2}, Lnubia/fancydrawable/DateDrawable;->access$002(Lnubia/fancydrawable/DateDrawable;J)J

    .line 89
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable$1;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 95
    return-void
.end method
