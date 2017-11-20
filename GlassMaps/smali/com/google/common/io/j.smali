.class public abstract Lcom/google/common/io/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/io/j;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/io/g;)J
    .locals 3

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v2

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 202
    invoke-virtual {p1}, Lcom/google/common/io/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 203
    invoke-static {v0, v1}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 207
    invoke-virtual {v2}, Lcom/google/common/io/ac;->close()V

    return-wide v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public final a(Ljava/io/OutputStream;)J
    .locals 4

    .prologue
    .line 177
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 182
    invoke-static {v0, p1}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 186
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-wide v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public final a(Lcom/google/common/hash/k;)Lcom/google/common/hash/j;
    .locals 2

    .prologue
    .line 234
    invoke-interface {p1}, Lcom/google/common/hash/k;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->a(Lcom/google/common/hash/r;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/j;->a(Ljava/io/OutputStream;)J

    .line 236
    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Lcom/google/common/io/u;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/io/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/l;-><init>(Lcom/google/common/io/j;Ljava/nio/charset/Charset;Lcom/google/common/io/k;)V

    return-object v0
.end method

.method public abstract a()Ljava/io/InputStream;
.end method

.method public final a(Lcom/google/common/io/j;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0x1000

    .line 247
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-array v3, v9, [B

    .line 250
    new-array v4, v9, [B

    .line 252
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v5

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 255
    invoke-virtual {p1}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 257
    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x1000

    invoke-static {v0, v3, v6, v7}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 258
    const/4 v7, 0x0

    const/16 v8, 0x1000

    invoke-static {v1, v4, v7, v8}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 259
    if-ne v6, v7, :cond_1

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 268
    :cond_1
    invoke-virtual {v5}, Lcom/google/common/io/ac;->close()V

    move v0, v2

    :goto_0
    return v0

    .line 261
    :cond_2
    if-eq v6, v9, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 268
    invoke-virtual {v5}, Lcom/google/common/io/ac;->close()V

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    :try_start_1
    invoke-virtual {v5, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/j;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 220
    invoke-static {v0}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 224
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method
