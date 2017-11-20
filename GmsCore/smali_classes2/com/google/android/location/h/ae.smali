.class public final Lcom/google/android/location/h/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/d/k;

.field public b:Z

.field private final c:Lcom/google/android/location/f/bc;

.field private final d:Lcom/google/android/location/f/bc;

.field private final e:Lcom/google/android/location/h/q;

.field private final f:Lcom/google/android/location/b/am;

.field private final g:Lcom/google/android/location/b/u;

.field private final h:Lcom/google/android/location/h/ag;

.field private final i:Lcom/google/android/location/h/ah;

.field private final j:Lcom/google/android/location/k/b;

.field private final k:Lcom/google/i/a/b/l;


# direct methods
.method private constructor <init>(Lcom/google/android/location/h/aa;Lcom/google/android/location/h/g;Lcom/google/android/location/b/u;Lcom/google/android/location/b/am;Lcom/google/android/location/h/q;Lcom/google/i/a/b/l;Lcom/google/android/location/h/ag;Lcom/google/android/location/h/ah;Lcom/google/android/location/k/b;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/google/android/location/d/k;->a()Lcom/google/android/location/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/h/ae;->a:Lcom/google/android/location/d/k;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/h/ae;->b:Z

    .line 168
    iput-object p1, p0, Lcom/google/android/location/h/ae;->c:Lcom/google/android/location/f/bc;

    .line 169
    iput-object p2, p0, Lcom/google/android/location/h/ae;->d:Lcom/google/android/location/f/bc;

    .line 170
    iput-object p3, p0, Lcom/google/android/location/h/ae;->g:Lcom/google/android/location/b/u;

    .line 171
    iput-object p5, p0, Lcom/google/android/location/h/ae;->e:Lcom/google/android/location/h/q;

    .line 172
    iput-object p4, p0, Lcom/google/android/location/h/ae;->f:Lcom/google/android/location/b/am;

    .line 173
    iput-object p6, p0, Lcom/google/android/location/h/ae;->k:Lcom/google/i/a/b/l;

    .line 174
    iput-object p7, p0, Lcom/google/android/location/h/ae;->h:Lcom/google/android/location/h/ag;

    .line 175
    iput-object p8, p0, Lcom/google/android/location/h/ae;->i:Lcom/google/android/location/h/ah;

    .line 176
    iput-object p9, p0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    .line 177
    return-void
.end method

.method private static a(Ljava/util/Map;)Lcom/google/android/location/f/ba;
    .locals 5

    .prologue
    .line 377
    const/4 v1, -0x1

    .line 378
    sget-object v0, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    .line 379
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    iget-object v0, v0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    .line 381
    invoke-virtual {v0}, Lcom/google/android/location/f/ba;->ordinal()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 382
    invoke-static {}, Lcom/google/android/location/f/ba;->a()Lcom/google/android/location/f/ba;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 390
    :goto_1
    return-object v0

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/f/ba;->ordinal()I

    move-result v1

    :goto_2
    move v2, v1

    move-object v1, v0

    .line 389
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 390
    goto :goto_1

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private static a(Lcom/google/android/location/f/be;Lcom/google/android/location/f/be;)Lcom/google/android/location/f/be;
    .locals 2

    .prologue
    .line 308
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    if-nez v0, :cond_2

    :cond_0
    move-object p0, p1

    .line 317
    :cond_1
    :goto_0
    return-object p0

    .line 311
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    iget v0, v0, Lcom/google/android/location/f/ak;->f:I

    iget-object v1, p1, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    iget v1, v1, Lcom/google/android/location/f/ak;->f:I

    if-le v0, v1, :cond_1

    move-object p0, p1

    .line 317
    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/h/w;Lcom/google/android/location/b/am;Lcom/google/android/location/b/u;Lcom/google/android/location/os/at;)Lcom/google/android/location/h/ae;
    .locals 10

    .prologue
    .line 104
    new-instance v1, Lcom/google/android/location/h/aa;

    invoke-direct {v1}, Lcom/google/android/location/h/aa;-><init>()V

    .line 109
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/d/a;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    invoke-interface {p3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {p3}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v2

    invoke-interface {p3}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v4

    invoke-interface {p3}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/i/a/b/n;->a(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/k/j;Lcom/google/android/location/k/f;[B)Lcom/google/i/a/b/n;

    move-result-object v0

    .line 123
    new-instance v6, Lcom/google/i/a/b/l;

    invoke-direct {v6, v0}, Lcom/google/i/a/b/l;-><init>(Lcom/google/i/a/b/n;)V

    .line 129
    :goto_0
    :try_start_0
    const-string v0, "nlp_metricmodel.bin"

    invoke-interface {p3, v0}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/h/p;->a(Ljava/io/InputStream;)Lcom/google/android/location/h/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/h/p;->a()Ljava/util/List;

    move-result-object v0

    .line 131
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Metric-model profile has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    :goto_1
    new-instance v2, Lcom/google/android/location/h/g;

    invoke-direct {v2, v0}, Lcom/google/android/location/h/g;-><init>(Ljava/util/List;)V

    .line 142
    new-instance v5, Lcom/google/android/location/h/q;

    invoke-direct {v5, p0}, Lcom/google/android/location/h/q;-><init>(Lcom/google/android/location/h/s;)V

    .line 143
    invoke-static {p3}, Lcom/google/android/location/h/ag;->a(Lcom/google/android/location/os/at;)Lcom/google/android/location/h/ag;

    move-result-object v7

    .line 144
    new-instance v8, Lcom/google/android/location/h/ah;

    invoke-interface {p3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/location/h/ah;-><init>(Lcom/google/android/location/k/b;)V

    .line 146
    new-instance v0, Lcom/google/android/location/h/ae;

    invoke-interface {p3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v9

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/location/h/ae;-><init>(Lcom/google/android/location/h/aa;Lcom/google/android/location/h/g;Lcom/google/android/location/b/u;Lcom/google/android/location/b/am;Lcom/google/android/location/h/q;Lcom/google/i/a/b/l;Lcom/google/android/location/h/ag;Lcom/google/android/location/h/ah;Lcom/google/android/location/k/b;)V

    return-object v0

    .line 125
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 135
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load metric model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1
.end method

.method private a(Ljava/util/Set;Lcom/google/android/location/f/ak;)Lcom/google/android/location/h/af;
    .locals 22

    .prologue
    .line 437
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 438
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 439
    const/4 v2, 0x0

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v3}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v16

    .line 442
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v11, v2

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Long;

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/ae;->f:Lcom/google/android/location/b/am;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v10, v0, v1}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;

    move-result-object v18

    .line 445
    if-eqz v18, :cond_3

    .line 446
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/google/android/location/f/ay;

    .line 447
    invoke-virtual {v4}, Lcom/google/android/location/f/ay;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    sget-object v3, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    if-eq v2, v3, :cond_2

    .line 448
    const/4 v12, 0x1

    .line 450
    if-eqz p2, :cond_f

    .line 451
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/location/f/ak;->f:I

    int-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v20, v2, v6

    .line 452
    iget v2, v4, Lcom/google/android/location/f/ay;->d:I

    int-to-double v2, v2

    iget v4, v4, Lcom/google/android/location/f/ay;->e:I

    int-to-double v4, v4

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v6, v6

    move-object/from16 v0, p2

    iget v8, v0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v8, v8

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/f/o;->a(DDDD)D

    move-result-wide v2

    .line 455
    cmpl-double v2, v2, v20

    if-lez v2, :cond_f

    .line 456
    const/4 v2, 0x0

    .line 468
    :goto_1
    if-eqz v2, :cond_1

    .line 469
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-interface {v13, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 471
    :cond_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-interface {v14, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/location/f/ay;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v4}, Lcom/google/android/location/f/ay;->d()V

    goto :goto_0

    .line 482
    :cond_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    .line 484
    goto :goto_0

    .line 493
    :cond_4
    if-nez p2, :cond_6

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/h/ae;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 494
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_5

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AP set of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no overlap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_5
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    .line 584
    :goto_2
    return-object v2

    .line 507
    :cond_6
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 508
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/h/ae;->a(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 510
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_7

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Diversity, rehabilitating ap list of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_7
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/h/ae;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 518
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 521
    :cond_8
    invoke-interface {v13, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 522
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 538
    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v2

    .line 544
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/ae;->f:Lcom/google/android/location/b/am;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v5, v0, v1}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;

    move-result-object v6

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/ae;->f:Lcom/google/android/location/b/am;

    const/4 v4, 0x0

    iget v6, v6, Lcom/google/android/location/b/a;->c:I

    invoke-static {}, Lcom/google/android/location/f/ay;->c()Lcom/google/android/location/f/ay;

    move-result-object v7

    move-wide/from16 v8, v16

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    goto :goto_4

    .line 524
    :cond_a
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 534
    invoke-interface {v13, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 535
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    goto :goto_3

    .line 558
    :cond_b
    if-lez v2, :cond_d

    .line 561
    const/4 v3, 0x5

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v2, v3, :cond_c

    .line 563
    const-string v3, "Good cache hits. Computing WiFi location locally"

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v3, v2, v11, v4}, Lcom/google/android/location/h/ae;->a(Ljava/lang/String;III)V

    .line 565
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v13, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 572
    :cond_c
    const-string v3, "Not enough positive cache hits compared to misses. Need server request."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v3, v2, v11, v4}, Lcom/google/android/location/h/ae;->a(Ljava/lang/String;III)V

    .line 574
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 576
    :cond_d
    if-lez v11, :cond_e

    .line 578
    const-string v3, "Too many cache  misses. Need server request."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v3, v2, v11, v4}, Lcom/google/android/location/h/ae;->a(Ljava/lang/String;III)V

    .line 579
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 582
    :cond_e
    const-string v3, "Too many no-location APs. Will not compute a location nor go to the server."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v3, v2, v11, v4}, Lcom/google/android/location/h/ae;->a(Ljava/lang/String;III)V

    .line 584
    new-instance v2, Lcom/google/android/location/h/af;

    sget-object v3, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v14}, Lcom/google/android/location/h/af;-><init>(Lcom/google/android/location/h/ae;Lcom/google/android/location/f/aa;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_f
    move v2, v12

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;III)V
    .locals 3

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, " hasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    add-int v1, p1, p2

    sub-int v1, p3, v1

    .line 669
    const-string v2, " noLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, " cacheMiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiLocator"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Collection;)Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 596
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v9

    .line 611
    :goto_0
    return v0

    .line 600
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/location/f/ak;

    .line 601
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/location/f/ak;

    .line 602
    if-eq v8, v6, :cond_2

    .line 603
    iget v0, v8, Lcom/google/android/location/f/ak;->d:I

    int-to-double v0, v0

    iget v2, v8, Lcom/google/android/location/f/ak;->e:I

    int-to-double v2, v2

    iget v4, v6, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v4

    iget v6, v6, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/f/o;->a(DDDD)D

    move-result-wide v0

    .line 605
    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v9

    .line 606
    goto :goto_0

    .line 611
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/Set;)Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 621
    .line 623
    const-wide/16 v0, 0x0

    .line 625
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    move v4, v5

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v8, 0xfcffff000000L

    and-long/2addr v0, v8

    .line 629
    if-eqz v4, :cond_1

    move-wide v2, v0

    move v4, v6

    .line 631
    goto :goto_0

    .line 633
    :cond_1
    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    move v0, v5

    .line 635
    :goto_1
    if-eqz v0, :cond_0

    .line 641
    :goto_2
    return v5

    :cond_2
    move v0, v6

    .line 633
    goto :goto_1

    :cond_3
    move v5, v6

    .line 641
    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;)Lcom/google/android/location/f/be;
    .locals 19

    .prologue
    .line 198
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/f/bh;->a()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v6

    iget-wide v8, v6, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v6, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v6, v6, Lcom/google/android/location/f/bb;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v6, v4, 0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    add-int/lit8 v4, v6, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 201
    :cond_3
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/google/android/location/h/ae;->a(Ljava/util/Set;Lcom/google/android/location/f/ak;)Lcom/google/android/location/h/af;

    move-result-object v2

    .line 203
    const/16 v16, 0x0

    .line 204
    const/high16 v17, -0x80000000

    .line 205
    iget-object v9, v2, Lcom/google/android/location/h/af;->b:Ljava/util/Map;

    .line 206
    iget-object v11, v2, Lcom/google/android/location/h/af;->a:Lcom/google/android/location/f/aa;

    .line 209
    iget-object v2, v2, Lcom/google/android/location/h/af;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 210
    invoke-interface {v10, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 213
    :cond_4
    const/4 v3, 0x0

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/ae;->h:Lcom/google/android/location/h/ag;

    invoke-virtual {v2, v10}, Lcom/google/android/location/h/ag;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/h/ae;->i:Lcom/google/android/location/h/ah;

    if-nez v4, :cond_7

    const/4 v2, 0x0

    .line 222
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/h/ae;->k:Lcom/google/i/a/b/l;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/h/ae;->b:Z

    if-eqz v4, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/h/ae;->k:Lcom/google/i/a/b/l;

    invoke-virtual {v4, v2}, Lcom/google/i/a/b/l;->a(Ljava/util/Map;)Lcom/google/android/location/f/be;

    move-result-object v4

    .line 225
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GPWLE result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_5
    if-eqz v4, :cond_a

    .line 230
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x4

    iget-object v4, v4, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v6}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    const/4 v9, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 299
    :cond_6
    :goto_5
    return-object v2

    .line 217
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v5, Lcom/google/android/location/h/ah;->a:Lcom/google/android/location/k/b;

    invoke-interface {v6}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    iget-wide v12, v5, Lcom/google/android/location/h/ah;->b:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x1f40

    cmp-long v8, v12, v14

    if-gez v8, :cond_8

    iget-object v8, v5, Lcom/google/android/location/h/ah;->c:Ljava/util/Map;

    if-eqz v8, :cond_8

    iget-object v8, v5, Lcom/google/android/location/h/ah;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8
    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-boolean v8, Lcom/google/android/location/j/a;->b:Z

    if-eqz v8, :cond_9

    const-string v8, "WifiSignalAugmenter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Orig AP count: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Augmented AP count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput-wide v6, v5, Lcom/google/android/location/h/ah;->b:J

    iput-object v4, v5, Lcom/google/android/location/h/ah;->c:Ljava/util/Map;

    goto/16 :goto_4

    .line 237
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/h/ae;->e:Lcom/google/android/location/h/q;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/location/h/q;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;

    move-result-object v12

    .line 239
    if-eqz v12, :cond_1a

    .line 240
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1a

    .line 241
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_b

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Indoor localizer returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_b
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x3

    invoke-virtual {v12}, Lcom/google/android/location/f/bd;->a()Lcom/google/android/location/f/ak;

    move-result-object v4

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v6}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 245
    invoke-virtual {v12}, Lcom/google/android/location/f/bd;->a()Lcom/google/android/location/f/ak;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/f/m;

    .line 247
    if-eqz v3, :cond_19

    .line 248
    iget-object v0, v3, Lcom/google/android/location/f/m;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 249
    if-eqz v16, :cond_c

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/h/ae;->g:Lcom/google/android/location/b/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v5}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v6, v7}, Lcom/google/android/location/b/u;->a(Ljava/lang/String;J)I

    .line 252
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_c

    const-string v4, "WifiLocator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incremented executions for level "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_c
    iget v4, v3, Lcom/google/android/location/f/m;->f:I

    const/16 v5, 0x7530

    if-lt v4, v5, :cond_6

    .line 265
    iget v0, v3, Lcom/google/android/location/f/m;->c:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    .line 270
    :goto_6
    sget-object v2, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-eq v11, v2, :cond_d

    .line 273
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v5}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object v5, v11

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 275
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/f/be;Lcom/google/android/location/f/be;)Lcom/google/android/location/f/be;

    move-result-object v2

    goto/16 :goto_5

    .line 278
    :cond_d
    invoke-static {v9}, Lcom/google/android/location/h/ae;->a(Ljava/util/Map;)Lcom/google/android/location/f/ba;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    if-ne v2, v3, :cond_11

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_e

    const-string v2, "WifiLocator"

    const-string v3, "No APs found with known confidence values. Not computing a location"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v2, 0x0

    move-object v3, v2

    .line 280
    :goto_7
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/google/android/location/f/bd;->a()Lcom/google/android/location/f/ak;

    move-result-object v2

    if-nez v2, :cond_15

    .line 281
    :cond_f
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_10

    const-string v2, "WifiLocator"

    const-string v3, "Locator did not find a location"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_10
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v6}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 284
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/f/be;Lcom/google/android/location/f/be;)Lcom/google/android/location/f/be;

    move-result-object v2

    goto/16 :goto_5

    .line 278
    :cond_11
    sget-object v3, Lcom/google/android/location/f/ba;->b:Lcom/google/android/location/f/ba;

    if-ne v2, v3, :cond_13

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_12

    const-string v2, "WifiLocator"

    const-string v3, "Computing location using circle intersection."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/ae;->c:Lcom/google/android/location/f/bc;

    invoke-interface {v2, v9, v10}, Lcom/google/android/location/f/bc;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;

    move-result-object v2

    :goto_8
    move-object v3, v2

    goto :goto_7

    :cond_13
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_14

    const-string v2, "WifiLocator"

    const-string v3, "Computing location using MaxLre."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/ae;->d:Lcom/google/android/location/f/bc;

    invoke-interface {v2, v9, v10}, Lcom/google/android/location/f/bc;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;

    move-result-object v2

    goto :goto_8

    .line 285
    :cond_15
    invoke-virtual {v3}, Lcom/google/android/location/f/bd;->a()Lcom/google/android/location/f/ak;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/h/d;->c(Lcom/google/android/location/f/ak;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 286
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_16

    const-string v2, "WifiLocator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Locator found a location that did not have sane values: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_16
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v6}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 289
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/f/be;Lcom/google/android/location/f/be;)Lcom/google/android/location/f/be;

    move-result-object v2

    goto/16 :goto_5

    .line 292
    :cond_17
    invoke-virtual {v3}, Lcom/google/android/location/f/bd;->a()Lcom/google/android/location/f/ak;

    move-result-object v2

    .line 293
    new-instance v10, Lcom/google/android/location/f/m;

    iget v11, v2, Lcom/google/android/location/f/ak;->d:I

    iget v12, v2, Lcom/google/android/location/f/ak;->e:I

    iget v13, v2, Lcom/google/android/location/f/ak;->f:I

    invoke-virtual {v3}, Lcom/google/android/location/f/bd;->b()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/location/f/m;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 296
    new-instance v2, Lcom/google/android/location/f/be;

    iget v3, v3, Lcom/google/android/location/f/bd;->b:I

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/h/ae;->j:Lcom/google/android/location/k/b;

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object v4, v10

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    .line 298
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_18

    const-string v3, "WifiLocator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished computing WiFi location: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_18
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/f/be;Lcom/google/android/location/f/be;)Lcom/google/android/location/f/be;

    move-result-object v2

    goto/16 :goto_5

    :cond_19
    move-object/from16 v18, v2

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v18, v3

    goto/16 :goto_6
.end method
