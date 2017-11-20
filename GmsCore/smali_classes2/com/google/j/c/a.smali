.class public final Lcom/google/j/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/j/q;

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/j/q;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/c/a;->a:Lcom/google/j/q;

    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/j/c/a;->b:Z

    if-nez v0, :cond_0

    .line 60
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/j/c/a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/c/a;->c:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/j/c/a;->b:Z

    .line 75
    iget-object v0, p0, Lcom/google/j/c/a;->a:Lcom/google/j/q;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/j/c/a;->a:Lcom/google/j/q;

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
