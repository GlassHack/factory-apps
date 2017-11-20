.class abstract Lcom/google/android/location/collectionlib/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/location/collectionlib/ao;

.field protected final b:Lcom/google/android/location/p/a/c;

.field protected volatile c:Z

.field protected final d:Lcom/google/android/location/collectionlib/cj;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bx;->c:Z

    .line 24
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bx;->a:Lcom/google/android/location/collectionlib/ao;

    .line 25
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bx;->b:Lcom/google/android/location/p/a/c;

    .line 26
    iput-object p3, p0, Lcom/google/android/location/collectionlib/bx;->d:Lcom/google/android/location/collectionlib/cj;

    .line 27
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
.end method

.method public final declared-synchronized b(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bx;->c:Z

    if-eqz v0, :cond_1

    .line 39
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bx;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Writer closed, no data can be appended."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    monitor-exit p0

    return v0

    .line 42
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bx;->d:Lcom/google/android/location/collectionlib/cj;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bx;->d:Lcom/google/android/location/collectionlib/cj;

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/cj;->a(Lcom/google/g/a/b/b/a;)V

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/collectionlib/bx;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bx;->c:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/bx;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
