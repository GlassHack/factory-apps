.class public final Lcom/google/maps/api/android/lib6/gmm6/m/n;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;


# static fields
.field private static a:Lcom/google/maps/api/android/lib6/gmm6/m/n;


# instance fields
.field private final b:Lcom/google/g/a/d;

.field private final c:Lcom/google/maps/api/android/lib6/b/h;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

.field private final e:Ljava/io/File;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private final h:Ljava/util/Map;

.field private i:Z


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/g/a/d;)V
    .locals 2

    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->b:Lcom/google/g/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->b:Lcom/google/g/a/d;

    invoke-direct {v0, p3, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;-><init>(Ljava/util/Locale;Lcom/google/g/a/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->e:Ljava/io/File;

    invoke-static {}, Lcom/google/c/c/gc;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/b/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/g/a/d;)Lcom/google/maps/api/android/lib6/gmm6/m/n;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/n;-><init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/g/a/d;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->i:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/a/c;)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->i()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->i()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;B)V

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v4

    :try_start_0
    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->l()Lcom/google/g/a/b/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->i()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/p;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/p;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/p;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/b;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    invoke-virtual {v4, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/a/a/d;Z)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    instance-of v5, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v3, v2, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/m/a/b;->a(Lcom/google/maps/api/android/lib6/a/a/d;ILcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->b:Lcom/google/g/a/d;

    iget-wide v6, v4, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->e:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->e:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a(Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    :cond_4
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->k()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->i:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->i:Z

    :cond_5
    return-void

    :cond_6
    invoke-interface {v3, v2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/a/b;->a(Lcom/google/maps/api/android/lib6/a/a/d;ILcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/m/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->i()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    return-void
.end method

.method public static c()Lcom/google/maps/api/android/lib6/gmm6/m/n;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    return-object v0
.end method

.method private h()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/a/a/d;Z)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    instance-of v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/p;

    invoke-direct {v3, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/p;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/a/a/d;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/a/a/d;Z)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/u;

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final e()V
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->h()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->d()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/o;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->g:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/t;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->e:Ljava/io/File;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->d:Lcom/google/g/a/d;

    const-string v4, "bd"

    sget-object v5, Lcom/google/l/a/a/a/a;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;-><init>(Lcom/google/g/a/d;Ljava/lang/String;Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->e:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/util/Locale;)Z

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/n;->f:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set thread priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
