.class public Lcom/google/g/a/d/f;
.super Lcom/google/g/a/d/e;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/g/a/d/g;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/g/a/d/g;->a()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/g/a/d/g;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;B)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/g/a/d/g;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/g/a/d/e;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;)V

    iput p3, p0, Lcom/google/g/a/d/f;->b:I

    return-void
.end method


# virtual methods
.method b()I
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/d/f;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->c(Lcom/google/g/a/d/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/d/f;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/f;)V

    return-void
.end method

.method public final declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/d/f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
