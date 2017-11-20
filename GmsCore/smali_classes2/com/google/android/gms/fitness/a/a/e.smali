.class public final Lcom/google/android/gms/fitness/a/a/e;
.super Lcom/google/android/gms/fitness/a/a/c;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/a/a/e;->a:J

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/a/a/e;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/m/a;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/a/c;-><init>()V

    .line 29
    const-string v0, "data source manager"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/a/e;->b:Lcom/google/android/gms/fitness/m/a;

    .line 30
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;J)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 160
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Unsupported rollup timeunit :s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    div-long v4, p2, v4

    long-to-int v3, v4

    .line 165
    if-ne v3, v2, :cond_2

    .line 176
    :goto_1
    return-object p0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int v4, v0, v3

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :goto_2
    if-ge v1, v4, :cond_3

    .line 172
    mul-int v5, v1, v3

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v6, v3

    invoke-interface {p0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/gms/fitness/a/j;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/Bucket;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v0

    .line 176
    goto :goto_1
.end method


# virtual methods
.method public final a(JJJLjava/util/List;Z)Ljava/util/List;
    .locals 17

    .prologue
    .line 36
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 65
    :goto_0
    return-object v14

    .line 39
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    sget-object v4, Lcom/google/android/gms/fitness/i/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 41
    sget-wide v4, Lcom/google/android/gms/fitness/a/a/e;->a:J

    rem-long v4, p5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object v10, v4

    :goto_1
    if-nez v10, :cond_4

    const-string v4, "Interval duration is not supported by caching: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    move-object v14, v4

    .line 45
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 47
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 48
    add-int/lit8 v4, v15, -0x1

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide p1

    .line 49
    const-string v4, "Found cached data for %s up to %2$tF %2$tT"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSource;->a(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    :goto_4
    cmp-long v4, p1, p3

    if-gez v4, :cond_1

    .line 56
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/fitness/a/l;->a(JJJ)Ljava/util/List;

    move-result-object v5

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 60
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_1
    const-string v4, "Time Bucket Cache: Returning %d/%d buckets"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 41
    :cond_2
    sget-wide v4, Lcom/google/android/gms/fitness/a/a/e;->c:J

    rem-long v4, p5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v10, v4

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    move-object v10, v4

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/a/a/e;->a(JZ)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    :cond_6
    const-wide/16 v4, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    rem-long v4, p1, v8

    sub-long v12, p1, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_7

    const-string v6, "No data ever cached yet."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v6, v4

    :goto_5
    cmp-long v4, v6, v12

    if-gtz v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    :cond_7
    cmp-long v6, p3, v4

    if-gez v6, :cond_8

    rem-long v4, p3, v8

    sub-long v4, p3, v4

    move-wide v6, v4

    goto :goto_5

    :cond_8
    rem-long v6, v4, v8

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_9

    add-long/2addr v4, v8

    sub-long/2addr v4, v6

    :cond_9
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_5

    :cond_a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/fitness/a/l;->a(JJJ)Ljava/util/List;

    move-result-object v6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object v5, v11

    move/from16 v9, p8

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v0, p5

    invoke-static {v12, v10, v0, v1}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_2

    .line 52
    :cond_b
    const-string v4, "Found no cached data for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fitness/data/DataSource;->a(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    :cond_c
    move-object v14, v5

    goto/16 :goto_3
.end method

.method protected final a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;
    .locals 6

    .prologue
    .line 73
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/a/a/e;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
