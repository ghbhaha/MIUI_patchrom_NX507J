.class Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    #calls: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->turnScreenOn()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$000(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v1, v1, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    #getter for: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$100(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$200(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 46
    return-void
.end method
