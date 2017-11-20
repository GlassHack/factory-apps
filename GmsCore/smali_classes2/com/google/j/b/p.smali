.class public abstract Lcom/google/j/b/p;
.super Lcom/google/j/b/m;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private n:I

.field private o:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/j/b/m;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/j/b/m;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/j/b/p;->a(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/google/j/b/p;->c(I)V

    .line 41
    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/j/b/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()[B
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 63
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/j/b/p;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 66
    iget v2, p0, Lcom/google/j/b/p;->n:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 67
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/p;->o:[B

    .line 74
    iget-object v0, p0, Lcom/google/j/b/p;->o:[B

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/j/b/p;->o:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/b/p;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Ljava/io/InputStream;
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/j/b/p;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract c()I
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b/p;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()I
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s_()I
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/p;->l()[B

    .line 95
    iget-object v0, p0, Lcom/google/j/b/p;->o:[B

    array-length v0, v0

    invoke-virtual {p0}, Lcom/google/j/b/p;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t_()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/p;->l()[B

    .line 109
    new-instance v0, Lcom/google/g/a/b/n;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/j/b/p;->o:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lcom/google/j/b/p;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
