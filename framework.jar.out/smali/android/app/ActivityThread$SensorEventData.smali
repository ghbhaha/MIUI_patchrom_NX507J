.class final Landroid/app/ActivityThread$SensorEventData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventData"
.end annotation


# instance fields
.field reserved:I

.field token:Landroid/os/IBinder;

.field value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
