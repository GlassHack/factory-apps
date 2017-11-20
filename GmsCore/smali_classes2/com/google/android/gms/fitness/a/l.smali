.class public final Lcom/google/android/gms/fitness/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/a/m;)Lcom/google/android/gms/fitness/a/m;
    .locals 12

    .prologue
    const v3, 0x7fffffff

    const/4 v4, -0x1

    .line 76
    iget-object v5, p1, Lcom/google/android/gms/fitness/a/m;->c:Ljava/util/List;

    .line 78
    iget v0, p1, Lcom/google/android/gms/fitness/a/m;->a:I

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 79
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/n;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    iget-wide v10, v0, Lcom/google/android/gms/fitness/a/n;->b:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    move v0, v4

    .line 82
    :goto_1
    if-eq v0, v4, :cond_3

    .line 84
    if-nez v0, :cond_0

    .line 87
    iget-object v0, p1, Lcom/google/android/gms/fitness/a/m;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/fitness/data/DataSet;->b(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 88
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 78
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_1
    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :cond_3
    if-eq v2, v3, :cond_4

    .line 94
    iput v2, p1, Lcom/google/android/gms/fitness/a/m;->a:I

    .line 96
    :cond_4
    return-object p1
.end method

.method public static a(JJJ)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 218
    sub-long v2, p2, p0

    .line 219
    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    cmp-long v4, p2, p0

    if-ltz v4, :cond_0

    cmp-long v4, p4, v6

    if-gtz v4, :cond_2

    .line 220
    :cond_0
    const-string v2, "Invalid values specified: start time: %d, end time: %d, interval duration: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 237
    :cond_1
    return-object v0

    .line 226
    :cond_2
    rem-long v4, v2, p4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 227
    :goto_0
    div-long/2addr v2, p4

    long-to-int v2, v2

    add-int v8, v2, v0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v1

    .line 230
    :goto_1
    if-ge v7, v8, :cond_1

    .line 231
    int-to-long v2, v7

    mul-long/2addr v2, p4

    add-long/2addr v2, p0

    .line 232
    add-long v4, v2, p4

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 234
    new-instance v1, Lcom/google/android/gms/fitness/a/n;

    const/4 v6, 0x4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/a/n;-><init>(JJI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/a/m;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/a/m;-><init>(B)V

    .line 46
    iget-object v2, v0, Lcom/google/android/gms/fitness/a/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/fitness/a/m;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 50
    sget-object v3, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/a/l;->b(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/a/m;)Lcom/google/android/gms/fitness/a/m;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 51
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/a/l;->a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/a/m;)Lcom/google/android/gms/fitness/a/m;

    move-result-object v0

    goto :goto_3

    .line 52
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/fitness/a/m;->b:Ljava/util/List;

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/a/m;)Lcom/google/android/gms/fitness/a/m;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v8

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v10

    .line 114
    iget v0, p1, Lcom/google/android/gms/fitness/a/m;->a:I

    move v7, v0

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/fitness/a/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 117
    iget-object v0, p1, Lcom/google/android/gms/fitness/a/m;->c:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/n;

    .line 118
    iget-wide v2, v0, Lcom/google/android/gms/fitness/a/n;->b:J

    cmp-long v1, v8, v2

    if-gez v1, :cond_2

    .line 119
    iget-wide v2, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    cmp-long v1, v10, v2

    if-gtz v1, :cond_1

    .line 124
    add-int/lit8 v0, v7, -0x1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/gms/fitness/a/m;->a:I

    .line 138
    :cond_0
    return-object p1

    .line 129
    :cond_1
    iget-wide v2, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 130
    iget-wide v0, v0, Lcom/google/android/gms/fitness/a/n;->b:J

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 132
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, v12}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v2

    aput v2, v0, v12

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 135
    iget-object v0, p1, Lcom/google/android/gms/fitness/a/m;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 136
    iput v7, p1, Lcom/google/android/gms/fitness/a/m;->a:I

    .line 114
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method
