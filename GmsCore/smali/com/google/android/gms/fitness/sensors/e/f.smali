.class public final Lcom/google/android/gms/fitness/sensors/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/fitness/sensors/a;

.field private final c:Lcom/google/android/gms/fitness/sensors/e/d;

.field private final d:Ljava/util/Map;

.field private final e:Lcom/google/android/gms/fitness/sensors/e/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/sensors/e/d;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/e/f;->c:Lcom/google/android/gms/fitness/sensors/e/d;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/e/f;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/fitness/sensors/e/d;->a:Lcom/google/android/gms/fitness/sensors/e/d;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/sensors/e/d;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/e/a;)Lcom/google/c/j/a/v;
    .locals 18

    .prologue
    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v2

    .line 219
    const-string v3, "Registering for %s with %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    move-object/from16 v17, v0

    new-instance v3, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    iget-wide v6, v2, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    iget-wide v8, v2, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    iget-wide v10, v2, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    iget v12, v2, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    iget-object v13, v2, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    iget-object v14, v2, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    iget-wide v15, v2, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 24

    .prologue
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v20

    .line 96
    const/4 v5, 0x0

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/sensors/e/a;

    .line 98
    if-nez v4, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    monitor-enter v6

    .line 100
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/sensors/e/a;

    .line 101
    if-nez v4, :cond_0

    .line 102
    const-string v4, "Initial registration for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    new-instance v4, Lcom/google/android/gms/fitness/sensors/e/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/f;->c:Lcom/google/android/gms/fitness/sensors/e/d;

    invoke-direct {v4, v5}, Lcom/google/android/gms/fitness/sensors/e/a;-><init>(Lcom/google/android/gms/fitness/sensors/e/d;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v5, 0x1

    .line 107
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v4

    move/from16 v19, v5

    .line 113
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v21

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 115
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v4

    const-string v5, "Adding %s to composite listeners %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v8}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v5}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    new-instance v5, Lcom/google/android/gms/fitness/sensors/e/e;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v15

    const/16 v17, 0x0

    invoke-direct/range {v5 .. v17}, Lcom/google/android/gms/fitness/sensors/e/e;-><init>(JJJILjava/util/List;Ljava/util/List;JB)V

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    new-instance v5, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v5}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/fitness/sensors/e/h;->a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, v5, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, v5, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/sensors/e/g;

    .line 124
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/sensors/e/g;->a(Lcom/google/android/gms/fitness/data/DataSource;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/sensors/e/g;)V

    .line 126
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/e/a;->a(Lcom/google/android/gms/fitness/sensors/e/e;)Z

    move-result v4

    .line 133
    if-nez v19, :cond_1

    if-nez v4, :cond_1

    .line 134
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v4

    .line 140
    :goto_1
    return-object v4

    .line 107
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 126
    :catchall_1
    move-exception v4

    monitor-exit v22

    throw v4

    .line 137
    :cond_1
    if-eqz v4, :cond_2

    if-nez v19, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-interface {v4, v5}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 140
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/e/f;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/e/a;)Lcom/google/c/j/a/v;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/sensors/a;->a()V

    .line 70
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 237
    const-string v0, "Listener Registrations for "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/a;

    .line 242
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v3

    .line 245
    iget-wide v4, v3, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    .line 246
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-string v1, "Inf"

    .line 251
    :goto_1
    const-string v4, "@%ds/%ds/%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v11

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 256
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v0}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 257
    const-string v3, "\n    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 246
    :cond_0
    const-string v1, "%ds"

    new-array v6, v11, [Ljava/lang/Object;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v10

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_0

    .line 261
    :cond_2
    const-string v0, "Delegate Sensor Adapters for "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/sensors/a;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->e:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/data/o;)Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    :cond_0
    const-string v0, ":%s Adapter: Couldn\'t find registration for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/e/f;->a:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    monitor-exit v1

    move v0, v3

    .line 162
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    .line 159
    const-string v0, "Removing %s from %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v1, v4, v2

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    monitor-enter v6

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/a;

    if-nez v0, :cond_3

    const-string v0, "No active registrations found for data source %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 155
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 160
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v7

    const-string v4, "Removing %s from composite listeners %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v10}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v4}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    if-nez v4, :cond_5

    const-string v1, "Could not remove %s from %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    const/4 v7, 0x1

    aput-object v0, v4, v7

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v6

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/sensors/e/a;->a(Lcom/google/android/gms/fitness/sensors/e/e;)Z

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/a;->b()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_3
    if-eqz v4, :cond_7

    if-nez v8, :cond_7

    const-string v0, "No need to update delay (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v6

    goto/16 :goto_1

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    const-string v4, "Last listener removed.  Unregistering from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v7}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/e/f;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    iget-object v6, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-interface {v4, v6}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/a;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/sensors/e/f;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/e/a;)Lcom/google/c/j/a/v;

    goto/16 :goto_1

    :cond_8
    :try_start_3
    const-string v4, "Will update delay from %s to %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v4, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_9
    move v0, v2

    .line 162
    goto/16 :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/f;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
