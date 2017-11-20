.class public final Lcom/google/maps/api/android/lib6/gmm6/m/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;


# static fields
.field public static a:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;


# instance fields
.field volatile b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

.field final c:Ljava/util/concurrent/CountDownLatch;

.field private final d:Lcom/google/maps/api/android/lib6/b/h;

.field private final e:Lcom/google/g/a/d;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/n/f;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->d:Lcom/google/maps/api/android/lib6/b/h;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->e:Lcom/google/g/a/d;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->g:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->d:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->d:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->d:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    :cond_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->e:Lcom/google/g/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->g:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/d/b;)Lcom/google/maps/api/android/lib6/gmm6/m/d/a;
    .locals 8

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->c:Z

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->e:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->g:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v4, Lcom/google/n/c/a/a/ac;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v4}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    iget-wide v6, v1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->f:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_1
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d/c;Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/m/d/a;B)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/g/b;

    const-string v5, "addRequest"

    invoke-direct {v0, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/g/b;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/g;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/g/a;->a:Lcom/google/maps/api/android/lib6/gmm6/g/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->d:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    iput-wide v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->g:J

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->g:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->g:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 1

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->i()V

    :cond_0
    return-void
.end method
