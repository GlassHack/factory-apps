.class public final Lcom/google/g/a/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/g/a/b/i;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(Lcom/google/g/a/b/f;)V
    .locals 1

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 250
    :try_start_0
    invoke-interface {p0}, Lcom/google/g/a/b/f;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 119
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 122
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/g/a/b/i;->c(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/g/a/b/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-static {v0}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    return-object v0

    .line 87
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v0}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    throw v0
.end method
