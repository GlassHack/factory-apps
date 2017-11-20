.class public final Lcom/google/maps/api/android/lib6/c/dv;
.super Ljava/lang/Object;


# direct methods
.method public static a(D)D
    .locals 2

    const-wide v0, 0x41584db040000000L    # 6371009.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(DD)D
    .locals 4

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;D)D
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x41584db040000000L    # 6371009.0

    mul-double/2addr v0, v2

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/c/c/fx;->b(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    neg-double v4, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v4, 0x0

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-wide v10, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v1, v2

    :goto_2
    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v4, v5, v6, v7}, Lcom/google/maps/api/android/lib6/c/dv;->a(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/aw;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/c/aw;

    move-result-object v6

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/aw;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/c/aw;

    move-result-object v7

    new-instance v1, Lcom/google/maps/api/android/lib6/c/aw;

    iget-wide v2, v6, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    iget-wide v4, v7, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget-wide v4, v6, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    iget-wide v10, v7, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    iget-wide v10, v6, Lcom/google/maps/api/android/lib6/c/aw;->c:D

    iget-wide v6, v7, Lcom/google/maps/api/android/lib6/c/aw;->c:D

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/c/aw;-><init>(DDD)V

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->c:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_4
    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->c:D

    iget-wide v4, v1, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    iget-wide v6, v1, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, v1, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    iget-wide v10, v1, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_5

    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    :goto_4
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto/16 :goto_2

    :cond_5
    iget-wide v2, v1, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    iget-wide v6, v1, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    goto :goto_4

    :cond_6
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    goto/16 :goto_0
.end method
