.class public final Lcom/google/g/a/b/b/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/g/a/b/b/f;II)I
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->d(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/google/g/a/b/b/h;Ljava/io/InputStream;Lcom/google/g/a/b/b/f;)I
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/h;

    invoke-virtual {p2, v0}, Lcom/google/g/a/b/b/f;->a(Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p2, p1, v0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;I)I

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->a(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    return-object v0
.end method

.method public static a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;
    .locals 4

    new-instance v0, Lcom/google/g/a/b/b/f;

    invoke-direct {v0, p0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-static {p1}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/f;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-instance v1, Lcom/google/g/a/b/s;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/g/a/b/s;-><init>(Ljava/io/InputStream;I)V

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/g/a/b/b/f;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public static b(Lcom/google/g/a/b/b/f;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/f;->e(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static b(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->a(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    return-object v0
.end method

.method public static c(Lcom/google/g/a/b/b/f;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/f;->e(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
