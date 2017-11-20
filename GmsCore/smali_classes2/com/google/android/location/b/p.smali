.class public final Lcom/google/android/location/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/b/m;

.field public final b:Lcom/google/android/location/b/f;

.field public final c:Lcom/google/android/location/b/f;

.field private final d:Lcom/google/android/location/f/r;

.field private final e:Lcom/google/android/location/f/u;


# direct methods
.method private constructor <init>(Lcom/google/android/location/b/m;Lcom/google/android/location/b/f;Lcom/google/android/location/b/f;Lcom/google/android/location/f/u;Lcom/google/android/location/f/r;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    .line 205
    iput-object p2, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    .line 206
    iput-object p3, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    .line 207
    iput-object p4, p0, Lcom/google/android/location/b/p;->e:Lcom/google/android/location/f/u;

    .line 208
    iput-object p5, p0, Lcom/google/android/location/b/p;->d:Lcom/google/android/location/f/r;

    .line 209
    return-void
.end method

.method public static a(Lcom/google/android/location/k/i;Ljava/io/File;[BLcom/google/android/location/k/e;)Lcom/google/android/location/b/p;
    .locals 27

    .prologue
    .line 143
    new-instance v3, Ljava/io/File;

    const-string v4, "macs"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    new-instance v25, Lcom/google/android/location/b/m;

    sget-object v4, Lcom/google/android/location/b/aq;->a:Lcom/google/android/location/b/au;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/google/android/location/b/m;-><init>(Lcom/google/android/location/b/au;Ljava/io/File;[BLcom/google/android/location/k/e;)V

    .line 149
    new-instance v26, Lcom/google/android/location/f/u;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/location/f/u;-><init>()V

    .line 150
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 151
    new-instance v9, Ljava/io/File;

    const-string v3, "selectors"

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 153
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 154
    new-instance v3, Lcom/google/android/location/b/f;

    const/4 v4, 0x2

    const/16 v5, 0x14

    new-instance v7, Lcom/google/android/location/b/t;

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Lcom/google/android/location/b/t;-><init>(Lcom/google/android/location/f/u;)V

    sget-object v8, Lcom/google/android/location/b/aq;->b:Lcom/google/android/location/b/au;

    const-string v10, "lru.cache"

    move-object/from16 v6, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v13}, Lcom/google/android/location/b/f;-><init>(IILcom/google/android/location/k/i;Lcom/google/android/location/b/i;Lcom/google/android/location/b/au;Ljava/io/File;Ljava/lang/String;[BLcom/google/android/location/k/e;Ljava/util/Random;)V

    .line 162
    new-instance v4, Lcom/google/android/location/f/r;

    invoke-direct {v4}, Lcom/google/android/location/f/r;-><init>()V

    .line 163
    new-instance v20, Ljava/io/File;

    const-string v5, "models"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 165
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 166
    new-instance v14, Lcom/google/android/location/b/f;

    const/4 v15, 0x4

    const/16 v16, 0xa

    new-instance v18, Lcom/google/android/location/b/r;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/google/android/location/b/r;-><init>(Lcom/google/android/location/f/r;)V

    sget-object v19, Lcom/google/android/location/b/aq;->b:Lcom/google/android/location/b/au;

    const-string v21, "lru.cache"

    move-object/from16 v17, p0

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, v13

    invoke-direct/range {v14 .. v24}, Lcom/google/android/location/b/f;-><init>(IILcom/google/android/location/k/i;Lcom/google/android/location/b/i;Lcom/google/android/location/b/au;Ljava/io/File;Ljava/lang/String;[BLcom/google/android/location/k/e;Ljava/util/Random;)V

    .line 174
    new-instance v11, Lcom/google/android/location/b/p;

    move-object/from16 v12, v25

    move-object v13, v3

    move-object/from16 v15, v26

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/google/android/location/b/p;-><init>(Lcom/google/android/location/b/m;Lcom/google/android/location/b/f;Lcom/google/android/location/b/f;Lcom/google/android/location/f/u;Lcom/google/android/location/f/r;)V

    return-object v11
.end method

.method private static a(Lcom/google/g/a/b/b/a;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 377
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 395
    :cond_1
    :goto_0
    return v0

    .line 384
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 386
    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 387
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 395
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcom/google/android/location/f/s;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/s;

    .line 257
    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/b/s;->a:Lcom/google/android/location/f/s;

    goto :goto_0
.end method

.method public final a(JJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/location/b/m;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    invoke-virtual {v0}, Lcom/google/android/location/b/m;->a()V

    .line 216
    iget-object v0, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/b/f;->a()V

    .line 217
    iget-object v0, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/b/f;->a()V

    .line 218
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ModelState"

    const-string v1, "Done loading ModelState from disk"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 468
    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    .line 469
    const-wide/32 v2, 0xa4cb800

    sub-long v2, p1, v2

    .line 471
    iget-object v4, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    invoke-virtual {v4, v2, v3, v2, v3}, Lcom/google/android/location/b/m;->a(JJ)V

    .line 472
    iget-object v2, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/google/android/location/b/f;->a(JJ)V

    .line 473
    iget-object v2, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/google/android/location/b/f;->a(JJ)V

    .line 474
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;J)Z
    .locals 10

    .prologue
    .line 296
    invoke-static {p1}, Lcom/google/android/location/b/p;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 301
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    .line 303
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 304
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 305
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    .line 308
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v6

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    :goto_3
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v8

    if-ge v1, v8, :cond_1

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v1}, Lcom/google/g/a/b/b/a;->b(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0, p2, p3}, Lcom/google/android/location/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_4

    .line 303
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 311
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;JLcom/google/android/location/f/ad;)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/google/android/location/b/p;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-virtual {p1, v7}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    move v2, v0

    .line 336
    :goto_1
    if-ge v2, v3, :cond_a

    .line 337
    invoke-virtual {p1, v7, v2}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_4

    .line 341
    iget-object v2, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    sget-object v3, Lcom/google/android/location/f/ae;->a:Lcom/google/android/location/f/ae;

    if-ne v2, v3, :cond_2

    .line 342
    iget-object v0, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    iget-object v2, p4, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v8, p2, p3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    :goto_2
    move v0, v1

    .line 349
    goto :goto_0

    .line 343
    :cond_2
    iget-object v2, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    sget-object v3, Lcom/google/android/location/f/ae;->b:Lcom/google/android/location/f/ae;

    if-ne v2, v3, :cond_3

    .line 344
    iget-object v0, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    iget-object v2, p4, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v8, p2, p3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_2

    .line 346
    :cond_3
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "ModelState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown request type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    .line 355
    iget-object v5, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    sget-object v6, Lcom/google/android/location/f/ae;->a:Lcom/google/android/location/f/ae;

    if-ne v5, v6, :cond_7

    .line 356
    invoke-virtual {v4, v7}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/google/android/location/b/s;

    iget-object v6, p0, Lcom/google/android/location/b/p;->e:Lcom/google/android/location/f/u;

    invoke-static {v4}, Lcom/google/android/location/f/u;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/s;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/google/android/location/b/s;-><init>(Lcom/google/android/location/f/s;Lcom/google/g/a/b/b/a;)V

    iget-object v4, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    iget-object v6, p4, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v5, p2, p3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 336
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    :cond_6
    sget-boolean v4, Lcom/google/android/location/j/a;->d:Z

    if-eqz v4, :cond_5

    const-string v4, "ModelState"

    const-string v5, "Malformed reply does not have model cluster."

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 357
    :cond_7
    iget-object v5, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    sget-object v6, Lcom/google/android/location/f/ae;->b:Lcom/google/android/location/f/ae;

    if-ne v5, v6, :cond_9

    .line 358
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lcom/google/android/location/b/q;

    iget-object v6, p0, Lcom/google/android/location/b/p;->d:Lcom/google/android/location/f/r;

    invoke-static {v4}, Lcom/google/android/location/f/r;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/p;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/google/android/location/b/q;-><init>(Lcom/google/android/location/f/p;Lcom/google/g/a/b/b/a;)V

    iget-object v4, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    iget-object v6, p4, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v5, p2, p3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_8
    sget-boolean v4, Lcom/google/android/location/j/a;->d:Z

    if-eqz v4, :cond_5

    const-string v4, "ModelState"

    const-string v5, "Malformed reply does not have model."

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :cond_9
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "ModelState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown request type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 365
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 225
    iget-object v3, p0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    iget-object v0, v3, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v3, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    iget-object v0, v3, Lcom/google/android/location/b/m;->e:Lcom/google/android/location/k/e;

    iget-object v1, v3, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v3, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v3, Lcom/google/android/location/b/m;->b:Lcom/google/android/location/b/au;

    iget-object v4, v3, Lcom/google/android/location/b/m;->a:Lcom/google/android/location/b/ap;

    invoke-interface {v2, v4, v0}, Lcom/google/android/location/b/au;->a(Lcom/google/android/location/b/ap;Ljava/io/OutputStream;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v2, v3, Lcom/google/android/location/b/m;->d:Lcom/google/android/location/f/a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/b/f;->b()V

    .line 227
    iget-object v0, p0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/b/f;->b()V

    .line 228
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ModelState"

    const-string v1, "Wrote ModelState to disk"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    return-void

    .line 225
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "FileTemporalCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find LRU cache file to write to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "FileTemporalCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException while writing LRU cache file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v3, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/b/m;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
