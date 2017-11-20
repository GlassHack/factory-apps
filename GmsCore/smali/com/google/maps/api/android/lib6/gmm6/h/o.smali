.class public final Lcom/google/maps/api/android/lib6/gmm6/h/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/q;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    aput v1, v5, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v1, v7

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v7

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    aput v1, v5, v3

    mul-int/lit8 v0, v1, 0x2

    new-array v3, v0, [D

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v0, v2, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Z[DI)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    aget v6, v5, v1

    invoke-static {v0, v4, v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Z[DI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/g;

    invoke-static {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a([D[I)Lcom/google/maps/api/android/lib6/gmm6/h/r;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->d:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    if-ne p1, v0, :cond_4

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->b(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Lcom/google/maps/api/android/lib6/gmm6/h/n;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Verification failed, the polygon violates "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_0
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->a(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/p;->a:[I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/k;

    const-string v2, "Could not tessellate polygon, area not equal"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/p;->a:[I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_4
    :pswitch_1
    throw v0

    :pswitch_2
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/h;->b(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Lcom/google/maps/api/android/lib6/gmm6/h/n;

    goto :goto_4

    :cond_5
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->d()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->b(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->d()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(II)I

    move-result v3

    add-int/2addr v3, p2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(II)I

    move-result v4

    add-int/2addr v4, p2

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(II)I

    move-result v5

    add-int/2addr v5, p2

    invoke-interface {p1, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/h/v;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 6

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->e()I

    move-result v2

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v0

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a(I)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b(I)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    invoke-static {v1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-interface {p1, v1, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Z[DI)V
    .locals 8

    const/4 v2, 0x0

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    :goto_2
    if-ge v2, v1, :cond_3

    mul-int v5, v0, v2

    add-int/2addr v5, v3

    invoke-virtual {p0, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int v5, p3, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, p2, v5

    add-int v5, p3, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
