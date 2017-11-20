.class public final Lcom/google/android/gms/fitness/m/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# instance fields
.field private final b:Lcom/google/android/gms/fitness/service/d;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gms/fitness/m/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/m/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/service/d;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/fitness/m/f;->b:Lcom/google/android/gms/fitness/service/d;

    .line 61
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;)J
    .locals 26

    .prologue
    .line 108
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 110
    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/fitness/b/t;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/fitness/b/r;

    move-object v11, v0

    .line 113
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v11, Lcom/google/android/gms/fitness/b/r;->f:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    .line 114
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v11, Lcom/google/android/gms/fitness/b/r;->e:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v11, v1}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/r;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v19

    .line 120
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    .line 121
    iget-boolean v3, v11, Lcom/google/android/gms/fitness/b/r;->c:Z

    if-eqz v3, :cond_4

    if-eqz v20, :cond_4

    const/4 v3, 0x1

    move v8, v3

    .line 122
    :goto_1
    if-eqz v8, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 128
    :goto_2
    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/d/d;

    .line 129
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-wide/from16 v6, p4

    .line 138
    :goto_3
    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    if-eqz v8, :cond_2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 141
    :cond_2
    const-wide/16 v8, 0x0

    sub-long v22, v4, v14

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 146
    add-long v22, v6, v16

    .line 149
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/google/android/gms/fitness/n/b;->b:Ljava/util/Map;

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/google/android/gms/fitness/n/b;->c:Ljava/util/Map;

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/google/android/gms/fitness/n/b;->d:Ljava/util/Map;

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/d/d;

    if-eqz v3, :cond_3

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/google/android/gms/fitness/n/b;->a:Ljava/util/Map;

    iget-wide v0, v3, Lcom/google/android/gms/fitness/d/d;->a:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    move-wide/from16 v0, v22

    invoke-static {v2, v8, v9, v0, v1}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/t;

    move-object/from16 v2, p0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;)J

    move-result-wide v4

    .line 169
    :goto_7
    if-eqz v20, :cond_e

    .line 170
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 173
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 179
    :catchall_0
    move-exception v2

    move-object v3, v2

    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v3

    .line 121
    :cond_4
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_1

    :cond_5
    move-wide/from16 v4, p2

    .line 122
    goto/16 :goto_2

    .line 129
    :cond_6
    if-nez v3, :cond_7

    const-wide/16 v6, 0x0

    goto/16 :goto_3

    :cond_7
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/d/d;->a()J

    move-result-wide v6

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto/16 :goto_3

    .line 149
    :cond_8
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->b:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->c:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->d:Ljava/util/Map;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 158
    :cond_b
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    goto :goto_7

    .line 179
    :cond_c
    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    const-wide/16 v2, 0x0

    .line 187
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v4, v2

    .line 189
    goto :goto_9

    .line 190
    :cond_d
    return-wide v4

    :cond_e
    move-wide v2, v4

    goto/16 :goto_8
.end method

.method private a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 18

    .prologue
    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/n/b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    .line 300
    const/4 v6, 0x0

    .line 301
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v14, v6

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/a/i;

    .line 302
    iget-object v6, v6, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/DataSet;->f()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 303
    const/4 v6, 0x1

    :goto_1
    move v14, v6

    .line 305
    goto :goto_0

    .line 308
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 311
    new-instance v12, Lcom/google/android/gms/fitness/b/a/k;

    invoke-direct {v12}, Lcom/google/android/gms/fitness/b/a/k;-><init>()V

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/fitness/b/t;->a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;

    move-result-object v6

    .line 313
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v12, v8, v16

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 314
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/fitness/c/a;->a(Lcom/google/android/gms/fitness/b/t;JJJ)V

    .line 316
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/o;

    move-object v7, v6

    .line 317
    check-cast v7, Lcom/google/android/gms/fitness/b/a/i;

    iget-object v7, v7, Lcom/google/android/gms/fitness/b/a/i;->a:Lcom/google/android/gms/fitness/data/DataSet;

    .line 318
    invoke-virtual {v7, v14}, Lcom/google/android/gms/fitness/data/DataSet;->a(Z)V

    .line 320
    if-lez p6, :cond_1

    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/o;->b()I

    move-result v6

    move/from16 v0, p6

    if-le v6, v0, :cond_1

    .line 321
    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v6

    .line 322
    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v7

    .line 323
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int v9, v9, p6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v6, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    .line 325
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    :cond_1
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_2
    return-object v15

    :cond_3
    move v6, v14

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/fitness/b/t;Lcom/google/android/gms/fitness/n/b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 15

    .prologue
    .line 344
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 345
    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/fitness/b/t;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/r;

    .line 348
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/r;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    .line 349
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/t;

    .line 358
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/n/b;->a(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/n/b;->b(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/n/b;->c(Lcom/google/android/gms/fitness/data/DataSource;)I

    move-result v8

    move-object v2, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 366
    new-instance v4, Lcom/google/android/gms/fitness/b/a/i;

    invoke-direct {v4, v2}, Lcom/google/android/gms/fitness/b/a/i;-><init>(Lcom/google/android/gms/fitness/data/DataSet;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 378
    :catchall_0
    move-exception v2

    move-object v3, v2

    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v3

    .line 369
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 370
    new-instance v3, Lcom/google/android/gms/fitness/b/a/i;

    invoke-direct {v3, v2}, Lcom/google/android/gms/fitness/b/a/i;-><init>(Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 371
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/b/a/i;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 372
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :cond_3
    sget-object v2, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 380
    return-object v12
.end method

.method private a(Lcom/google/android/gms/fitness/b/r;Ljava/util/Map;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 238
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 239
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/r;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/k;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    .line 242
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 243
    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/d/d;

    iget-boolean v1, v1, Lcom/google/android/gms/fitness/d/d;->b:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/r;Lcom/google/android/gms/fitness/data/DataSource;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 252
    iget-object v1, p0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/t;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/r;Lcom/google/android/gms/fitness/data/DataSource;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_3
    return-object v3
.end method

.method private static a(Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 211
    const-string v0, "Fitness"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/m/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 218
    :goto_1
    if-ge v0, v2, :cond_1

    .line 219
    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_1
    const-string v0, "%1$s%2$s %3$tF %3$tT - %4$tF %4$tT"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/fitness/b/r;Lcom/google/android/gms/fitness/data/DataSource;Z)Z
    .locals 2

    .prologue
    .line 274
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/b/r;->d:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/r;->b:Lcom/google/android/gms/fitness/b/l;

    new-instance v1, Lcom/google/android/gms/fitness/b/a/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/fitness/b/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/l;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/t;JJILjava/util/Map;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 74
    new-instance v9, Lcom/google/android/gms/fitness/n/b;

    invoke-direct {v9}, Lcom/google/android/gms/fitness/n/b;-><init>()V

    .line 75
    const-string v2, "Fitness"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/fitness/m/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/t;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    move-wide/from16 v0, p4

    invoke-static {v2, p2, p3, v0, v1}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    :cond_1
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 76
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;)J

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/fitness/n/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :goto_1
    return-object v2

    .line 75
    :cond_2
    const-string v2, "Transformation %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/fitness/m/f;->b:Lcom/google/android/gms/fitness/service/d;

    move/from16 v0, p8

    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/fitness/service/d;->a(Lcom/google/android/gms/fitness/n/b;Z)Ljava/util/Map;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v11, p7

    .line 88
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/fitness/m/f;->a(Lcom/google/android/gms/fitness/b/t;JJILcom/google/android/gms/fitness/n/b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
