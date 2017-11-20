.class public Lcom/google/android/shared/util/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field private static final BYTES_BUF_SIZE:I = 0x1000

.field private static final CHARS_BUF_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "IoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;Z)V
    .locals 4
    .param p0, "closeable"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "swallowIOException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    if-eqz p1, :cond_1

    .line 143
    const-string v1, "IoUtils"

    const-string v2, "IOException thrown while closing Closeable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_1
    throw v0
.end method

.method public static closeQuietly(Landroid/util/JsonReader;)V
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 312
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 314
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 315
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 321
    return-wide v2

    .line 318
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 319
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 320
    goto :goto_0
.end method

.method private static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6
    .param p0, "from"    # Ljava/lang/Readable;
    .param p1, "to"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/16 v4, 0x800

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 405
    .local v0, "buf":Ljava/nio/CharBuffer;
    const-wide/16 v2, 0x0

    .line 407
    .local v2, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 408
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 415
    return-wide v2

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 412
    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 413
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 414
    goto :goto_0
.end method

.method private static newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v0, Lcom/google/android/shared/util/IoUtils$2;

    invoke-direct {v0, p0}, Lcom/google/android/shared/util/IoUtils$2;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/shared/util/IoUtils;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method private static newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Lcom/google/android/shared/util/IoUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/shared/util/IoUtils$1;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    if-gez p3, :cond_0

    .line 178
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 181
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 182
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 183
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 188
    .end local v0    # "result":I
    :cond_1
    return v1

    .line 186
    .restart local v0    # "result":I
    :cond_2
    add-int/2addr v1, v0

    .line 187
    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/shared/util/IoUtils;->readFully(Ljava/io/InputStream;[BII)V

    .line 368
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/shared/util/IoUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 388
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 390
    :cond_0
    return-void
.end method

.method private static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    .line 218
    .local v2, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 220
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 221
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 224
    invoke-static {v0, v2}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1    # "result":[B
    :catchall_0
    move-exception v3

    invoke-static {v0, v2}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 431
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 433
    invoke-static {p0}, Lcom/google/android/shared/util/IoUtils;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Lcom/google/common/io/InputSupplier;)[B

    move-result-object v0

    .line 445
    :goto_1
    return-object v0

    .line 430
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    .line 437
    .local v0, "b":[B
    const/4 v2, 0x1

    .line 438
    .local v2, "threw":Z
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 440
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1, v0}, Lcom/google/android/shared/util/IoUtils;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    const/4 v2, 0x0

    .line 443
    invoke-static {v1, v2}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/android/shared/util/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p0}, Lcom/google/android/shared/util/IoUtils;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/android/shared/util/IoUtils;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 351
    return-object v0
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .locals 3
    .param p0, "from"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v1, 0x1

    .line 254
    .local v1, "threw":Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 256
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const/4 v1, 0x0

    .line 259
    invoke-static {v0, v1}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/android/shared/util/IoUtils;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static write([BLjava/io/File;)V
    .locals 1
    .param p0, "from"    # [B
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/shared/util/IoUtils;->write([BLcom/google/common/io/OutputSupplier;)V

    .line 239
    return-void
.end method
