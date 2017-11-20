.class public abstract Lcom/google/g/a/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/g/a/b/t;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/google/g/a/b/x;

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/g/a/b/p;->a:Z

    iput-boolean v0, p0, Lcom/google/g/a/b/p;->b:Z

    iput-boolean v0, p0, Lcom/google/g/a/b/p;->c:Z

    iput-object p1, p0, Lcom/google/g/a/b/p;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/g/a/c;->a()Lcom/google/g/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/c;->c()Lcom/google/g/a/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/b/p;->d:Lcom/google/g/a/b/x;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/g/a/b/p;->a:Z

    invoke-virtual {p0}, Lcom/google/g/a/b/p;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/g/a/b/p;->b:Z

    iget-object v1, p0, Lcom/google/g/a/b/p;->d:Lcom/google/g/a/b/x;

    iget-object v2, p0, Lcom/google/g/a/b/p;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/g/a/b/p;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/g/a/b/p;->d:Lcom/google/g/a/b/x;

    iget-object v2, p0, Lcom/google/g/a/b/p;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/g/a/b/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/google/g/a/b/p;->c:Z

    iput-boolean v0, p0, Lcom/google/g/a/b/p;->b:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/g/a/b/p;->b:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/g/a/b/p;->a:Z

    return v0
.end method
