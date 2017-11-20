.class public final Lcom/google/maps/api/android/lib6/gmm6/h/h;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;ILjava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/l;)Lcom/google/maps/api/android/lib6/gmm6/h/l;
    .locals 8

    if-nez p4, :cond_8

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/l;-><init>(B)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :goto_2
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    if-ge p2, v1, :cond_7

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->j(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v6

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/h/i;->a:[I

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/h/c;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1, v1, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(III)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1, v1, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v4, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v1

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->i(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->f(II)I

    move-result v5

    :goto_4
    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v5

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1, v4, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v1, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1, v1, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_6

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v4, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/m;->b:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a(Lcom/google/maps/api/android/lib6/gmm6/h/m;Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;IILcom/google/maps/api/android/lib6/gmm6/h/c;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move-object v0, p4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 13

    const-wide/16 v6, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a()I

    move-result v1

    if-nez v1, :cond_5

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d()D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(Lcom/google/maps/api/android/lib6/gmm6/h/y;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    iget v1, v2, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z
    :try_end_0
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v4

    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpg-double v1, v2, v6

    if-gez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z
    :try_end_1
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when tessellating polygon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c()Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/f;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d()I

    move-result v3

    if-nez v3, :cond_6

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    invoke-direct {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    mul-int/lit8 v2, v3, 0x2

    new-array v5, v2, [I

    move v2, v0

    :goto_2
    iget v6, v1, Lcom/google/maps/api/android/lib6/gmm6/h/f;->c:I

    if-ge v2, v6, :cond_8

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->j(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d(I)I

    move-result v7

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->e(I)I

    move-result v8

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v9

    sget-object v10, Lcom/google/maps/api/android/lib6/gmm6/h/i;->a:[I

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/h/c;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    invoke-virtual {v4, v7, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    invoke-virtual {v4, v6, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    goto :goto_3

    :pswitch_1
    invoke-virtual {v4, v6, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    invoke-virtual {v4, v7, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    goto :goto_3

    :pswitch_2
    invoke-virtual {v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v9

    invoke-virtual {v4, v9, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->f(II)I

    move-result v9

    invoke-virtual {v1, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->c(II)Z

    move-result v10

    if-eqz v10, :cond_7

    aput v6, v5, v0

    add-int/lit8 v10, v0, 0x1

    aput v9, v5, v10

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v9, v3, 0x2

    if-ne v0, v9, :cond_7

    invoke-virtual {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a([I)Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v6, v8, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v9

    iget-object v10, v4, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v10

    iget-object v11, v4, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v11

    invoke-virtual {v4, v10, v11, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(III)I

    move-result v10

    invoke-virtual {v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v11

    invoke-virtual {v4, v11, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->e(II)I

    invoke-virtual {v4, v9, v6, v8, v10}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    const/4 v8, -0x1

    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v4, v6, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    invoke-virtual {v4, v7, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    goto :goto_3

    :pswitch_4
    invoke-virtual {v4, v7, v6, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(III)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v4, v7, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    invoke-virtual {v4, v6, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tesselation could not cut all holes open."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/h/u;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 34

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;ILjava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/l;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v3

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/i;->b:[I

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/h/m;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v3, "Unknown subdivide result in tessellation"

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_1
    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(Lcom/google/maps/api/android/lib6/gmm6/h/y;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v2

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/v;[II)V

    goto :goto_0

    :pswitch_2
    iget-object v12, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    iget-object v11, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->c:Lcom/google/maps/api/android/lib6/gmm6/h/d;

    iget v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->d:I

    iget v9, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->e:I

    iget-object v8, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    iget-object v7, v3, Lcom/google/maps/api/android/lib6/gmm6/h/l;->g:Ljava/util/List;

    invoke-static {v12}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(Lcom/google/maps/api/android/lib6/gmm6/h/y;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v13

    new-instance v28, Ljava/util/LinkedList;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move v4, v9

    move v3, v10

    :goto_1
    if-nez v19, :cond_27

    if-eqz v24, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    const/4 v5, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-le v3, v4, :cond_3

    move/from16 v16, v4

    :goto_2
    if-le v3, v4, :cond_4

    move v2, v3

    :goto_3
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v6

    if-nez v6, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    move/from16 v15, v16

    move/from16 v17, v6

    move/from16 v18, v16

    move v6, v7

    :goto_4
    if-eqz v5, :cond_9

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(II)Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v7

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(II)Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v6

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    invoke-direct {v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    invoke-direct {v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b()V

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v7, v5, v9, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;ILjava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/l;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v5

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v6, v2, v8, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/d;ILjava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/l;)Lcom/google/maps/api/android/lib6/gmm6/h/l;

    move-result-object v2

    if-eqz v21, :cond_1f

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v8

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    array-length v7, v7

    if-ge v7, v8, :cond_2

    :cond_1
    new-array v7, v8, [I

    iput-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    :cond_2
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_20

    iget-object v9, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    add-int v10, v18, v7

    aget v10, v21, v10

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_3
    move/from16 v16, v3

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v6

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v6

    move/from16 v15, v16

    move/from16 v17, v2

    move/from16 v18, v16

    goto :goto_4

    :cond_6
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v6

    if-nez v6, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    move/from16 v15, v16

    move/from16 v17, v6

    move/from16 v18, v16

    move v6, v2

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v6

    move v15, v6

    move/from16 v17, v2

    move/from16 v18, v16

    move v6, v2

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v6

    if-nez v6, :cond_29

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    move/from16 v15, v16

    move/from16 v17, v2

    move/from16 v18, v6

    move v6, v2

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(II)Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v10

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;II)Lcom/google/maps/api/android/lib6/gmm6/h/d;

    move-result-object v8

    sub-int v5, v3, v16

    const/4 v6, 0x0

    invoke-virtual {v10, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->h(II)I

    move-result v12

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(II)Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v9

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v9, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;II)Lcom/google/maps/api/android/lib6/gmm6/h/d;

    move-result-object v7

    sub-int v5, v2, v16

    add-int/lit8 v29, v5, -0x1

    move/from16 v0, v16

    if-gt v4, v0, :cond_a

    move v14, v4

    :goto_7
    move/from16 v0, v16

    if-gt v3, v0, :cond_b

    move v5, v3

    :goto_8
    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->h(II)I

    move-result v11

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v6

    sget-object v31, Lcom/google/maps/api/android/lib6/gmm6/h/i;->a:[I

    invoke-virtual/range {v25 .. v25}, Lcom/google/maps/api/android/lib6/gmm6/h/c;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_1

    move-object v2, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    move v9, v12

    goto/16 :goto_5

    :cond_a
    sub-int v5, v4, v29

    move v14, v5

    goto :goto_7

    :cond_b
    sub-int v5, v3, v29

    goto :goto_8

    :pswitch_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    sub-int v2, v4, v16

    sub-int v6, v3, v16

    invoke-virtual {v8, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(II)V

    invoke-virtual {v7, v14, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(II)V

    move-object v2, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    move v9, v12

    goto/16 :goto_5

    :pswitch_5
    move/from16 v0, v30

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    move/from16 v0, v30

    if-gt v0, v2, :cond_d

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v9, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    add-int/lit8 v2, v11, 0x1

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    move-object/from16 v33, v9

    move v9, v6

    move-object/from16 v6, v33

    goto/16 :goto_5

    :cond_d
    sub-int v2, v3, v16

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_e

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v2, v11, 0x1

    move-object v6, v9

    move v9, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :pswitch_6
    move/from16 v0, v30

    move/from16 v1, v16

    if-lt v0, v1, :cond_10

    move/from16 v0, v30

    if-gt v0, v2, :cond_10

    sub-int v2, v3, v16

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_f

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v2, v11, 0x1

    move-object v6, v9

    move v9, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v9, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_11

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    add-int/lit8 v2, v11, 0x1

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    move-object/from16 v33, v9

    move v9, v6

    move-object/from16 v6, v33

    goto/16 :goto_5

    :pswitch_7
    move/from16 v0, v30

    move/from16 v1, v16

    if-lt v0, v1, :cond_15

    move/from16 v0, v30

    if-gt v0, v2, :cond_15

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_13

    sub-int v2, v4, v16

    sub-int v6, v3, v16

    invoke-virtual {v8, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(II)V

    invoke-virtual {v9, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_12

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    add-int/lit8 v2, v11, 0x1

    move-object v5, v8

    move-object v6, v9

    move v8, v2

    move v9, v12

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :cond_13
    sub-int v2, v3, v16

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_14

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v2, v11, 0x1

    move-object v6, v9

    move v9, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_17

    sub-int v2, v3, v16

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v6, :cond_16

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v7, v14, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(II)V

    move-object v5, v8

    move-object v6, v9

    move v8, v11

    move v9, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v9, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->f(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v2

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-eq v2, v5, :cond_18

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v5, v12, 0x1

    move-object v6, v9

    move v9, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :pswitch_8
    move/from16 v0, v16

    if-lt v6, v0, :cond_1a

    if-gt v6, v2, :cond_1a

    sub-int v2, v6, v16

    sub-int v5, v3, v16

    invoke-virtual {v8, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_19

    sub-int v2, v6, v16

    sub-int v5, v3, v16

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    invoke-virtual {v8, v2, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1e

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    move/from16 v0, v16

    if-gt v6, v0, :cond_1b

    move v2, v6

    :goto_9
    invoke-virtual {v7, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    move/from16 v0, v16

    if-gt v6, v0, :cond_1c

    :goto_a
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    invoke-virtual {v7, v6, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1e

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    sub-int v2, v6, v29

    goto :goto_9

    :cond_1c
    sub-int v6, v6, v29

    goto :goto_a

    :cond_1d
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v2, v11, 0x1

    move-object v6, v9

    move v9, v5

    move-object v5, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_5

    :cond_1f
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    add-int v7, v20, v18

    iput v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->i:I

    :cond_20
    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v7

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    if-eqz v6, :cond_21

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    array-length v6, v6

    if-ge v6, v7, :cond_22

    :cond_21
    new-array v6, v7, [I

    iput-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    :cond_22
    if-eqz v21, :cond_24

    const/4 v6, 0x0

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    const/4 v9, 0x0

    add-int/lit8 v10, v15, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    array-length v6, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_23

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    add-int/lit8 v8, v15, 0x1

    sub-int/2addr v7, v15

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    if-ne v6, v7, :cond_28

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/h/m;->c:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    if-eq v6, v7, :cond_28

    :goto_b
    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/h/i;->b:[I

    iget-object v7, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/h/m;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v3, "Unknown subdivide result in tessellation"

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    const/4 v6, 0x0

    :goto_c
    add-int/lit8 v8, v15, 0x1

    if-ge v6, v8, :cond_25

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    add-int v9, v6, v20

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_25
    sub-int v6, v17, v15

    add-int/lit8 v6, v6, -0x1

    add-int v8, v6, v20

    add-int/lit8 v6, v15, 0x1

    :goto_d
    if-ge v6, v7, :cond_23

    iget-object v9, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    add-int v10, v6, v8

    aput v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :pswitch_9
    move-object v6, v2

    :goto_e
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/i;->b:[I

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->a:Lcom/google/maps/api/android/lib6/gmm6/h/m;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/h/m;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_3

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v3, "Unknown subdivide result in tessellation"

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_a
    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    iget-object v7, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    iget v8, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->i:I

    invoke-static {v6, v13, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/v;[II)V

    move-object v6, v2

    goto :goto_e

    :pswitch_b
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move-object v6, v2

    goto :goto_e

    :pswitch_c
    iget-object v11, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    iget-object v10, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->c:Lcom/google/maps/api/android/lib6/gmm6/h/d;

    iget v9, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->d:I

    iget v8, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->e:I

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    iget-object v4, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->g:Ljava/util/List;

    iget-object v3, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->i:I

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move v4, v8

    move v3, v9

    goto/16 :goto_1

    :pswitch_d
    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    const/4 v8, 0x0

    invoke-static {v2, v13, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/v;[II)V

    :pswitch_e
    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;

    iget-object v11, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->b:Lcom/google/maps/api/android/lib6/gmm6/h/u;

    iget-object v10, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->c:Lcom/google/maps/api/android/lib6/gmm6/h/d;

    iget v9, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->d:I

    iget v8, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->e:I

    iget-object v7, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->g:Ljava/util/List;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->h:[I

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/h/l;->i:I

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move v4, v8

    move v3, v9

    goto/16 :goto_1

    :cond_26
    const/4 v2, 0x1

    move/from16 v19, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_1

    :cond_27
    move-object v2, v13

    goto/16 :goto_0

    :cond_28
    move-object/from16 v33, v2

    move-object v2, v5

    move-object/from16 v5, v33

    goto/16 :goto_b

    :cond_29
    move/from16 v15, v16

    move/from16 v17, v2

    move v6, v2

    move/from16 v18, v16

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/h/u;Lcom/google/maps/api/android/lib6/gmm6/h/v;[II)V
    .locals 14

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v12

    const/4 v0, 0x3

    if-ge v12, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->j(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->j(I)I

    move-result v2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    invoke-virtual {v13, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v0, 0x2

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_0

    invoke-virtual {p0, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->j(I)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f()I

    move-result v3

    :goto_1
    iget v0, v13, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a(III)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    move-object v0, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;III[II)V

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b()V

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f()I

    move-result v0

    move v2, v3

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :goto_2
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->l(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f()I

    move-result v3

    move v4, v2

    :goto_3
    iget v0, v13, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a(III)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    move-object v2, p1

    move v5, v1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;III[II)V

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b()V

    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v3

    const/4 v0, 0x1

    move v10, v0

    :goto_4
    iget v0, v13, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-ge v10, v0, :cond_7

    invoke-virtual {v13, v10}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a(III)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_6

    move-object v0, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;III[II)V

    :goto_5
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v3, v2

    goto :goto_4

    :cond_6
    move-object v4, p1

    move v5, v3

    move v6, v2

    move v7, v1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/v;III[II)V

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->a()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v3, v0, v2

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto/16 :goto_2
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/h/v;III[II)V
    .locals 3

    if-eqz p4, :cond_0

    aget v0, p4, p1

    aget v1, p4, p2

    aget v2, p4, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z

    :goto_0
    return-void

    :cond_0
    add-int v0, p1, p5

    add-int v1, p2, p5

    add-int v2, p3, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(III)Z

    goto :goto_0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Lcom/google/maps/api/android/lib6/gmm6/h/n;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->i(I)D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->a:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    move v0, v1

    :goto_2
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->i(I)D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    :goto_3
    if-eqz v1, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->b:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->d:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/n;->c:Lcom/google/maps/api/android/lib6/gmm6/h/n;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
