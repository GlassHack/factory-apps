.class final Lcom/google/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:[B

.field c:I

.field d:I

.field private e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/j/c;->c:I

    .line 33
    if-gtz p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/j/c;->b:[B

    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 123
    iget-object v1, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/google/j/c;->c:I

    if-gez v2, :cond_1

    .line 126
    iget-boolean v2, p0, Lcom/google/j/c;->e:Z

    if-eqz v2, :cond_0

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_1
    return v0

    .line 130
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    goto :goto_0

    .line 135
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/j/c;->b:[B

    iget v2, p0, Lcom/google/j/c;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/j/c;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 136
    iget v2, p0, Lcom/google/j/c;->c:I

    iget-object v3, p0, Lcom/google/j/c;->b:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    .line 137
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/j/c;->c:I

    .line 140
    :cond_2
    iget v2, p0, Lcom/google/j/c;->c:I

    iget v3, p0, Lcom/google/j/c;->d:I

    if-ne v2, v3, :cond_3

    .line 142
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/j/c;->c:I

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/j/c;->d:I

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a([BII)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 160
    if-nez p3, :cond_0

    .line 210
    :goto_0
    return v0

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 164
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/google/j/c;->c:I

    if-gez v2, :cond_2

    .line 166
    iget-boolean v2, p0, Lcom/google/j/c;->e:Z

    if-eqz v2, :cond_1

    .line 167
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    .line 170
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v2

    goto :goto_1

    .line 178
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/google/j/c;->c:I

    iget v2, p0, Lcom/google/j/c;->d:I

    if-ge v1, v2, :cond_6

    .line 179
    iget v1, p0, Lcom/google/j/c;->d:I

    iget v2, p0, Lcom/google/j/c;->c:I

    sub-int/2addr v1, v2

    move v2, v0

    move v0, p3

    .line 193
    :goto_2
    if-le v1, v0, :cond_3

    move v1, v0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/google/j/c;->b:[B

    iget v4, p0, Lcom/google/j/c;->c:I

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int v0, v2, v1

    .line 198
    iget v2, p0, Lcom/google/j/c;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/j/c;->c:I

    .line 199
    iget v1, p0, Lcom/google/j/c;->c:I

    iget-object v2, p0, Lcom/google/j/c;->b:[B

    array-length v2, v2

    if-ne v1, v2, :cond_4

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/j/c;->c:I

    .line 203
    :cond_4
    iget v1, p0, Lcom/google/j/c;->c:I

    iget v2, p0, Lcom/google/j/c;->d:I

    if-ne v1, v2, :cond_5

    .line 205
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/j/c;->c:I

    .line 206
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/j/c;->d:I

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 210
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 181
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/google/j/c;->b:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/j/c;->c:I

    sub-int v2, v1, v2

    .line 182
    if-ge v2, p3, :cond_7

    .line 184
    iget-object v0, p0, Lcom/google/j/c;->b:[B

    iget v1, p0, Lcom/google/j/c;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    add-int/2addr p2, v2

    .line 188
    sub-int/2addr p3, v2

    .line 189
    iget v1, p0, Lcom/google/j/c;->d:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/j/c;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, p3

    goto :goto_2

    :cond_7
    move v1, v2

    move v2, v0

    move v0, p3

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/j/c;->e:Z

    .line 233
    iget-object v0, p0, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
