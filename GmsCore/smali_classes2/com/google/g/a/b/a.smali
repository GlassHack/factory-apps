.class public abstract Lcom/google/g/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/b/d;


# instance fields
.field protected final a:Lcom/google/g/a/b/k;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/google/g/a/b/a;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/g/a/b/a;->c:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/g/a/b/a;->d:Z

    .line 49
    iput-object p1, p0, Lcom/google/g/a/b/a;->e:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/google/g/a/a;->a()Lcom/google/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/a;->c()Lcom/google/g/a/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/b/a;->a:Lcom/google/g/a/b/k;

    .line 51
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/g/a/b/a;->b:Z

    .line 75
    iget-boolean v2, p0, Lcom/google/g/a/b/a;->d:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/g/a/b/a;->a:Lcom/google/g/a/b/k;

    iget-object v3, p0, Lcom/google/g/a/b/a;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/g/a/b/k;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/g/a/b/a;->d:Z

    iput-boolean v0, p0, Lcom/google/g/a/b/a;->c:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/g/a/b/a;->c:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/g/a/b/a;->c:Z

    .line 77
    iget-object v0, p0, Lcom/google/g/a/b/a;->a:Lcom/google/g/a/b/k;

    iget-object v2, p0, Lcom/google/g/a/b/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/g/a/b/k;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
