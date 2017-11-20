.class public abstract Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 92
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 96
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 102
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 104
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 99
    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception when convert bytes to handler."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    sget-object v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 102
    sget-object v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 102
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 101
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static handleResponse(Landroid/content/Context;Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->getHandlerObject()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleCancelled(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot get a handler from the response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract handleCancelled(Landroid/content/Context;)V
.end method

.method protected abstract handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public toBytes()[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 70
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 80
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 81
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 83
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 78
    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception when convert handler to bytes."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 81
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 81
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 80
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 77
    :catch_1
    move-exception v1

    goto :goto_1
.end method
