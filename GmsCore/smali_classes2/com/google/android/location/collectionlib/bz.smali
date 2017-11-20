.class abstract Lcom/google/android/location/collectionlib/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field protected final c:Lcom/google/android/location/p/a/c;

.field final d:Lcom/google/android/location/collectionlib/ak;

.field protected final e:Lcom/google/android/location/collectionlib/ao;

.field protected volatile f:Lcom/google/android/location/collectionlib/g;

.field private final g:Ljava/lang/Thread;

.field private final h:Lcom/google/android/location/collectionlib/cy;

.field private volatile i:Lcom/google/android/location/collectionlib/ca;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/google/android/location/collectionlib/bz;->a:Z

    .line 38
    iput-boolean v3, p0, Lcom/google/android/location/collectionlib/bz;->b:Z

    .line 60
    const-string v0, "No Handler specified!"

    invoke-static {p2, v0}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 63
    new-instance v0, Lcom/google/android/location/collectionlib/cy;

    const-string v4, "SignalCollector.Scanner"

    sget-object v5, Lcom/google/android/location/collectionlib/cy;->a:[S

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bz;->h:Lcom/google/android/location/collectionlib/cy;

    .line 66
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->h:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0, p5}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 67
    iput-object p2, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    .line 68
    invoke-static {p4}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bz;->c:Lcom/google/android/location/p/a/c;

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bz;->g:Ljava/lang/Thread;

    .line 70
    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/ak;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bz;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1

    :goto_0
    const-string v0, "Scanner should be called in handler\'s thread."

    invoke-static {v2, v0}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 75
    :cond_0
    iput-object p3, p0, Lcom/google/android/location/collectionlib/bz;->e:Lcom/google/android/location/collectionlib/ao;

    .line 76
    return-void

    :cond_1
    move v2, v3

    .line 72
    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final declared-synchronized a(Lcom/google/android/location/collectionlib/ca;)V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/location/collectionlib/bz;->a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/bz;->f()V

    .line 88
    iget-boolean v2, p0, Lcom/google/android/location/collectionlib/bz;->a:Z

    if-nez v2, :cond_2

    :goto_0
    const-string v1, "Start should be called only once!"

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->h:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 92
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bz;->f:Lcom/google/android/location/collectionlib/g;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->f:Lcom/google/android/location/collectionlib/g;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/g;->a()V

    .line 97
    :cond_0
    iput-object p2, p0, Lcom/google/android/location/collectionlib/bz;->i:Lcom/google/android/location/collectionlib/ca;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/bz;->a()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bz;->a:Z

    .line 100
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "%s started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()V
.end method

.method protected final b(Lcom/google/android/location/collectionlib/cb;J)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->i:Lcom/google/android/location/collectionlib/ca;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->i:Lcom/google/android/location/collectionlib/ca;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/collectionlib/ca;->a(Lcom/google/android/location/collectionlib/cb;J)V

    .line 161
    :cond_0
    return-void
.end method

.method final declared-synchronized d()V
    .locals 5

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bz;->a:Z

    const-string v1, "Call start before calling stop!"

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 116
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bz;->b:Z

    if-nez v0, :cond_3

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bz;->b:Z

    .line 118
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->f:Lcom/google/android/location/collectionlib/g;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->f:Lcom/google/android/location/collectionlib/g;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/g;->b()V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/bz;->b()V

    .line 122
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "%s stopped."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->h:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "%s has been stopped before. Skipping"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized e()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bz;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bz;->g:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Could not be called outside owner thread."

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 149
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
