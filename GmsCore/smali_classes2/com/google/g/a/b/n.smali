.class public final Lcom/google/g/a/b/n;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field a:[Ljava/io/InputStream;

.field b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/g/a/b/n;-><init>([Ljava/io/InputStream;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcom/google/g/a/b/n;-><init>([Ljava/io/InputStream;)V

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/g/a/b/n;->b:I

    .line 65
    iput-object p1, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    .line 66
    return-void
.end method

.method private a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v1, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/g/a/b/n;->b:I

    aget-object v0, v0, v1

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v1, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/g/a/b/n;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/g/a/b/n;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/g/a/b/n;->b:I

    aput-object v3, v0, v1

    .line 93
    iget v0, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v1, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 94
    iput-object v3, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    .line 97
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized available()I
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/g/a/b/n;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 140
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v3, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v2, v3, :cond_2

    .line 142
    :try_start_2
    iget-object v2, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    iget v3, p0, Lcom/google/g/a/b/n;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_1
    :try_start_3
    iget v2, p0, Lcom/google/g/a/b/n;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/g/a/b/n;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 148
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    .line 150
    if-ne v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final declared-synchronized read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 160
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/g/a/b/n;->a()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 165
    if-nez v1, :cond_0

    .line 168
    :goto_1
    monitor-exit p0

    return v0

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v1

    .line 168
    goto :goto_1

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/google/g/a/b/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 185
    monitor-enter p0

    .line 189
    if-nez p1, :cond_0

    .line 190
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_0
    if-nez p3, :cond_2

    .line 220
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 193
    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v2, p2, p3

    :try_start_1
    array-length v3, p1

    if-le v2, v3, :cond_4

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v3, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v3, v3

    if-lt v2, v3, :cond_6

    :cond_5
    move v0, v1

    .line 196
    goto :goto_0

    .line 197
    :cond_6
    if-eqz p3, :cond_1

    .line 202
    :goto_1
    if-lez p3, :cond_8

    .line 203
    invoke-direct {p0}, Lcom/google/g/a/b/n;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_8

    .line 207
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 211
    add-int/2addr p2, v2

    .line 212
    sub-int/2addr p3, v2

    .line 213
    add-int/2addr v0, v2

    goto :goto_1

    .line 215
    :cond_7
    invoke-direct {p0}, Lcom/google/g/a/b/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 220
    :cond_8
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized skip(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v0, 0x0

    .line 231
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/g/a/b/n;->b:I

    iget-object v3, p0, Lcom/google/g/a/b/n;->a:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 237
    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide v2, v0

    .line 242
    :goto_1
    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    .line 243
    :try_start_1
    invoke-direct {p0}, Lcom/google/g/a/b/n;->a()Ljava/io/InputStream;

    move-result-object v4

    .line 245
    if-eqz v4, :cond_4

    .line 246
    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    .line 256
    cmp-long v5, v6, v0

    if-nez v5, :cond_3

    .line 257
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/google/g/a/b/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_2
    sub-long/2addr p1, v8

    .line 261
    add-long/2addr v2, v8

    goto :goto_1

    .line 264
    :cond_3
    sub-long/2addr p1, v6

    .line 265
    add-long/2addr v2, v6

    .line 268
    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 273
    goto :goto_0
.end method
