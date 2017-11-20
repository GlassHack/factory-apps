.class public final Lcom/google/g/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/g/a/c/f;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/g/a/c/d;->a:I

    iput v0, p0, Lcom/google/g/a/c/d;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/google/g/a/c/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/g/a/c/e;-><init>(Lcom/google/g/a/c/d;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/c/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/c/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/c/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/c/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/c/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/g/a/c/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
