.class public final Lcom/google/android/gms/fitness/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Lcom/google/android/gms/fitness/n/av;

.field private static final c:Ljava/util/Set;


# instance fields
.field private final d:Lcom/google/android/gms/fitness/m/a;

.field private final e:Lcom/google/android/gms/fitness/n/ar;

.field private final f:Lcom/google/android/gms/fitness/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/fitness/a/p;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/a/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/a/o;->a:Ljava/util/Set;

    .line 48
    new-instance v0, Lcom/google/android/gms/fitness/n/av;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/n/av;-><init>(Ljava/util/Set;J)V

    sput-object v0, Lcom/google/android/gms/fitness/a/o;->b:Lcom/google/android/gms/fitness/n/av;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->o:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/fitness/a/o;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/a/i;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/fitness/a/o;->d:Lcom/google/android/gms/fitness/m/a;

    .line 64
    iput-object p2, p0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    .line 65
    iput-object p3, p0, Lcom/google/android/gms/fitness/a/o;->f:Lcom/google/android/gms/fitness/a/i;

    .line 66
    return-void
.end method

.method private a(Ljava/util/List;JILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataSource;)I
    .locals 26

    .prologue
    .line 200
    invoke-static/range {p4 .. p6}, Lcom/google/android/gms/fitness/a/o;->b(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v19

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/fitness/n/ar;->b(Ljava/util/Collection;)J

    move-result-wide v4

    .line 203
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 204
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/android/gms/fitness/i/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 205
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 207
    sub-long v4, p2, v4

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 208
    rem-long v6, v4, v6

    sub-long/2addr v4, v6

    .line 210
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v6, v4, v5}, Lcom/google/android/gms/fitness/n/ar;->c(J)V

    :cond_0
    move-wide v6, v4

    .line 215
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/android/gms/fitness/i/a;->z:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v20

    .line 216
    add-long v4, v6, v20

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 228
    if-nez p4, :cond_1

    const-wide/16 v10, 0x0

    .line 229
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_2

    .line 230
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/android/gms/fitness/i/a;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 231
    add-long v8, v12, v4

    move-wide/from16 v16, v12

    .line 249
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/a/o;->f:Lcom/google/android/gms/fitness/a/i;

    const/4 v14, 0x1

    move-object/from16 v5, p1

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v14}, Lcom/google/android/gms/fitness/a/i;->a(Ljava/util/List;JJJILcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v18

    .line 258
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v9, v18

    .line 261
    :goto_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/DataSource;

    .line 263
    invoke-static {v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v8

    invoke-interface {v11, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 228
    :cond_1
    move/from16 v0, p4

    int-to-long v4, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    goto :goto_0

    .line 237
    :cond_2
    if-lez p4, :cond_15

    .line 238
    rem-long v4, v6, v10

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 239
    rem-long v4, v6, v10

    sub-long v4, v10, v4

    add-long/2addr v6, v4

    .line 241
    :cond_3
    rem-long v4, v12, v10

    sub-long v8, v12, v4

    move-wide/from16 v16, v8

    .line 242
    goto :goto_1

    .line 258
    :cond_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->f()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const-wide v8, 0x7fffffffffffffffL

    :cond_5
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v12

    cmp-long v11, v12, v22

    if-gtz v11, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v12

    cmp-long v11, v12, v8

    if-ltz v11, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, -0x1

    invoke-interface/range {v8 .. v15}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v8, v4

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v14

    const-wide/16 v24, 0x0

    cmp-long v5, v14, v24

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v14

    cmp-long v5, v14, v22

    if-lez v5, :cond_14

    :cond_8
    const-string v5, "Found an ongoing session: %s while aggregating session buckets in [%d, %d]"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v11, v14

    const/4 v14, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v5, v11}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_6
    move-wide v8, v4

    goto :goto_5

    :cond_9
    move-object v9, v5

    goto/16 :goto_2

    .line 267
    :cond_a
    const/4 v4, 0x0

    .line 268
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v4

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    .line 270
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v5

    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/fitness/data/DataSource;

    .line 271
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/fitness/data/DataSet;

    .line 272
    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v5

    .line 273
    if-eqz v5, :cond_b

    .line 275
    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 276
    invoke-static {v5, v8}, Lcom/google/android/gms/fitness/a/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 277
    add-int/lit8 v10, v10, 0x1

    .line 278
    goto :goto_8

    :cond_c
    move v5, v10

    .line 281
    goto :goto_7

    .line 284
    :cond_d
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/DataSet;

    .line 285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    sget-object v11, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    const/4 v12, 0x0

    invoke-interface {v10, v4, v11, v12}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V

    goto :goto_9

    .line 291
    :cond_e
    if-nez v5, :cond_13

    sub-long v10, p2, v20

    cmp-long v4, v6, v10

    if-gez v4, :cond_13

    .line 292
    const-string v4, "No un-aggregated data found, inserting zero step delta"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    sget-object v4, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 294
    move/from16 v0, p6

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v4, v4, v0, v1, v2}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;IILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    .line 300
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide/from16 v10, v16

    :cond_f
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    .line 301
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 302
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v18

    cmp-long v13, v18, v14

    if-lez v13, :cond_f

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v14

    cmp-long v13, v14, v10

    if-gez v13, :cond_f

    .line 304
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    goto :goto_a

    .line 308
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    invoke-static {v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v10, v11}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-virtual {v8, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-interface {v4, v8, v10}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/Application;)Ljava/lang/Long;

    .line 314
    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 318
    :goto_b
    const/4 v5, 0x4

    move/from16 v0, p6

    if-ne v0, v5, :cond_12

    if-eqz p7, :cond_12

    .line 319
    invoke-static {}, Lcom/google/android/gms/fitness/a/e;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v8

    .line 320
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v5, v4

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    .line 321
    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->d()I

    move-result v4

    aput v4, v10, v11

    invoke-virtual {v9, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 327
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 328
    goto :goto_c

    .line 329
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/a/o;->e:Lcom/google/android/gms/fitness/n/ar;

    sget-object v9, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V

    move v4, v5

    .line 334
    :cond_12
    const-string v5, "Inserted %d aggregated data points for %s, %3$tF %3$tT - %4$tF %4$tT"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move/from16 v0, p6

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/a/e;->a(IILjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v5, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    return v4

    :cond_13
    move v4, v5

    goto/16 :goto_b

    :cond_14
    move-wide v4, v8

    goto/16 :goto_6

    :cond_15
    move-wide v8, v12

    move-wide/from16 v16, v12

    goto/16 :goto_1
.end method

.method private static a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 6

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 399
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 400
    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Value;->a(Lcom/google/android/gms/fitness/data/Value;)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 403
    return-object v1
.end method

.method public static a(ILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/google/android/gms/fitness/a/j;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/g;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/a/g;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 423
    invoke-static {p3, v0, p2, p0, p1}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;IILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/a/o;->b(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static b(ILjava/util/concurrent/TimeUnit;I)Ljava/util/Map;
    .locals 4

    .prologue
    .line 411
    new-instance v1, Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/fitness/data/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 412
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 413
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 415
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    :cond_0
    return-object v1
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gms/fitness/a/o;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/fitness/n/av;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gms/fitness/a/o;->b:Lcom/google/android/gms/fitness/n/av;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gms/fitness/a/o;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/n/au;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/gms/fitness/a/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/a/q;-><init>(Lcom/google/android/gms/fitness/a/o;)V

    return-object v0
.end method

.method public final a(J)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 154
    const-string v0, "Pre-aggregating Fitness data up to %1$tT %1$tF"

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/android/gms/fitness/data/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/a/o;->d:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "No default data source found for %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/o;->d:Lcom/google/android/gms/fitness/m/a;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v7

    .line 161
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    move-wide v2, p1

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/a/o;->a(Ljava/util/List;JILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataSource;)I

    move-result v0

    add-int/lit8 v10, v0, 0x0

    .line 166
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/a/o;->a(Ljava/util/List;JILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataSource;)I

    move-result v0

    add-int/2addr v10, v0

    .line 174
    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/a/o;->a(Ljava/util/List;JILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataSource;)I

    move-result v0

    add-int/2addr v10, v0

    .line 176
    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/a/o;->a(Ljava/util/List;JILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataSource;)I

    move-result v0

    add-int/2addr v0, v10

    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/c/a;->a(IJ)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v0

    const-string v1, "Database issue pre-aggregating.  Will try again later."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
