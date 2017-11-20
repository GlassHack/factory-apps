.class public abstract Lcom/google/common/io/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/charset/Charset;)Lcom/google/common/io/t;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/io/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/i;-><init>(Lcom/google/common/io/g;Ljava/nio/charset/Charset;Lcom/google/common/io/h;)V

    return-object v0
.end method

.method public abstract a()Ljava/io/OutputStream;
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/g;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 92
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    .line 98
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method
