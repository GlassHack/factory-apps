.class public Lcom/google/j/b;
.super Lcom/google/j/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/b/e;
.implements Lcom/google/j/b/n;


# instance fields
.field protected b:I

.field private final c:Lcom/google/j/b/e;

.field private final d:Lcom/google/j/h;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Ljava/lang/Exception;

.field private g:Ljava/io/DataInputStream;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/j/a;-><init>()V

    .line 44
    iput v0, p0, Lcom/google/j/b;->b:I

    .line 45
    iput-boolean v0, p0, Lcom/google/j/b;->l:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncHttpConnection("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Lcom/google/j/h;->b()Lcom/google/j/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b;->d:Lcom/google/j/h;

    .line 51
    new-instance v0, Lcom/google/j/b/e;

    invoke-direct {v0, p1}, Lcom/google/j/b/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    .line 52
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    invoke-virtual {v0, p0}, Lcom/google/j/b/e;->a(Lcom/google/j/b/n;)V

    .line 54
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/j/b/e;->b(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    invoke-virtual {v0}, Lcom/google/j/b/e;->h()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/j/b/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncHttpConnection.setState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iput p1, p0, Lcom/google/j/b;->b:I

    .line 404
    invoke-virtual {p0}, Lcom/google/j/b;->g()V

    .line 405
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 3

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    iget-object v1, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/j/b/e;->a([B)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/j/b;->d:Lcom/google/j/h;

    iget-object v1, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/j/h;->a(Lcom/google/j/b/m;Z)V

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_1
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/io/DataOutputStream;
    .locals 2

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    .line 377
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncHttpConnection.getHeaderField(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v0, p0, Lcom/google/j/b;->b:I

    .line 179
    invoke-direct {p0}, Lcom/google/j/b;->l()V

    .line 183
    iget-object v0, p0, Lcom/google/j/b;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/j/b;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/google/j/b;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/j/b;->i:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_1
    monitor-exit p0

    return-object v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 2

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    :try_start_1
    new-instance v0, Lcom/google/j/b/f;

    invoke-direct {v0, p2}, Lcom/google/j/b/f;-><init>(Lcom/google/j/b/o;)V

    .line 440
    iget v1, v0, Lcom/google/j/b/f;->e:I

    iput v1, p0, Lcom/google/j/b;->j:I

    .line 441
    iget-object v1, v0, Lcom/google/j/b/f;->b:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b;->h:[Ljava/lang/String;

    .line 442
    iget-object v1, v0, Lcom/google/j/b/f;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b;->i:[Ljava/lang/String;

    .line 443
    iget v1, v0, Lcom/google/j/b/f;->d:I

    iput v1, p0, Lcom/google/j/b;->k:I

    .line 444
    iget-object v0, v0, Lcom/google/j/b/f;->a:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/j/b;->g:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    :try_start_3
    iput-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 450
    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :catch_1
    move-exception v0

    .line 448
    :try_start_5
    iput-object v0, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 450
    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/j/b;->a(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final declared-synchronized a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/j/b;->f:Ljava/lang/Exception;

    .line 460
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/j/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I

    .line 356
    invoke-direct {p0}, Lcom/google/j/b;->l()V

    .line 358
    iget-object v0, p0, Lcom/google/j/b;->g:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/j/b;->g:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I

    .line 274
    invoke-direct {p0}, Lcom/google/j/b;->l()V

    .line 276
    iget v0, p0, Lcom/google/j/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I

    .line 145
    invoke-direct {p0}, Lcom/google/j/b;->l()V

    .line 147
    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lcom/google/j/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I

    .line 249
    invoke-direct {p0}, Lcom/google/j/b;->l()V

    .line 251
    iget v0, p0, Lcom/google/j/b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b;->e:Ljava/io/ByteArrayOutputStream;

    .line 124
    iget-object v0, p0, Lcom/google/j/b;->c:Lcom/google/j/b/e;

    invoke-virtual {v0}, Lcom/google/j/b/e;->a()V

    .line 126
    iget-object v0, p0, Lcom/google/j/b;->g:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b;->g:Ljava/io/DataInputStream;

    .line 128
    iget-boolean v0, p0, Lcom/google/j/b;->l:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b;->h:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b;->i:[Ljava/lang/String;

    .line 133
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/j/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 2

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Z
    .locals 2

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
