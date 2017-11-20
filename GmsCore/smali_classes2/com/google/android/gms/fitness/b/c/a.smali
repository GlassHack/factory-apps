.class abstract Lcom/google/android/gms/fitness/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/google/android/gms/fitness/b/b;

.field private final d:J


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/google/android/gms/fitness/b/b;J)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/a;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/a;->b:Z

    .line 32
    iput-object p3, p0, Lcom/google/android/gms/fitness/b/c/a;->c:Lcom/google/android/gms/fitness/b/b;

    .line 33
    iput-wide p4, p0, Lcom/google/android/gms/fitness/b/c/a;->d:J

    .line 34
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/a;->b:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/a;->c:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    .line 88
    return-object p1
.end method

.method private a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/o;JJ)Lcom/google/android/gms/fitness/b/o;
    .locals 19

    .prologue
    .line 114
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v16

    .line 115
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    .line 181
    :goto_0
    return-object v2

    .line 119
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/fitness/b/c/a;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)Lcom/google/android/gms/fitness/b/c/p;

    move-result-object v17

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    .line 126
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 127
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v3

    int-to-long v4, v3

    .line 130
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 132
    const/4 v3, 0x1

    move v13, v3

    move-wide v8, v4

    move-wide v10, v6

    move-object v3, v2

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 133
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/fitness/b/c;

    .line 134
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v2}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 135
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v2}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 136
    invoke-interface {v12}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v2

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v14

    .line 139
    cmp-long v2, v4, v10

    if-gtz v2, :cond_3

    .line 141
    int-to-long v4, v14

    sub-long/2addr v4, v8

    long-to-int v2, v4

    move-wide v4, v10

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v18

    .line 149
    :goto_2
    if-gez v3, :cond_1

    if-eqz v14, :cond_a

    .line 154
    :cond_1
    int-to-long v14, v14

    .line 156
    if-nez v2, :cond_4

    const-wide/16 v8, 0x0

    .line 158
    :goto_3
    invoke-interface {v12}, Lcom/google/android/gms/fitness/b/c;->b()J

    move-result-wide v10

    .line 159
    if-ltz v3, :cond_2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/fitness/b/c/a;->a(IJJJJ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 161
    :cond_2
    const-string v2, "One or more invalid step counts, delta=%s, start=%tT, end=%tT"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    move-wide v4, v14

    move-object v3, v12

    .line 132
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move-wide v8, v4

    move-wide v10, v6

    goto/16 :goto_1

    .line 144
    :cond_3
    const/4 v2, 0x0

    move v3, v14

    goto :goto_2

    .line 156
    :cond_4
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->b()J

    move-result-wide v8

    goto :goto_3

    .line 170
    :cond_5
    cmp-long v2, v6, p5

    if-gtz v2, :cond_9

    .line 172
    cmp-long v2, v6, p3

    if-lez v2, :cond_7

    .line 177
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/google/android/gms/fitness/b/c/p;->e:J

    cmp-long v2, v8, v4

    if-eqz v2, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/fitness/b/c/p;->a()V

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/google/android/gms/fitness/b/c/p;->d:J

    :cond_6
    :goto_5
    move-object/from16 v0, v17

    iget v2, v0, Lcom/google/android/gms/fitness/b/c/p;->c:I

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/google/android/gms/fitness/b/c/p;->c:I

    move-object/from16 v0, v17

    iput-wide v6, v0, Lcom/google/android/gms/fitness/b/c/p;->e:J

    :cond_7
    move-wide v4, v14

    move-object v3, v12

    goto :goto_4

    :cond_8
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/google/android/gms/fitness/b/c/p;->d:J

    sub-long v8, v6, v8

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/google/android/gms/fitness/b/c/p;->b:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/fitness/b/c/p;->a()V

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/google/android/gms/fitness/b/c/p;->d:J

    goto :goto_5

    .line 181
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/fitness/b/c/p;->b()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    move-wide v4, v8

    move-wide v6, v10

    move-object v3, v2

    goto :goto_4
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)Lcom/google/android/gms/fitness/b/c/p;
.end method

.method public a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 59
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "{source_stream_id}"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/e;

    .line 66
    const-string v3, "com.google.step_count.cumulative"

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method public a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 10

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/o;

    .line 42
    invoke-interface/range {p6 .. p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v1

    .line 44
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/o;JJ)Lcom/google/android/gms/fitness/b/o;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method protected a(IJJJJ)Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    const-string v2, "com.google.step_count.cumulative"

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/fitness/b/m;->a:Lcom/google/android/gms/fitness/b/l;

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/a;->b:Z

    iput-boolean v2, v1, Lcom/google/android/gms/fitness/b/s;->e:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/fitness/b/s;->f:Z

    const/16 v2, 0xe10

    iput v2, v1, Lcom/google/android/gms/fitness/b/s;->i:I

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0
.end method
