.class Landroid/view/EtViewFetcher;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# static fields
.field private static final tag:Ljava/lang/String; = "EtViewFetcher"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "group"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2369
    .local p0, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    invoke-static {p0, p1, p2}, Landroid/view/EtViewFetcher;->addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2388
    :cond_0
    return-void

    .line 2374
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2375
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2377
    const-string v4, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2378
    .local v2, myPath:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2379
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 2381
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-static {p0, v3, v2}, Landroid/view/EtViewFetcher;->addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 2375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2385
    .restart local v3       #view:Landroid/view/View;
    :cond_2
    invoke-static {p0, v3, v2}, Landroid/view/EtViewFetcher;->addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2399
    .local p0, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    new-instance v0, Landroid/view/EtViewInfo;

    invoke-direct {v0, p1, p2}, Landroid/view/EtViewInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 2400
    .local v0, vi:Landroid/view/EtViewInfo;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    const/4 v1, 0x1

    return v1
.end method

.method public static getCoordFromDesc(Landroid/view/View;Ljava/lang/String;III)[I
    .locals 11
    .parameter "root"
    .parameter "desc"
    .parameter "index"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    .line 2257
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {v8}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v5

    .line 2258
    .local v5, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v6, 0x0

    .line 2260
    .local v6, xyCenter:[I
    const/4 v3, 0x0

    .line 2261
    .local v3, find:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/EtViewInfo;

    .line 2263
    .local v2, etVi:Landroid/view/EtViewInfo;
    const-string v1, ""

    .line 2264
    .local v1, descMe:Ljava/lang/String;
    iget-object v8, v2, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2265
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 2267
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2270
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-static {v8, p3, p4}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2272
    add-int/lit8 v3, v3, 0x1

    .line 2273
    if-ne v3, p2, :cond_0

    .line 2275
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 2276
    iget-object v8, v2, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2277
    const/4 v8, 0x0

    aget v9, v6, v8

    iget-object v10, v2, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v6, v8

    .line 2278
    const/4 v8, 0x1

    aget v9, v6, v8

    iget-object v10, v2, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v6, v8

    move-object v7, v6

    .line 2284
    .end local v0           #cs:Ljava/lang/CharSequence;
    .end local v1           #descMe:Ljava/lang/String;
    .end local v2           #etVi:Landroid/view/EtViewInfo;
    .end local v6           #xyCenter:[I
    .local v7, xyCenter:[I
    :goto_0
    return-object v7

    .end local v7           #xyCenter:[I
    .restart local v6       #xyCenter:[I
    :cond_2
    move-object v7, v6

    .end local v6           #xyCenter:[I
    .restart local v7       #xyCenter:[I
    goto :goto_0
.end method

.method public static getSpecViewInfo(Landroid/view/View;IIII)Landroid/view/EtViewInfo;
    .locals 18
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    .line 2079
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    invoke-static/range {v16 .. v16}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v15

    .line 2080
    .local v15, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    .local v5, foundViewIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 2085
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 2087
    .local v3, curView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v16

    if-nez v16, :cond_1

    .line 2083
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2092
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Landroid/view/EtViewFetcher;->xyInView(Landroid/view/View;II)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2094
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2098
    .end local v3           #curView:Landroid/view/View;
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2099
    .local v10, justIndex:I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    .line 2101
    .local v11, justPath:Ljava/lang/String;
    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    .line 2103
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2104
    .local v8, index:I
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    .line 2105
    .local v12, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 2107
    move v10, v8

    .line 2108
    move-object v11, v12

    .line 2101
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2114
    .end local v8           #index:I
    .end local v12           #path:Ljava/lang/String;
    :cond_4
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/EtViewInfo;

    .line 2116
    .local v9, justEtVi:Landroid/view/EtViewInfo;
    iget-object v14, v9, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 2117
    .local v14, view:Landroid/view/View;
    const-string v13, ""

    .line 2118
    .local v13, text:Ljava/lang/String;
    instance-of v0, v14, Landroid/widget/TextView;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 2120
    check-cast v14, Landroid/widget/TextView;

    .end local v14           #view:Landroid/view/View;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2123
    :cond_5
    const/4 v8, 0x0

    .line 2124
    .restart local v8       #index:I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/EtViewInfo;

    .line 2126
    .local v4, etVi:Landroid/view/EtViewInfo;
    iget-object v2, v4, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 2127
    .local v2, aView:Landroid/view/View;
    instance-of v0, v2, Landroid/widget/TextView;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v16, v2

    .line 2129
    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v1}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2132
    add-int/lit8 v8, v8, 0x1

    .line 2134
    iget-object v0, v4, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v9, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2142
    .end local v2           #aView:Landroid/view/View;
    .end local v4           #etVi:Landroid/view/EtViewInfo;
    :cond_7
    iput v8, v9, Landroid/view/EtViewInfo;->sameTextIndex:I

    .line 2145
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    return-object v16
.end method

.method public static getTextCenter(Landroid/view/View;Ljava/lang/String;III)[I
    .locals 10
    .parameter "root"
    .parameter "text"
    .parameter "index"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    .line 2291
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v7}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    .line 2292
    .local v4, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v5, 0x0

    .line 2294
    .local v5, xyCenter:[I
    const/4 v1, 0x0

    .line 2295
    .local v1, find:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2297
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 2299
    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 2300
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3, p3, p4}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2303
    add-int/lit8 v1, v1, 0x1

    .line 2304
    if-ne v1, p2, :cond_0

    .line 2306
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 2307
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2308
    const/4 v7, 0x0

    aget v8, v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    aput v8, v5, v7

    .line 2309
    const/4 v7, 0x1

    aget v8, v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    aput v8, v5, v7

    move-object v6, v5

    .line 2316
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    .end local v5           #xyCenter:[I
    .local v6, xyCenter:[I
    :goto_0
    return-object v6

    .end local v6           #xyCenter:[I
    .restart local v5       #xyCenter:[I
    :cond_1
    move-object v6, v5

    .end local v5           #xyCenter:[I
    .restart local v6       #xyCenter:[I
    goto :goto_0
.end method

.method public static getViewCenter(Landroid/view/View;I)[I
    .locals 8
    .parameter "root"
    .parameter "id"

    .prologue
    .line 2154
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v2

    .line 2155
    .local v2, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v3, 0x0

    .line 2157
    .local v3, xyCenter:[I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2159
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v5, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 2161
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 2162
    iget-object v5, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2163
    const/4 v5, 0x0

    aget v6, v3, v5

    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 2164
    const/4 v5, 0x1

    aget v6, v3, v5

    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v3, v5

    move-object v4, v3

    .line 2170
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #xyCenter:[I
    .local v4, xyCenter:[I
    :goto_0
    return-object v4

    .end local v4           #xyCenter:[I
    .restart local v3       #xyCenter:[I
    :cond_1
    move-object v4, v3

    .end local v3           #xyCenter:[I
    .restart local v4       #xyCenter:[I
    goto :goto_0
.end method

.method public static getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2052
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .local v2, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const-string v1, "00"

    .line 2055
    .local v1, level:Ljava/lang/String;
    invoke-static {v2, p0, v1}, Landroid/view/EtViewFetcher;->addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 2057
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2059
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2063
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2066
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2068
    :cond_2
    return-object v2
.end method

.method public static searchSpecText(Landroid/view/View;Ljava/lang/String;III)Z
    .locals 7
    .parameter "root"
    .parameter "text"
    .parameter "match"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    const/4 v6, 0x1

    .line 2225
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    .line 2227
    .local v4, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v1, 0x0

    .line 2228
    .local v1, find:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2230
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v5, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 2232
    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 2233
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, p3, p4}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2236
    add-int/lit8 v1, v1, 0x1

    .line 2237
    if-nez p2, :cond_1

    move v5, v6

    .line 2252
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    :goto_0
    return v5

    .line 2243
    .restart local v0       #etVi:Landroid/view/EtViewInfo;
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_1
    if-ne v1, p2, :cond_0

    move v5, v6

    .line 2245
    goto :goto_0

    .line 2252
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static takeScreenshot(Landroid/view/View;Ljava/lang/String;)V
    .locals 13
    .parameter "view"
    .parameter "name"

    .prologue
    .line 2175
    if-eqz p0, :cond_2

    .line 2177
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 2178
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2179
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2180
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 2181
    .local v6, fos:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "ddMMyy-hhmmss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2182
    .local v9, sdf:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 2183
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 2185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2191
    :goto_0
    const-string v1, "/EtViewDebug/"

    .line 2192
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v2, directory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2196
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v8

    .line 2197
    .local v8, mkdirRes:Z
    const-string v10, "EtViewFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mkdirRes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    .end local v8           #mkdirRes:Z
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2203
    .local v5, fileToSave:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x19

    invoke-virtual {v0, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2206
    const-string v10, "EtViewFetcher"

    const-string v11, "Compress/Write failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2210
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 2218
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 2220
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #directory:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #fileToSave:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v9           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    return-void

    .line 2189
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2212
    .restart local v1       #dir:Ljava/lang/String;
    .restart local v2       #directory:Ljava/io/File;
    .restart local v5       #fileToSave:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2214
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v10, "EtViewFetcher"

    const-string v11, "Can\'t save the screenshot! Requires write permission (android.permission.WRITE_EXTERNAL_STORAGE)."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2212
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static viewInScreen(Landroid/view/View;II)Z
    .locals 4
    .parameter "view"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2321
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2322
    .local v0, xy:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2324
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v2

    if-gt v3, p1, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-gt v3, p2, :cond_0

    .line 2330
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static xyInView(Landroid/view/View;II)Z
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2343
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2344
    .local v2, leftTopXy:[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2346
    aget v1, v2, v6

    .line 2347
    .local v1, leftTopX:I
    aget v3, v2, v5

    .line 2348
    .local v3, leftTopY:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2349
    .local v4, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2351
    .local v0, height:I
    if-lt p1, v1, :cond_0

    add-int v7, v1, v4

    if-gt p1, v7, :cond_0

    if-lt p2, v3, :cond_0

    add-int v7, v3, v0

    if-gt p2, v7, :cond_0

    .line 2357
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method
