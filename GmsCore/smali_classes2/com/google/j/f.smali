.class public final Lcom/google/j/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/io/InputStream;

.field protected b:Lcom/google/j/c;

.field protected c:I

.field protected d:Ljava/lang/Object;

.field protected volatile e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/j/f;->d:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/google/j/f;->a:Ljava/io/InputStream;

    .line 50
    iput p2, p0, Lcom/google/j/f;->c:I

    .line 51
    return-void
.end method

.method private a([BII)I
    .locals 2

    .prologue
    .line 185
    const/4 v0, -0x1

    .line 186
    iget v1, p0, Lcom/google/j/f;->c:I

    if-lez v1, :cond_2

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/google/j/f;->a:Ljava/io/InputStream;

    iget v1, p0, Lcom/google/j/f;->c:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 189
    if-lez v0, :cond_0

    .line 190
    iget v1, p0, Lcom/google/j/f;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/j/f;->c:I

    .line 193
    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/j/f;->c:I

    if-nez v1, :cond_2

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/google/j/f;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_2
    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-direct {p0}, Lcom/google/j/f;->c()V

    .line 198
    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/j/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/google/j/f;->e:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/j/f;->e:Z

    .line 74
    iget-object v0, p0, Lcom/google/j/f;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/google/j/f;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 168
    const/4 v0, -0x1

    .line 169
    iget v1, p0, Lcom/google/j/f;->c:I

    if-lez v1, :cond_1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/j/f;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 172
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/j/f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/j/f;->c:I

    if-nez v1, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/google/j/f;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_1
    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-direct {p0}, Lcom/google/j/f;->c()V

    .line 177
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/j/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/j/f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/google/j/f;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget v0, p0, Lcom/google/j/f;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    monitor-exit p0

    .line 133
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Lcom/google/j/c;

    const/high16 v1, 0x10000

    iget v2, p0, Lcom/google/j/f;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/j/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 119
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/google/j/f;->c:I

    if-lez v0, :cond_9

    .line 120
    const/4 v0, 0x0

    array-length v1, v4

    invoke-direct {p0, v4, v0, v1}, Lcom/google/j/f;->a([BII)I

    move-result v1

    .line 122
    if-lez v1, :cond_8

    .line 123
    iget-object v5, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    iget-object v6, v5, Lcom/google/j/c;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v2, v3

    :cond_2
    :goto_2
    if-lez v1, :cond_7

    :goto_3
    :try_start_2
    iget v0, v5, Lcom/google/j/c;->c:I

    iget v7, v5, Lcom/google/j/c;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_3

    :try_start_3
    iget-object v0, v5, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, v5, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_3
    :try_start_4
    iget v0, v5, Lcom/google/j/c;->c:I

    if-gez v0, :cond_4

    const/4 v0, 0x0

    iput v0, v5, Lcom/google/j/c;->c:I

    :cond_4
    iget v0, v5, Lcom/google/j/c;->d:I

    iget v7, v5, Lcom/google/j/c;->c:I

    if-ge v0, v7, :cond_6

    iget v0, v5, Lcom/google/j/c;->c:I

    iget v7, v5, Lcom/google/j/c;->d:I

    sub-int/2addr v0, v7

    :goto_4
    if-le v0, v1, :cond_5

    move v0, v1

    :cond_5
    iget-object v7, v5, Lcom/google/j/c;->b:[B

    iget v8, v5, Lcom/google/j/c;->d:I

    invoke-static {v4, v2, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    iget v7, v5, Lcom/google/j/c;->d:I

    add-int/2addr v0, v7

    iput v0, v5, Lcom/google/j/c;->d:I

    iget v0, v5, Lcom/google/j/c;->d:I

    iget-object v7, v5, Lcom/google/j/c;->b:[B

    array-length v7, v7

    if-ne v0, v7, :cond_2

    const/4 v0, 0x0

    iput v0, v5, Lcom/google/j/c;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v6

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    invoke-virtual {v0}, Lcom/google/j/c;->b()V

    goto :goto_0

    .line 123
    :cond_6
    :try_start_6
    iget-object v0, v5, Lcom/google/j/c;->b:[B

    array-length v0, v0

    iget v7, v5, Lcom/google/j/c;->d:I

    sub-int/2addr v0, v7

    goto :goto_4

    :cond_7
    iget-object v0, v5, Lcom/google/j/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 125
    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 132
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    invoke-virtual {v1}, Lcom/google/j/c;->b()V

    throw v0

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    invoke-virtual {v0}, Lcom/google/j/c;->b()V

    goto/16 :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/google/j/f;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read()I
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    invoke-virtual {v0}, Lcom/google/j/c;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/j/f;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/j/f;->read([BII)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/j/f;->b:Lcom/google/j/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/j/c;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/j/f;->a([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
