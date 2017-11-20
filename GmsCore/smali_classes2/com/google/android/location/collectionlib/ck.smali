.class public final Lcom/google/android/location/collectionlib/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/az;


# instance fields
.field private final a:Lcom/google/android/location/p/a/c;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Z

.field private e:Lcom/google/android/location/collectionlib/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V
    .locals 10

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ck;->d:Z

    .line 60
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/location/collectionlib/d;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ai;)V

    .line 63
    invoke-static/range {p8 .. p8}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ck;->a:Lcom/google/android/location/p/a/c;

    .line 64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ck;->c:Ljava/util/concurrent/CountDownLatch;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ck;->b:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/google/android/location/collectionlib/cl;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ck;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/ck;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v9, p0, Lcom/google/android/location/collectionlib/ck;->a:Lcom/google/android/location/p/a/c;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/location/collectionlib/cl;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Lcom/google/g/a/b/b/a;Ljava/lang/Integer;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    .line 68
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/ck;->d:Z

    if-nez v1, :cond_2

    :goto_0
    const-string v1, "Start should be called only once!"

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/ck;->d:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cl;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Waiting for the ScannerThread to start."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Thread interrupted during waiting for ScannerThread to start."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/cl;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->a(Lcom/google/android/location/collectionlib/cl;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ck;->e:Lcom/google/android/location/collectionlib/cl;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cl;->a()V

    .line 122
    :cond_0
    return-void
.end method
