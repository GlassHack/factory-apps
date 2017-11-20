.class public abstract Lcom/google/common/io/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Ljava/io/BufferedReader;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/io/u;->a()Ljava/io/Reader;

    move-result-object v0

    .line 81
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedReader;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/common/io/t;)J
    .locals 3

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v2

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/u;->a()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 118
    invoke-virtual {p1}, Lcom/google/common/io/t;->a()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 119
    invoke-static {v0, v1}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 123
    invoke-virtual {v2}, Lcom/google/common/io/ac;->close()V

    return-wide v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public final a(Ljava/lang/Appendable;)J
    .locals 4

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/u;->a()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 98
    invoke-static {v0, p1}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 102
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-wide v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public abstract a()Ljava/io/Reader;
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/u;->a()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    .line 136
    invoke-static {v0}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 140
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/u;->d()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/BufferedReader;

    .line 158
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 162
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method
