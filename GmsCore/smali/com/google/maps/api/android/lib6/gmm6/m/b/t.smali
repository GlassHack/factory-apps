.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/t;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field public c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

.field public final d:Lcom/google/g/a/d;

.field public e:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lcom/google/g/a/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->d:Lcom/google/g/a/d;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->e:Ljava/util/Locale;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V
    .locals 5

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_1
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/a/a/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/lang/String;Lcom/google/g/a/b/b/f;)V

    invoke-virtual {p2, v9}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v5, Lcom/google/g/a/b/b/f;

    sget-object v6, Lcom/google/l/a/a/a/a;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/a/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p2, v9, v1}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/a/a/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/lang/String;Lcom/google/g/a/b/b/f;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p2, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/g/a/b/b/f;J)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;Z)Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/d;

    move-object p1, v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    if-eqz v0, :cond_2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    monitor-exit v2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/a/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/d;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;->a:Lcom/google/g/a/b/b/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/a;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/a/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/d;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->b:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v3, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;->a:Lcom/google/g/a/b/b/f;

    iget-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/g/a/b/b/f;J)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/t;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method
