.class public Lcom/google/glass/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final READ_FILE_CHUNK_SIZE:I = 0x2000

.field private static final TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    new-instance v0, Lcom/google/glass/util/FileHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/FileHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "resIdToFilename":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "basePathDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_0

    .line 59
    sget-object v12, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Error creating base path: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 64
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 65
    .local v3, "bytesRead":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 66
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "destinationPath":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 69
    .local v11, "resId":I
    const/4 v9, 0x0

    .line 70
    .local v9, "is":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 72
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v9    # "is":Ljava/io/BufferedInputStream;
    .local v10, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v10, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-ltz v3, :cond_1

    .line 75
    const/4 v12, -0x1

    if-ne v3, v12, :cond_3

    .line 86
    :cond_1
    const-string v12, "raw resource input stream"

    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v12, v10, v14}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 87
    const-string v12, "copy file output stream"

    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v12, v8, v14}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 66
    .end local v4    # "destinationPath":Ljava/lang/String;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/BufferedInputStream;
    .end local v11    # "resId":I
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .restart local v4    # "destinationPath":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/BufferedInputStream;
    .restart local v11    # "resId":I
    :cond_3
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v8, v2, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 81
    :catch_0
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 82
    .end local v10    # "is":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_4
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Unable to copy file to: %s"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_4
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v13, v5, v12, v14}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    const-string v12, "raw resource input stream"

    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v12, v9, v13}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 87
    const-string v12, "copy file output stream"

    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v12, v7, v13}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 90
    .end local v4    # "destinationPath":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/BufferedInputStream;
    .end local v11    # "resId":I
    :cond_4
    return-void

    .line 82
    .restart local v4    # "destinationPath":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/BufferedInputStream;
    .restart local v11    # "resId":I
    :cond_5
    :try_start_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    const-string v13, "raw resource input stream"

    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v13, v9, v14}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 87
    const-string v13, "copy file output stream"

    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v13, v7, v14}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v12

    .line 86
    .end local v9    # "is":Ljava/io/BufferedInputStream;
    .restart local v10    # "is":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "is":Ljava/io/BufferedInputStream;
    .restart local v9    # "is":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/BufferedInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/BufferedInputStream;
    .restart local v9    # "is":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 81
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v9    # "is":Ljava/io/BufferedInputStream;
    .restart local v10    # "is":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v5

    move-object v9, v10

    .end local v10    # "is":Ljava/io/BufferedInputStream;
    .restart local v9    # "is":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static formatTimestamp(J)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J

    .prologue
    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/google/glass/util/FileHelper;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 42
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
    .param p0, "file"    # Ljava/io/File;
    .param p1, "into"    # [B
    .param p2, "isCancelled"    # Lcom/google/glass/util/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 101
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 104
    .local v3, "read":I
    const/4 v2, 0x0

    .line 105
    .local v2, "offset":I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    .line 106
    .local v1, "length":I
    :cond_0
    const/16 v4, 0x2000

    sub-int v5, v1, v2

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 106
    invoke-virtual {v0, p1, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_2

    .line 108
    add-int/2addr v2, v3

    .line 111
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/glass/util/Condition;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const/4 v4, 0x0

    .line 120
    sget-object v5, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 118
    :goto_0
    return v4

    .line 114
    :cond_1
    if-ne v2, v1, :cond_0

    .line 120
    :cond_2
    sget-object v4, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move v4, v2

    .line 118
    goto :goto_0

    .line 120
    .end local v1    # "length":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v4
.end method
