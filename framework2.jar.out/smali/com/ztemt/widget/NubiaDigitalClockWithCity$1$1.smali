.class Lcom/ztemt/widget/NubiaDigitalClockWithCity$1$1;
.super Ljava/lang/Object;
.source "NubiaDigitalClockWithCity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;


# direct methods
.method constructor <init>(Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$1$1;->this$1:Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$1$1;->this$1:Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;

    iget-object v0, v0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$1;->this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;

    #calls: Lcom/ztemt/widget/NubiaDigitalClockWithCity;->onTimeChanged()V
    invoke-static {v0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->access$100(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V

    .line 69
    return-void
.end method
