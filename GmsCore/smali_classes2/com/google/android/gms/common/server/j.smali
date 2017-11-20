.class public Lcom/google/android/gms/common/server/j;
.super Lcom/google/android/gms/common/server/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 37
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/ClientContext;IILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/j;->b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v10

    .line 119
    invoke-static {}, Lcom/android/d/a/m;->a()Lcom/android/d/a/m;

    move-result-object v7

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/common/server/j;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, v9}, Lcom/google/android/gms/common/server/j;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    .line 121
    move/from16 v0, p3

    invoke-static {v0, v12}, Lcom/google/android/gms/common/server/j;->a(ILjava/util/Map;)I

    move-result v3

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->c:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/server/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    new-instance v1, Lcom/google/android/gms/common/server/q;

    const/4 v2, 0x0

    iget-boolean v11, p0, Lcom/google/android/gms/common/server/j;->b:Z

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v7

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/common/server/q;-><init>(IILjava/lang/String;[BLjava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V

    invoke-virtual {p0, v1, v9}, Lcom/google/android/gms/common/server/j;->a(Lcom/android/d/p;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/j;->a()Lcom/android/d/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/d/s;->a(Lcom/android/d/p;)Lcom/android/d/p;

    .line 126
    :try_start_0
    invoke-virtual {v7}, Lcom/android/d/a/m;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v1

    new-instance v1, Lcom/android/d/aa;

    const-string v2, "Thread interrupted"

    invoke-direct {v1, v2}, Lcom/android/d/aa;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :catch_1
    move-exception v1

    .line 130
    invoke-virtual {p0, v1, v9}, Lcom/google/android/gms/common/server/j;->a(Ljava/util/concurrent/ExecutionException;Ljava/lang/String;)V

    .line 131
    new-instance v2, Lcom/android/d/aa;

    const-string v3, "Error executing network request"

    invoke-direct {v2, v3, v1}, Lcom/android/d/aa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 87
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;IILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/common/server/j;->a(Lcom/android/d/aa;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;IILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    throw v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
