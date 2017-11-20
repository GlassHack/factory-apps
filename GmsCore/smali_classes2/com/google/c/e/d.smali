.class public final Lcom/google/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)[B
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 197
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/c/e/e;

    invoke-direct {v0, p0}, Lcom/google/c/e/e;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/google/c/e/a;->a(Lcom/google/c/e/f;)[B

    move-result-object v0

    .line 209
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 201
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    :try_start_0
    invoke-static {v3, v0}, Lcom/google/c/e/a;->a(Ljava/io/InputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {v3, v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;Z)V

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    invoke-static {v3, v1}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;Z)V

    throw v0
.end method
