.class public final Lcom/google/j/b/j;
.super Lcom/google/j/b/p;
.source "SourceFile"


# instance fields
.field a:Lcom/google/j/g;

.field b:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/google/j/g;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/j/b/p;-><init>(Ljava/lang/String;I)V

    .line 27
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/j/b/j;->b(I)V

    .line 70
    iput-object p3, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    new-instance v1, Lcom/google/j/d;

    invoke-direct {v1, p2}, Lcom/google/j/d;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/j/b/j;-><init>(Ljava/lang/String;ILcom/google/j/g;)V

    .line 58
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/j/b/j;->b:[B

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/j/b/j;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/j/b/j;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/j/b/j;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->s_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/j;->b:[B

    .line 127
    :cond_0
    return-void

    .line 125
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/j/b/p;->a()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b/j;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/j/b/p;->a(I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b/j;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/j;->l()V

    .line 189
    iget-object v0, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/j/b/j;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/g/a/b/n;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/j/b/j;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()I
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/j;->l()V

    .line 172
    iget-object v0, p0, Lcom/google/j/b/j;->b:[B

    array-length v0, v0

    .line 174
    iget-object v1, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/j/b/j;->a:Lcom/google/j/g;

    invoke-interface {v1}, Lcom/google/j/g;->s_()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_0
    monitor-exit p0

    return v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
