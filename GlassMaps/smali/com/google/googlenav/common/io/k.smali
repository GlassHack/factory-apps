.class public final Lcom/google/googlenav/common/io/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "MAPS"

    .line 29
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/k;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/common/io/k;->b:[C

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

.method public static a([B)Ljava/io/DataInput;
    .locals 1

    .prologue
    .line 727
    new-instance v0, Lcom/google/googlenav/common/io/c/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/io/c/a;-><init>([B)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 124
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/google/googlenav/common/io/k;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 394
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 2

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 96
    invoke-static {p0}, Lcom/google/googlenav/common/io/k;->b(Ljava/io/InputStream;)V

    return-object v0

    .line 92
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/google/googlenav/common/io/k;->b(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/google/googlenav/common/io/k;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 385
    return-void
.end method
