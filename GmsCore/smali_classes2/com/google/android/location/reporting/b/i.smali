.class public final Lcom/google/android/location/reporting/b/i;
.super Ljava/util/logging/ErrorManager;
.source "SourceFile"

# interfaces
.implements Ljava/util/logging/Filter;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/util/logging/Handler;

.field private final c:Ljava/util/logging/LogRecord;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .locals 5

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/logging/ErrorManager;-><init>()V

    .line 51
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    .line 59
    iput-object p1, p0, Lcom/google/android/location/reporting/b/i;->d:Landroid/content/Context;

    .line 60
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const-string v0, "GCoreUlr"

    const-string v1, ""

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incomplete or non-existent dir "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_1
    iput-object p2, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    div-int/lit8 v1, p3, 0x4

    .line 70
    const-string v2, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    new-instance v2, Ljava/util/logging/FileHandler;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    .line 74
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    new-instance v1, Lcom/google/android/location/reporting/b/b;

    invoke-direct {v1}, Lcom/google/android/location/reporting/b/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    invoke-virtual {v0, p0}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    invoke-virtual {v0, p0}, Ljava/util/logging/Handler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 78
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    const/4 v2, 0x0

    .line 150
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :goto_1
    :try_start_2
    const-string v2, "GCoreUlr"

    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    invoke-static {v1}, Lcom/google/android/location/reporting/b/l;->a(Ljava/io/Closeable;)V

    .line 159
    :goto_2
    return-void

    .line 158
    :cond_0
    invoke-static {v1}, Lcom/google/android/location/reporting/b/l;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/reporting/b/l;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 155
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The log file directory does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 135
    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    .line 136
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "log."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-static {v1, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/reporting/b/a;->a(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setLevel(Ljava/util/logging/Level;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    iget-object v1, p0, Lcom/google/android/location/reporting/b/i;->c:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 5

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->b:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 123
    iget-object v0, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    move-result v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    const-string v0, "GCoreUlr"

    const-string v1, ""

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public final isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogFile{mLogDir="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/b/i;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
