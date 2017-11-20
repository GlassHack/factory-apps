.class final Lcom/google/common/io/ai;
.super Lcom/google/common/io/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/common/io/j;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/common/io/ai;->a:Ljava/io/File;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/google/common/io/ag;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/common/io/ai;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private c()Ljava/io/FileInputStream;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/ai;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/common/io/ai;->c()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/common/io/ai;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 135
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0}, Lcom/google/common/io/j;->b()[B

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 141
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is too large to fit in a byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    long-to-int v0, v4

    new-array v1, v0, [B

    .line 149
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v6

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/ai;->c()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    move v3, v2

    .line 156
    :goto_1
    int-to-long v7, v3

    cmp-long v7, v7, v4

    if-gez v7, :cond_2

    long-to-int v2, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v9, :cond_2

    .line 157
    add-int/2addr v3, v2

    goto :goto_1

    .line 162
    :cond_2
    int-to-long v7, v3

    cmp-long v4, v7, v4

    if-gez v4, :cond_3

    .line 164
    new-array v0, v3, [B

    .line 165
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_2
    invoke-virtual {v6}, Lcom/google/common/io/ac;->close()V

    goto :goto_0

    .line 166
    :cond_3
    if-eq v2, v9, :cond_4

    .line 169
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    invoke-static {v0, v2}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 172
    array-length v0, v1

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 173
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_2
    invoke-virtual {v6, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/io/ac;->close()V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ai;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
