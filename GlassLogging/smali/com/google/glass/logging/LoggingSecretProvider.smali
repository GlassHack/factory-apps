.class public Lcom/google/glass/logging/LoggingSecretProvider;
.super Landroid/content/ContentProvider;
.source "LoggingSecretProvider.java"


# static fields
.field private static final CODE_OK:I = 0x1

.field private static final LOGGING_SECRET_FILENAME:Ljava/lang/String; = "logging_secret"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private loggingSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/logging/LoggingSecretProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 42
    sget-object v0, Lcom/google/glass/logging/LoggingSecretProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.logging"

    const-string v2, "secret_table"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    sget-object v1, Lcom/google/glass/logging/LoggingSecretProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 62
    const-class v2, Lcom/google/glass/logging/LoggingSecretProvider;

    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingSecretProvider;->readFromFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/logging/LoggingSecretProvider;->writeToFile(Ljava/lang/String;)V

    .line 72
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "secret"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/logging/LoggingSecretProvider;->loggingSecret:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 79
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v0

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromFile()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingSecretProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "logging_secret"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 91
    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 91
    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "secret"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingSecretProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "logging_secret"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 100
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 108
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to persist logging secret in file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "logging_secret"

    aput-object v7, v5, v6

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    sget-object v3, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/google/glass/logging/LoggingSecretProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v3
.end method
