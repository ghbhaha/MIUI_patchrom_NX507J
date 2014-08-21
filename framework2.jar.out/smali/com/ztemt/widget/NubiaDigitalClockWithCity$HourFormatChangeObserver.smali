.class Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "NubiaDigitalClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ztemt/widget/NubiaDigitalClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HourFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;


# direct methods
.method public constructor <init>(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;->this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;->this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;

    iget-object v1, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;->this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    #setter for: Lcom/ztemt/widget/NubiaDigitalClockWithCity;->mIs24Hour:Z
    invoke-static {v0, v1}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->access$302(Lcom/ztemt/widget/NubiaDigitalClockWithCity;Z)Z

    .line 83
    iget-object v0, p0, Lcom/ztemt/widget/NubiaDigitalClockWithCity$HourFormatChangeObserver;->this$0:Lcom/ztemt/widget/NubiaDigitalClockWithCity;

    #calls: Lcom/ztemt/widget/NubiaDigitalClockWithCity;->onTimeChanged()V
    invoke-static {v0}, Lcom/ztemt/widget/NubiaDigitalClockWithCity;->access$100(Lcom/ztemt/widget/NubiaDigitalClockWithCity;)V

    .line 84
    return-void
.end method
