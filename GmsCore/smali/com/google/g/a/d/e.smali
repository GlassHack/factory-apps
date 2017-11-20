.class public abstract Lcom/google/g/a/d/e;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Lcom/google/g/a/d/e;


# instance fields
.field protected a:Lcom/google/g/a/d/g;

.field private c:Ljava/lang/Runnable;

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/g/a/d/e;

    sput-object v0, Lcom/google/g/a/d/e;->b:[Lcom/google/g/a/d/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/d/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/g/a/d/e;->a:Lcom/google/g/a/d/g;

    iput-object p2, p0, Lcom/google/g/a/d/e;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private h()[Lcom/google/g/a/d/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/g/a/d/e;->b:[Lcom/google/g/a/d/e;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/d/e;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->b(Lcom/google/g/a/d/e;)I

    move-result v0

    return v0
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/g/a/d/e;->d:I

    return-void
.end method

.method abstract b()I
.end method

.method protected final c()I
    .locals 1

    iget v0, p0, Lcom/google/g/a/d/e;->d:I

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Lcom/google/g/a/d/e;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/g/a/d/e;->e:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/g/a/d/e;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/e;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract e()V
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/d/e;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/g/a/d/e;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/g/a/d/e;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/g/a/d/e;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lcom/google/g/a/d/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/d/e;->e:I

    iget-object v0, p0, Lcom/google/g/a/d/e;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/google/g/a/d/e;->h()[Lcom/google/g/a/d/e;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/g/a/d/e;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method
