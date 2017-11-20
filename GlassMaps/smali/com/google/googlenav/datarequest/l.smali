.class public final Lcom/google/googlenav/datarequest/l;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/googlenav/datarequest/l;->a:I

    .line 57
    iput-object p2, p0, Lcom/google/googlenav/datarequest/l;->b:[B

    .line 58
    iput-boolean p3, p0, Lcom/google/googlenav/datarequest/l;->c:Z

    .line 59
    iput-boolean p4, p0, Lcom/google/googlenav/datarequest/l;->d:Z

    .line 60
    iput-boolean p5, p0, Lcom/google/googlenav/datarequest/l;->e:Z

    .line 61
    iput-object p6, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public final getRequestType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/googlenav/datarequest/l;->a:I

    return v0
.end method

.method public final isForeground()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/l;->d:Z

    return v0
.end method

.method public final isImmediate()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/l;->c:Z

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lcom/google/googlenav/datarequest/l;->g:Z

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    return v2

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final usesShortbreadToken()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/l;->e:Z

    return v0
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlenav/datarequest/l;->b:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/l;->f:Z

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/l;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
