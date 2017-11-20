.class final Lcom/google/android/location/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput v0, p0, Lcom/google/android/location/l/f;->a:I

    .line 379
    iput v0, p0, Lcom/google/android/location/l/f;->b:I

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 385
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/location/l/f;->a:I

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/l/f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/g/a/b/b/a;
    .locals 3

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/l/f;->a:I

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 418
    :goto_0
    invoke-direct {p0}, Lcom/google/android/location/l/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-object v0

    .line 414
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->Y:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 415
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/location/l/f;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 416
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/l/f;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/l/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/l/f;->a:I

    .line 397
    if-eqz p1, :cond_0

    .line 398
    iget v0, p0, Lcom/google/android/location/l/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/l/f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
