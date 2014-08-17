.class public Lcom/android/server/display/SingleUIRectNotifyer;
.super Ljava/lang/Object;
.source "SingleUIRectNotifyer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyInputDispatcherSingleUICapture(Z)V
    .locals 20
    .parameter "capture"

    .prologue
    .line 78
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 79
    .local v8, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 80
    const/4 v1, 0x1

    new-array v7, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 81
    .local v7, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 82
    if-eqz p0, :cond_1

    const/4 v15, -0x2

    .line 83
    .local v15, action:I
    :goto_0
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v16, -0x1

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 101
    .local v18, newEvent:Landroid/view/MotionEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v19

    .line 103
    .local v19, result:Z
    if-nez v19, :cond_0

    .line 104
    const-string v1, "wangshuai"

    const-string v2, "single ui inject event failed ! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v19           #result:Z
    :cond_0
    :goto_1
    return-void

    .line 82
    .end local v15           #action:I
    .end local v18           #newEvent:Landroid/view/MotionEvent;
    :cond_1
    const/4 v15, -0x3

    goto :goto_0

    .line 106
    .restart local v15       #action:I
    .restart local v18       #newEvent:Landroid/view/MotionEvent;
    :catch_0
    move-exception v17

    .line 107
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 20
    .parameter "rectMapping"
    .parameter "rectClip"
    .parameter "windowRect"

    .prologue
    .line 16
    const/4 v6, 0x6

    .line 17
    .local v6, pointerCount:I
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 18
    .local v8, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 19
    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 20
    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 21
    const/4 v1, 0x1

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 22
    const/4 v1, 0x1

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 23
    const/4 v1, 0x1

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 24
    const/4 v1, 0x2

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 25
    const/4 v1, 0x2

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 26
    const/4 v1, 0x2

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 27
    const/4 v1, 0x3

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 28
    const/4 v1, 0x3

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 29
    const/4 v1, 0x3

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 30
    const/4 v1, 0x4

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 31
    const/4 v1, 0x4

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 32
    const/4 v1, 0x4

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 33
    const/4 v1, 0x5

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 34
    const/4 v1, 0x5

    aget-object v1, v8, v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 35
    const/4 v1, 0x5

    aget-object v1, v8, v1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 36
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 37
    .local v7, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 38
    const/4 v1, 0x1

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 39
    const/4 v1, 0x2

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 40
    const/4 v1, 0x3

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 41
    const/4 v1, 0x4

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 42
    const/4 v1, 0x5

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 43
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 61
    .local v18, newEvent:Landroid/view/MotionEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v19

    .line 63
    .local v19, result:Z
    if-nez v19, :cond_0

    .line 64
    const-string v1, "wangshuai"

    const-string v2, "single ui inject event failed ! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v19           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v17

    .line 67
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
