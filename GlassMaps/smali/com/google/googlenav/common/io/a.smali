.class public abstract Lcom/google/googlenav/common/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/e;


# instance fields
.field protected final a:Lcom/google/googlenav/common/io/PersistentStore;

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
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    .line 51
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    .line 114
    iput-boolean p1, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 115
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/a;->b(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()B
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/google/googlenav/common/io/a;->c()V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    return v0
.end method

.method public final declared-synchronized a(Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/googlenav/common/io/a;->b:Z

    .line 75
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    iget-object v2, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 78
    invoke-static {}, Lcom/google/googlenav/common/io/a;->d()B

    move-result v5

    aput-byte v5, v3, v4

    .line 77
    invoke-interface {v0, v2, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 81
    :cond_1
    monitor-exit p0

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    return v0
.end method
