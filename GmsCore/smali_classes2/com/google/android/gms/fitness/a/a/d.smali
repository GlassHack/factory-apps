.class public final Lcom/google/android/gms/fitness/a/a/d;
.super Lcom/google/android/gms/fitness/a/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/n/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/a/c;-><init>()V

    .line 28
    const-string v0, "data source manager"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/a/d;->b:Lcom/google/android/gms/fitness/m/a;

    .line 29
    const-string v0, "fitness store"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/ar;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/a/d;->a:Lcom/google/android/gms/fitness/n/ar;

    .line 30
    return-void
.end method

.method private a(JJJ)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/a/d;->a:Lcom/google/android/gms/fitness/n/ar;

    move-object v2, v1

    move-object v3, v1

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Lcom/google/android/gms/fitness/a/n;

    invoke-direct {v3, v0}, Lcom/google/android/gms/fitness/a/n;-><init>(Lcom/google/android/gms/fitness/data/Session;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v1, p5, p6}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Z)Ljava/util/List;
    .locals 11

    .prologue
    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, p2, v2, v3}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;I)Ljava/util/List;

    move-result-object v3

    .line 88
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v0, p8

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/gms/fitness/a/a/d;->a(JZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    move-object/from16 v0, p7

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_0
    return-object v2

    .line 93
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/fitness/a/a/d;->a(JLjava/util/List;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/a/n;

    .line 97
    iget-wide v8, v2, Lcom/google/android/gms/fitness/a/n;->b:J

    cmp-long v8, v8, v6

    if-gtz v8, :cond_2

    .line 98
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_2
    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_3
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v2, p0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final a(JJJLjava/util/List;Z)Ljava/util/List;
    .locals 17

    .prologue
    .line 36
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 65
    :goto_0
    return-object v3

    .line 40
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/fitness/a/a/d;->a(JJJ)Ljava/util/List;

    move-result-object v2

    .line 43
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v9, p8

    .line 45
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Z)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 52
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/n;

    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/a/n;

    .line 55
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v1, Lcom/google/android/gms/fitness/a/n;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    move-object/from16 v7, p0

    move-wide/from16 v13, p5

    move-object/from16 v15, p7

    move/from16 v16, p8

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_1
    const-string v0, "Session Bucket Cache: Returning %d/%d buckets"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 49
    :cond_2
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, v1

    goto :goto_1
.end method

.method protected final a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;
    .locals 6

    .prologue
    .line 73
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/a/a/d;->a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
