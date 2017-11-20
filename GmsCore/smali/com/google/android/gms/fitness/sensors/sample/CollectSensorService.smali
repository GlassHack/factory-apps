.class public Lcom/google/android/gms/fitness/sensors/sample/CollectSensorService;
.super Lcom/google/android/gms/common/app/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/app/a;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;II)Z
    .locals 19

    .prologue
    .line 63
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 64
    new-instance v5, Lcom/google/android/gms/fitness/sensors/sample/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v5, v2, v0, v3}, Lcom/google/android/gms/fitness/sensors/sample/a;-><init>(Lcom/google/android/gms/fitness/data/o;Ljava/util/concurrent/CountDownLatch;B)V

    .line 65
    new-instance v3, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v15

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    .line 75
    const/4 v4, 0x0

    .line 77
    :try_start_0
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/c/j/a/v;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    move/from16 v0, p2

    int-to-long v6, v0

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    const-string v4, "collected %d out of %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move/from16 v0, p3

    int-to-long v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 92
    :goto_1
    return v2

    .line 84
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "unable to subscribe: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v4

    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to enable sensor: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    throw v2

    .line 86
    :catch_1
    move-exception v2

    move-object/from16 v18, v2

    move v2, v4

    move-object/from16 v4, v18

    goto :goto_2
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 35
    :try_start_0
    const-string v0, "adapter_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 36
    const-string v2, "request_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 37
    const-string v3, "max_sample_secs"

    const/16 v4, 0x14

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 38
    const-string v4, "max_sample_points"

    const/16 v5, 0xa

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 40
    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/sensors/sample/b;->a(J)Lcom/google/android/gms/fitness/sensors/sample/b;

    move-result-object v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    invoke-virtual {v5, v2}, Lcom/google/android/gms/fitness/sensors/sample/b;->a(I)Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v5}, Lcom/google/android/gms/fitness/sensors/sample/b;->b()Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v1

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorService;->a(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;II)Z

    .line 46
    invoke-virtual {v5, v2}, Lcom/google/android/gms/fitness/sensors/sample/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorReceiver;->a(Landroid/content/Intent;)Z

    .line 57
    :goto_1
    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectSensorService did not find request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CollectSensorService error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_1

    .line 51
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CollectSensorService did not find adapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorReceiver;->a(Landroid/content/Intent;)Z

    throw v0
.end method
