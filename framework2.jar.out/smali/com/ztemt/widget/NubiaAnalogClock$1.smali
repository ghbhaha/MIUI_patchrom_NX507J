.class Lcom/ztemt/widget/NubiaAnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ztemt/widget/NubiaAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztemt/widget/NubiaAnalogClock;


# direct methods
.method constructor <init>(Lcom/ztemt/widget/NubiaAnalogClock;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    #getter for: Lcom/ztemt/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClock;->access$000(Lcom/ztemt/widget/NubiaAnalogClock;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 294
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/ztemt/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Lcom/ztemt/widget/NubiaAnalogClock;->access$102(Lcom/ztemt/widget/NubiaAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 298
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    #calls: Lcom/ztemt/widget/NubiaAnalogClock;->is24Hour()V
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClock;->access$200(Lcom/ztemt/widget/NubiaAnalogClock;)V

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    #calls: Lcom/ztemt/widget/NubiaAnalogClock;->onTimeChanged()V
    invoke-static {v1}, Lcom/ztemt/widget/NubiaAnalogClock;->access$300(Lcom/ztemt/widget/NubiaAnalogClock;)V

    .line 304
    iget-object v1, p0, Lcom/ztemt/widget/NubiaAnalogClock$1;->this$0:Lcom/ztemt/widget/NubiaAnalogClock;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 305
    return-void
.end method
