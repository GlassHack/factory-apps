.class public final Lcom/google/android/gms/common/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 6

    .prologue
    .line 128
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 129
    const-wide/16 v0, 0x0

    .line 132
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 133
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 134
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    throw v0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    .line 142
    return-wide v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    array-length v2, p0

    if-le v2, v0, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const v3, 0x8b1f

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
