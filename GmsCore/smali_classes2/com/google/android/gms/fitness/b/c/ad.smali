.class public Lcom/google/android/gms/fitness/b/c/ad;
.super Lcom/google/android/gms/fitness/b/c/b;
.source "SourceFile"


# instance fields
.field protected final d:J


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/fitness/b/c/ae;J)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/c/b;-><init>(Lcom/google/android/gms/fitness/b/c/f;)V

    .line 57
    iput-wide p2, p0, Lcom/google/android/gms/fitness/b/c/ad;->d:J

    .line 58
    return-void
.end method

.method private a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;JJLjava/util/List;Ljava/util/List;)V
    .locals 11

    .prologue
    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static/range {p2 .. p6}, Lcom/google/android/gms/fitness/b/c/ad;->a(Lcom/google/android/gms/fitness/b/b/w;JJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/b/u;

    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/c;

    .line 142
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v8}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 143
    if-nez v4, :cond_2

    .line 144
    new-instance v4, Lcom/google/android/gms/fitness/b/c/af;

    invoke-direct {v4, v2}, Lcom/google/android/gms/fitness/b/c/af;-><init>(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 145
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    iget-object v8, v4, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c/af;

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 154
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_1
    return-void

    .line 157
    :cond_4
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/android/gms/fitness/b/c/ad;->a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/util/List;JJLjava/util/SortedSet;)V
    .locals 20

    .prologue
    .line 63
    invoke-static/range {p2 .. p5}, Lcom/google/android/gms/fitness/b/c/ad;->a(JJ)Lcom/google/android/gms/fitness/b/b/w;

    move-result-object v5

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 70
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/o;

    .line 71
    const-wide/16 v6, 0x0

    .line 72
    const-wide/16 v8, 0x0

    .line 73
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    .line 76
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    .line 77
    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-nez v3, :cond_0

    .line 81
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v8, v12

    move-wide v6, v12

    .line 82
    goto :goto_1

    .line 85
    :cond_0
    sub-long v16, v12, v8

    .line 86
    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-gtz v3, :cond_1

    .line 88
    const-string v3, "Data point out of order (or duplicate): "

    invoke-static {v3, v2}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_1

    .line 90
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/fitness/b/c/ad;->d:J

    move-wide/from16 v18, v0

    cmp-long v3, v16, v18

    if-gez v3, :cond_2

    .line 93
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v8, v12

    .line 94
    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, p6

    .line 98
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/fitness/b/c/ad;->a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;JJLjava/util/List;Ljava/util/List;)V

    .line 104
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v8, v12

    move-wide v6, v12

    .line 107
    goto :goto_1

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v4, p6

    .line 110
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/fitness/b/c/ad;->a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;JJLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c/af;

    .line 116
    iget-object v3, v2, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/fitness/b/c;

    .line 121
    iget-object v3, v2, Lcom/google/android/gms/fitness/b/c/af;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/af;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5, v6, v7, v2, v3}, Lcom/google/android/gms/fitness/b/c/ad;->a(Lcom/google/android/gms/fitness/b/b/w;JJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/b/u;

    .line 123
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v6}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 124
    new-instance v7, Lcom/google/android/gms/fitness/b/c/g;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v3}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v3}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/fitness/b/c/g;-><init>(JJLcom/google/android/gms/fitness/b/c;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v5, v2}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    goto :goto_2

    .line 131
    :cond_7
    return-void
.end method

.method protected a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 164
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c/af;

    .line 165
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/c/af;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-interface {p2, v1}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 166
    iget-object v0, v0, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/c;

    .line 167
    new-instance v1, Lcom/google/android/gms/fitness/b/c/g;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/b/c/g;-><init>(JJLcom/google/android/gms/fitness/b/c;)V

    invoke-interface {p1, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method
