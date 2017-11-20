.class public final Lcom/google/android/gms/fitness/a/a/a;
.super Lcom/google/android/gms/fitness/a/a/c;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/a/a/a;->a:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/m/a;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/a/c;-><init>()V

    .line 39
    const-string v0, "data source manager"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/a/a;->b:Lcom/google/android/gms/fitness/m/a;

    .line 40
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 5

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 189
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 190
    return-object v0
.end method

.method private a(JJJLcom/google/android/gms/fitness/data/DataSource;ZZ)Ljava/util/List;
    .locals 13

    .prologue
    .line 140
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 141
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 143
    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    move-object v3, v2

    .line 144
    :goto_0
    if-eqz p8, :cond_4

    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->e()Ljava/util/ListIterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v10

    cmp-long v12, v4, v10

    if-gez v12, :cond_0

    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-static {v8, v4, v5, v10, v11}, Lcom/google/android/gms/fitness/a/a/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    goto :goto_1

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/a/a/a;->b:Lcom/google/android/gms/fitness/m/a;

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object/from16 v3, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJIZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    move-object v3, v2

    goto :goto_0

    .line 145
    :cond_3
    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    invoke-static {v8, v4, v5, v6, v7}, Lcom/google/android/gms/fitness/a/a/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 147
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "No input data points"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    move-wide/from16 v0, p5

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/fitness/a/a/a;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x1

    :goto_4
    const-string v4, "Unexpected data type: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v8

    new-instance v3, Lcom/google/android/gms/fitness/a/n;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/a/n;-><init>(JJI)V

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    move-object v2, v9

    goto :goto_2
.end method

.method private b(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;
    .locals 17

    .prologue
    .line 236
    if-eqz p8, :cond_1

    move-object/from16 v10, p8

    .line 241
    :goto_0
    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/fitness/a/a/a;->a(JJJLcom/google/android/gms/fitness/data/DataSource;ZZ)Ljava/util/List;

    move-result-object v4

    .line 249
    const/4 v2, 0x0

    .line 251
    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    const-string v2, "Requesting activity summary for activity segment buckets. Skipping redundant db read."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    const/4 v2, 0x1

    move v8, v2

    .line 258
    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/fitness/a/a/a;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v7

    .line 266
    if-eqz v8, :cond_4

    .line 267
    const-string v2, "Adding activity summary data point using segment bucket data."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 268
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    const-string v3, "Size mis-match. #Intervals: %d vs #Buckets: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_4

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/a/n;

    iget v6, v3, Lcom/google/android/gms/fitness/a/n;->c:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    const/4 v6, 0x0

    :goto_4
    iget v8, v3, Lcom/google/android/gms/fitness/a/n;->c:I

    iget-wide v12, v3, Lcom/google/android/gms/fitness/a/n;->a:J

    iget-wide v14, v3, Lcom/google/android/gms/fitness/a/n;->b:J

    sget-object v3, Lcom/google/android/gms/fitness/a/a/a;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v9

    invoke-virtual {v9, v12, v13, v14, v15}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v12, v14, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    long-to-int v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v8, 0x1

    aput v11, v12, v8

    const/4 v8, 0x2

    const/4 v11, 0x1

    aput v11, v12, v8

    invoke-virtual {v9, v12}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    sget-object v8, Lcom/google/android/gms/fitness/a/a/a;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v6, v8}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v9, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_0
    invoke-virtual {v3, v9}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    const-string v6, "Adding activity summary data point %s to segment bucket %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v6, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataSet;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/a/a/a;->b:Lcom/google/android/gms/fitness/m/a;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v10

    goto/16 :goto_0

    .line 268
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_3
    move-object v6, v10

    goto :goto_4

    .line 270
    :cond_4
    return-object v7

    :cond_5
    move v8, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;
    .locals 17

    .prologue
    .line 50
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 74
    :goto_0
    return-object v15

    .line 53
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    sget-object v4, Lcom/google/android/gms/fitness/i/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p8, :cond_5

    .line 55
    invoke-static {}, Lcom/google/android/gms/fitness/a/e;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/fitness/a/a/a;->a(JJJLcom/google/android/gms/fitness/data/DataSource;ZZ)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v15, v4

    .line 59
    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .line 61
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 62
    add-int/lit8 v4, v16, -0x1

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v6

    .line 63
    const-string v4, "Found cached data for %s up to %2$tF %2$tT"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSource;->a(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    .line 69
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/fitness/a/a/a;->b(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    const-string v4, "Activity Segment Bucket Cache: Returning %d/%d buckets"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/fitness/a/a/a;->a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/a/a/a;->a(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move/from16 v9, p9

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/fitness/a/a/a;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_1

    .line 66
    :cond_4
    const-string v4, "Found no cached data for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSource;->a(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide/from16 v6, p1

    goto :goto_3

    :cond_5
    move-object v15, v5

    goto/16 :goto_2
.end method

.method protected final a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 89
    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/fitness/a/a/a;->b(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
