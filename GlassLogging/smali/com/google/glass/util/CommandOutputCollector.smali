.class public Lcom/google/glass/util/CommandOutputCollector;
.super Ljava/lang/Object;
.source "CommandOutputCollector.java"


# static fields
.field private static final BUGREPORT_COMMAND:[Ljava/lang/String;

.field private static final RAFT_LOG_COMMAND:[Ljava/lang/String;

.field private static final RAFT_LOG_LOCATION:Ljava/lang/String; = "/sdcard/logs/log_dump"

.field private static final SYSTEM_LOG_COMMAND:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v3

    const-string v1, "-d"

    aput-object v1, v0, v4

    const-string v1, "-v"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "threadtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bugreport"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->BUGREPORT_COMMAND:[Ljava/lang/String;

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v3

    const-string v1, "/sdcard/logs/log_dump"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->RAFT_LOG_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;
    .locals 6
    .param p0, "command"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 84
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 85
    .local v1, "proc":Ljava/lang/Process;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "proc":Ljava/lang/Process;
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error collecting output"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static collectOutputStrings([Ljava/lang/String;)[Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "command"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 65
    invoke-static {p0}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 67
    .local v0, "output":[Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/glass/util/CommandOutputCollector;->readStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    .local v2, "stdout":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/glass/util/CommandOutputCollector;->readStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    .local v1, "stderr":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v4, "stdout"

    aget-object v5, v0, v5

    sget-object v6, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v5, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 73
    const-string v4, "stderr"

    aget-object v5, v0, v7

    sget-object v6, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v5, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :cond_0
    return-object v3

    .line 71
    .end local v1    # "stderr":Ljava/lang/StringBuilder;
    .end local v2    # "stdout":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 72
    const-string v4, "stdout"

    aget-object v5, v0, v5

    sget-object v6, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v5, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 73
    const-string v4, "stderr"

    aget-object v5, v0, v7

    sget-object v6, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v5, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :cond_1
    throw v3
.end method

.method public static getBugReport()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 26
    sget-object v1, Lcom/google/glass/util/CommandOutputCollector;->BUGREPORT_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 27
    .local v0, "output":[Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "bugreport stderr"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 31
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLogcat()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 37
    sget-object v1, Lcom/google/glass/util/CommandOutputCollector;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 38
    .local v0, "output":[Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "logcat stderr"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 42
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 44
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRaftLog()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/logs/log_dump"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    .local v0, "output":[Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 54
    .end local v0    # "output":[Ljava/io/InputStream;
    :cond_1
    sget-object v2, Lcom/google/glass/util/CommandOutputCollector;->RAFT_LOG_COMMAND:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object v0

    .line 55
    .restart local v0    # "output":[Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "logcat stderr"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 59
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v2, "log":Ljava/lang/StringBuilder;
    if-nez p0, :cond_1

    .line 104
    :cond_0
    return-object v2

    .line 97
    :cond_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "lineSeparator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
