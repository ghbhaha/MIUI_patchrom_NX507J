.class Landroid/os/nubia/breathlight/BreathinglightService$5;
.super Ljava/lang/Object;
.source "BreathinglightService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/nubia/breathlight/BreathinglightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/nubia/breathlight/BreathinglightService;


# direct methods
.method constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 639
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x38

    .line 643
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mAverageValue:F
    invoke-static {v4}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1200(Landroid/os/nubia/breathlight/BreathinglightService;)F

    move-result v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    #setter for: Landroid/os/nubia/breathlight/BreathinglightService;->mAverageValue:F
    invoke-static {v3, v4}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1202(Landroid/os/nubia/breathlight/BreathinglightService;F)F

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mLastAutoChangeTime:J
    invoke-static {v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1300(Landroid/os/nubia/breathlight/BreathinglightService;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 645
    .local v0, intervalTime:J
    const-wide/16 v3, 0xbb8

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 647
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Landroid/os/nubia/breathlight/BreathinglightService;->mLastAutoChangeTime:J
    invoke-static {v3, v4, v5}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1302(Landroid/os/nubia/breathlight/BreathinglightService;J)J

    .line 648
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v4, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mAverageValue:F
    invoke-static {v4}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1200(Landroid/os/nubia/breathlight/BreathinglightService;)F

    move-result v4

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->getBreathLightLevel(F)I
    invoke-static {v3, v4}, Landroid/os/nubia/breathlight/BreathinglightService;->access$1400(Landroid/os/nubia/breathlight/BreathinglightService;F)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v3, 0xa

    .line 650
    .local v2, min_grade:I
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v3}, Landroid/os/nubia/breathlight/BreathinglightService;->getMinGrade()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v3, v3, Landroid/os/nubia/breathlight/BreathinglightService;->pm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v3}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightness()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v3}, Landroid/os/nubia/breathlight/BreathinglightService;->getBrightness()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 652
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v3, v2}, Landroid/os/nubia/breathlight/BreathinglightService;->setMinGrade(I)V

    .line 653
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v7}, Landroid/os/nubia/breathlight/BreathinglightService;->setKeycodeBrightness(II)V

    .line 654
    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$5;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Landroid/os/nubia/breathlight/BreathinglightService;->setKeycodeBrightness(II)V

    .line 657
    .end local v2           #min_grade:I
    :cond_0
    return-void
.end method
