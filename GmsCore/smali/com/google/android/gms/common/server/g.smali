.class public Lcom/google/android/gms/common/server/g;
.super Lcom/google/android/gms/common/server/a;
.source "SourceFile"


# instance fields
.field protected final d:Lcom/android/d/s;

.field protected final e:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 74
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/google/android/gms/common/server/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/h;-><init>(Lcom/google/android/gms/common/server/g;)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/g;->e:Ljava/lang/ThreadLocal;

    .line 77
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/app/GmsApplication;->c()Lcom/android/d/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/g;->d:Lcom/android/d/s;

    .line 78
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)Lcom/google/android/gms/common/server/response/FastJsonResponse;
    .locals 12

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/g;->b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v9

    .line 356
    invoke-static {}, Lcom/android/d/a/m;->a()Lcom/android/d/a/m;

    move-result-object v6

    .line 357
    iget-object v0, p0, Lcom/google/android/gms/common/server/g;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v8}, Lcom/google/android/gms/common/server/g;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 358
    invoke-static {p2, v11}, Lcom/google/android/gms/common/server/g;->a(ILjava/util/Map;)I

    move-result v1

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/common/server/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/common/server/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/server/c;

    const/4 v5, 0x0

    iget-boolean v10, p0, Lcom/google/android/gms/common/server/g;->b:Z

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/server/c;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V

    invoke-direct {p0, v0, v8}, Lcom/google/android/gms/common/server/g;->b(Lcom/android/d/p;Ljava/lang/String;)V

    .line 363
    :try_start_0
    invoke-virtual {v6}, Lcom/android/d/a/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 365
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 366
    new-instance v0, Lcom/google/android/gms/common/server/s;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/s;-><init>()V

    throw v0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/common/server/g;->a(Ljava/util/concurrent/ExecutionException;Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/android/d/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error executing network request for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/d/aa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/g;->b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-static {}, Lcom/android/d/a/m;->a()Lcom/android/d/a/m;

    move-result-object v4

    .line 493
    iget-object v0, p0, Lcom/google/android/gms/common/server/g;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v6}, Lcom/google/android/gms/common/server/g;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 494
    const/4 v0, 0x1

    invoke-static {v0, v7}, Lcom/google/android/gms/common/server/g;->a(ILjava/util/Map;)I

    move-result v1

    .line 495
    new-instance v0, Lcom/google/android/gms/common/server/n;

    iget-object v2, p0, Lcom/google/android/gms/common/server/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/common/server/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/n;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v6}, Lcom/google/android/gms/common/server/g;->b(Lcom/android/d/p;Ljava/lang/String;)V

    .line 498
    :try_start_0
    invoke-virtual {v4}, Lcom/android/d/a/m;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 505
    return-void

    .line 500
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 501
    new-instance v0, Lcom/google/android/gms/common/server/s;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/s;-><init>()V

    throw v0

    .line 502
    :catch_1
    move-exception v0

    .line 503
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/common/server/g;->a(Ljava/util/concurrent/ExecutionException;Ljava/lang/String;)V

    .line 504
    new-instance v1, Lcom/android/d/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error executing network request for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/d/aa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 324
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)Lcom/google/android/gms/common/server/response/FastJsonResponse;
    :try_end_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    invoke-static {v0}, Lcom/google/android/gms/common/server/g;->a(Lcom/android/d/aa;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    .line 329
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_0
    throw v0
.end method

.method private b(Lcom/android/d/p;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/g;->a(Lcom/android/d/p;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/gms/common/server/g;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 649
    const-string v0, "Non-batchable request in batch"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 650
    instance-of v0, p1, Lcom/google/android/gms/common/server/f;

    const-string v1, "Non-batchable request in batch"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/google/android/gms/common/server/g;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/i;

    .line 654
    check-cast p1, Lcom/google/android/gms/common/server/f;

    iget-object v0, v0, Lcom/google/android/gms/common/server/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 648
    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/g;->d:Lcom/android/d/s;

    invoke-virtual {v0, p1}, Lcom/android/d/s;->a(Lcom/android/d/p;)Lcom/android/d/p;

    goto :goto_1
.end method


# virtual methods
.method protected final a()Lcom/android/d/s;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/app/GmsApplication;->c()Lcom/android/d/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;
    .locals 1

    .prologue
    .line 303
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/common/server/g;->b(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 478
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-static {v0}, Lcom/google/android/gms/common/server/g;->a(Lcom/android/d/aa;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_0
    throw v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/android/gms/common/server/a;->b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
