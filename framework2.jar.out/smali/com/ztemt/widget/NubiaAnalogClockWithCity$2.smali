.class Lcom/ztemt/widget/NubiaAnalogClockWithCity$2;
.super Landroid/database/ContentObserver;
.source "NubiaAnalogClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ztemt/widget/NubiaAnalogClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;


# direct methods
.method constructor <init>(Lcom/ztemt/widget/NubiaAnalogClockWithCity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$2;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 180
    iget-object v0, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$2;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    #calls: Lcom/ztemt/widget/NubiaAnalogClockWithCity;->updateTime()V
    invoke-static {v0}, Lcom/ztemt/widget/NubiaAnalogClockWithCity;->access$200(Lcom/ztemt/widget/NubiaAnalogClockWithCity;)V

    .line 181
    return-void
.end method
