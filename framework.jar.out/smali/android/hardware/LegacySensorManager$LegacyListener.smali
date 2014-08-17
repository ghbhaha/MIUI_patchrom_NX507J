.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 218
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 221
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 223
    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 371
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 373
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 375
    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    .line 377
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .locals 1
    .parameter "sensors"

    .prologue
    .line 253
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    aget v0, p2, v4

    .line 304
    .local v0, x:F
    aget v1, p2, v5

    .line 305
    .local v1, y:F
    aget v2, p2, v6

    .line 307
    .local v2, z:F
    sparse-switch p1, :sswitch_data_0

    .line 322
    :goto_0
    aput v0, p2, v4

    .line 323
    aput v1, p2, v5

    .line 324
    aput v2, p2, v6

    .line 325
    const/4 v3, 0x3

    aput v0, p2, v3

    .line 326
    const/4 v3, 0x4

    aput v1, p2, v3

    .line 327
    const/4 v3, 0x5

    aput v2, p2, v3

    .line 329
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 331
    sparse-switch p1, :sswitch_data_1

    .line 346
    :cond_0
    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 347
    aget v0, p2, v4

    .line 348
    aget v1, p2, v5

    .line 349
    aget v2, p2, v6

    .line 351
    sparse-switch p1, :sswitch_data_2

    .line 366
    :cond_1
    :goto_2
    return-void

    .line 310
    :sswitch_0
    neg-float v2, v2

    .line 311
    goto :goto_0

    .line 313
    :sswitch_1
    neg-float v0, v0

    .line 314
    neg-float v1, v1

    .line 315
    neg-float v2, v2

    .line 316
    goto :goto_0

    .line 318
    :sswitch_2
    neg-float v0, v0

    .line 319
    neg-float v1, v1

    goto :goto_0

    .line 334
    :sswitch_3
    neg-float v3, v1

    aput v3, p2, v4

    .line 335
    aput v0, p2, v5

    .line 336
    aput v2, p2, v6

    goto :goto_1

    .line 340
    :sswitch_4
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x5a

    :goto_3
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    .line 341
    aput v2, p2, v5

    .line 342
    aput v1, p2, v6

    goto :goto_1

    .line 340
    :cond_2
    const/16 v3, -0x10e

    goto :goto_3

    .line 354
    :sswitch_5
    neg-float v3, v0

    aput v3, p2, v4

    .line 355
    neg-float v3, v1

    aput v3, p2, v5

    .line 356
    aput v2, p2, v6

    goto :goto_2

    .line 360
    :sswitch_6
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_3

    sub-float v3, v0, v7

    :goto_4
    aput v3, p2, v4

    .line 361
    neg-float v3, v1

    aput v3, p2, v5

    .line 362
    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_2

    .line 360
    :cond_3
    add-float v3, v0, v7

    goto :goto_4

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch

    .line 331
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 351
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method hasSensors()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 268
    .local v2, v:[F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    .line 269
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    .line 270
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    .line 271
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 272
    .local v1, type:I
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v0

    .line 274
    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft0Enabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 275
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 280
    :cond_0
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 281
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 284
    :cond_1
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 285
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v6, v2, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v3

    aput v3, v2, v7

    .line 286
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v8, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 291
    :cond_2
    :goto_1
    return-void

    .line 276
    :cond_3
    invoke-static {}, Landroid/hardware/LegacySensorManager;->access$000()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    goto :goto_0

    .line 289
    :cond_4
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v0, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_1
.end method

.method registerSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    const/4 v1, 0x0

    .line 226
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 230
    .local v0, alreadyHasOrientationSensor:Z
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 231
    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method unregisterSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    const/4 v0, 0x0

    .line 238
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 242
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
