.class Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;
.super Landroid/os/Handler;
.source "DoubleClickScreenOnCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    #calls: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->turnScreenOn()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$000(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v1, v1, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$2;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    #getter for: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$100(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$200(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 62
    return-void
.end method
