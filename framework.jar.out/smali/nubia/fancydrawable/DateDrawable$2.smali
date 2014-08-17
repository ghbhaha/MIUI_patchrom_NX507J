.class Lnubia/fancydrawable/DateDrawable$2;
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
    .line 98
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable$2;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable$2;->this$0:Lnubia/fancydrawable/DateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 101
    return-void
.end method
