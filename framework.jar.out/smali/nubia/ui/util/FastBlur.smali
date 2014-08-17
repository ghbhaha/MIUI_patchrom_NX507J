.class public Lnubia/ui/util/FastBlur;
.super Ljava/lang/Object;
.source "FastBlur.java"


# static fields
.field private static final DEFAULT_RADIUS:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .parameter "sentBitmap"
    .parameter "radius"
    .parameter "canReuseInBitmap"

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 20
    move-object/from16 v2, p0

    .line 25
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    .line 26
    const/4 v2, 0x0

    .line 220
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 22
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 30
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 32
    .local v9, h:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 33
    .local v3, pix:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    add-int/lit8 v36, v5, -0x1

    .line 36
    .local v36, wm:I
    add-int/lit8 v21, v9, -0x1

    .line 37
    .local v21, hm:I
    mul-int v35, v5, v9

    .line 38
    .local v35, wh:I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 40
    .local v14, div:I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 41
    .local v24, r:[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 42
    .local v17, g:[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 44
    .local v10, b:[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 46
    .local v34, vmin:[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 47
    .local v15, divsum:I
    mul-int/2addr v15, v15

    .line 48
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 49
    .local v16, dv:[I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 50
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 49
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 53
    :cond_2
    const/16 v39, 0x0

    .local v39, yi:I
    move/from16 v41, v39

    .line 55
    .local v41, yw:I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 60
    .local v31, stack:[[I
    add-int/lit8 v25, p1, 0x1

    .line 64
    .local v25, r1:I
    const/16 v38, 0x0

    .local v38, y:I
    :goto_3
    move/from16 v0, v38

    if-ge v0, v9, :cond_7

    .line 65
    const/4 v13, 0x0

    .local v13, bsum:I
    move/from16 v20, v13

    .local v20, gsum:I
    move/from16 v29, v13

    .local v29, rsum:I
    move v12, v13

    .local v12, boutsum:I
    move/from16 v19, v13

    .local v19, goutsum:I
    move/from16 v28, v13

    .local v28, routsum:I
    move v11, v13

    .local v11, binsum:I
    move/from16 v18, v13

    .local v18, ginsum:I
    move/from16 v27, v13

    .line 66
    .local v27, rinsum:I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    .line 67
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 68
    .local v23, p:I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 69
    .local v30, sir:[I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 70
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 71
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 72
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 73
    .local v26, rbs:I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 74
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 75
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 76
    if-lez v22, :cond_3

    .line 77
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 78
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 79
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 66
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 81
    :cond_3
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 82
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 83
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_5

    .line 86
    .end local v23           #p:I
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_4
    move/from16 v32, p1

    .line 88
    .local v32, stackpointer:I
    const/16 v37, 0x0

    .local v37, x:I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_6

    .line 90
    aget v4, v16, v29

    aput v4, v24, v39

    .line 91
    aget v4, v16, v20

    aput v4, v17, v39

    .line 92
    aget v4, v16, v13

    aput v4, v10, v39

    .line 94
    sub-int v29, v29, v28

    .line 95
    sub-int v20, v20, v19

    .line 96
    sub-int/2addr v13, v12

    .line 98
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 99
    .local v33, stackstart:I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 101
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 102
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 103
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 105
    if-nez v38, :cond_5

    .line 106
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 108
    :cond_5
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 110
    .restart local v23       #p:I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 111
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 112
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 114
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 115
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 116
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 118
    add-int v29, v29, v27

    .line 119
    add-int v20, v20, v18

    .line 120
    add-int/2addr v13, v11

    .line 122
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 123
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 125
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 126
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 127
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 129
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 130
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 131
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 133
    add-int/lit8 v39, v39, 0x1

    .line 88
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 135
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_6
    add-int v41, v41, v5

    .line 64
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 137
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v37           #x:I
    :cond_7
    const/16 v37, 0x0

    .restart local v37       #x:I
    :goto_7
    move/from16 v0, v37

    if-ge v0, v5, :cond_d

    .line 138
    const/4 v13, 0x0

    .restart local v13       #bsum:I
    move/from16 v20, v13

    .restart local v20       #gsum:I
    move/from16 v29, v13

    .restart local v29       #rsum:I
    move v12, v13

    .restart local v12       #boutsum:I
    move/from16 v19, v13

    .restart local v19       #goutsum:I
    move/from16 v28, v13

    .restart local v28       #routsum:I
    move v11, v13

    .restart local v11       #binsum:I
    move/from16 v18, v13

    .restart local v18       #ginsum:I
    move/from16 v27, v13

    .line 139
    .restart local v27       #rinsum:I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 140
    .local v40, yp:I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    .line 141
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 143
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 145
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 146
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 147
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 149
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 151
    .restart local v26       #rbs:I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 152
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 153
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 155
    if-lez v22, :cond_9

    .line 156
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 157
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 158
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 165
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 166
    add-int v40, v40, v5

    .line 140
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 160
    :cond_9
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 161
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 162
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 169
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_a
    move/from16 v39, v37

    .line 170
    move/from16 v32, p1

    .line 171
    .restart local v32       #stackpointer:I
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v9, :cond_c

    .line 173
    const/high16 v4, -0x100

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 175
    sub-int v29, v29, v28

    .line 176
    sub-int v20, v20, v19

    .line 177
    sub-int/2addr v13, v12

    .line 179
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 180
    .restart local v33       #stackstart:I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 182
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 183
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 184
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 186
    if-nez v37, :cond_b

    .line 187
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 189
    :cond_b
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 191
    .restart local v23       #p:I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 192
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 193
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 195
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 196
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 197
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 199
    add-int v29, v29, v27

    .line 200
    add-int v20, v20, v18

    .line 201
    add-int/2addr v13, v11

    .line 203
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 204
    aget-object v30, v31, v32

    .line 206
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 207
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 208
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 210
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 211
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 212
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 214
    add-int v39, v39, v5

    .line 171
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 137
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 218
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v40           #yp:I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method

.method public static doBlur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sentBitmap"
    .parameter "canReuseInBitmap"

    .prologue
    .line 14
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lnubia/ui/util/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
