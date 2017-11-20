.class public final Lcom/google/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 190
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 191
    const-wide/16 v0, 0x0

    .line 193
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 194
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 195
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 199
    goto :goto_0

    .line 200
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;[B)V
    .locals 4

    .prologue
    .line 642
    array-length v1, p1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x0

    sub-int v3, v1, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 643
    :cond_2
    return-void
.end method

.method public static a(Lcom/google/c/e/f;)[B
    .locals 3

    .prologue
    .line 248
    const/4 v2, 0x1

    .line 249
    invoke-interface {p0}, Lcom/google/c/e/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 251
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/google/c/e/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 255
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;Z)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0, v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;Z)V

    throw v1
.end method
