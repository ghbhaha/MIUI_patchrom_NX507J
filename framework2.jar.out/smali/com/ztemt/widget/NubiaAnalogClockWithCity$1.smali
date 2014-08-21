.class Lcom/ztemt/widget/NubiaAnalogClockWithCity$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/ztemt/widget/NubiaAnalogClockWithCity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    #getter for: Lcom/ztemt/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClockWithCity;->access$000(Lcom/ztemt/widget/NubiaAnalogClockWithCity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    #getter for: Lcom/ztemt/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClockWithCity;->access$100(Lcom/ztemt/widget/NubiaAnalogClockWithCity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 171
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClockWithCity$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClockWithCity;

    #calls: Lcom/ztemt/widget/NubiaAnalogClockWithCity;->updateTime()V
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClockWithCity;->access$200(Lcom/ztemt/widget/NubiaAnalogClockWithCity;)V

    .line 172
    return-void
.end method
