.class public Lcom/google/glass/util/FileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final READ_FILE_CHUNK_SIZE:I = 0x2000

.field private static final TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Lcom/google/glass/util/FileHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/FileHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error creating base path: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 66
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 76
    :goto_2
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    if-ltz v0, :cond_1

    .line 77
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 88
    :cond_1
    const-string v0, "raw resource input stream"

    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v4, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 89
    const-string v0, "copy file output stream"

    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v2, v5, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 83
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 84
    :goto_3
    :try_start_4
    sget-object v4, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to copy file to: %s"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v0, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    const-string v0, "raw resource input stream"

    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v3, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 89
    const-string v0, "copy file output stream"

    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 92
    :cond_4
    return-void

    .line 84
    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 88
    :catchall_0
    move-exception v0

    :goto_5
    const-string v1, "raw resource input stream"

    sget-object v4, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 89
    const-string v1, "copy file output stream"

    sget-object v3, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 88
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_5

    .line 83
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3
.end method

.method public static formatTimestamp(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/google/glass/util/FileHelper;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 103
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    move v0, v1

    .line 108
    :cond_0
    const/16 v4, 0x2000

    sub-int v5, v3, v0

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 108
    invoke-virtual {v2, p1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_2

    .line 110
    add-int/2addr v0, v4

    .line 113
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/glass/util/Condition;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    sget-object v0, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move v0, v1

    :goto_0
    return v0

    .line 116
    :cond_1
    if-ne v0, v3, :cond_0

    .line 122
    :cond_2
    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0
.end method
