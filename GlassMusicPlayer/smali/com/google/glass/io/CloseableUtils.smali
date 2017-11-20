.class public final Lcom/google/glass/io/CloseableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;Z)Z

    move-result v0

    return v0
.end method

.method public static tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return v0

    .line 41
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    const-string v3, "Error closing [error=%s, closeable=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object p0, v4, v0

    invoke-interface {p1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public static tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 99
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 104
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    const-string v3, "Error closing [description=%s, error=%s, closeable=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 108
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    .line 107
    invoke-interface {p2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public static tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    const-string v3, "Error closing [description=%s, error=%s, socket=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 133
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    .line 132
    invoke-interface {p2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public static tryClose(Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;Z)Z

    move-result v0

    return v0
.end method

.method public static tryClose(Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 75
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return v0

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    if-eqz p2, :cond_1

    .line 84
    const-string v3, "Error closing [error=%s, socket=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object p0, v4, v0

    invoke-interface {p1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method
