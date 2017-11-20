.class public Lcom/google/glass/util/FileSaver;
.super Ljava/lang/Object;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/FileSaver$Saver;
    }
.end annotation


# static fields
.field private static final COPY_SAVER_BUFFER_SIZE:I = 0x100000

.field private static final MOCK_MODIFIED_TIME_STEP_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "%s.tmp"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final dir:Ljava/io/File;

.field private mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    .line 159
    iget-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Directory told to manage, %s, does not exist -- making it!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error creating directory: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/FileOutputStream;)J
    .locals 2
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/google/glass/util/FileSaver;->copyWithChannels(Ljava/io/File;Ljava/io/FileOutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static copyWithChannels(Ljava/io/File;Ljava/io/FileOutputStream;)J
    .locals 8
    .param p0, "inputFile"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v6    # "input":Ljava/io/FileInputStream;
    .local v7, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 122
    .local v1, "source":Ljava/nio/channels/FileChannel;
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 123
    .local v0, "target":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 125
    if-eqz v7, :cond_0

    .line 126
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-wide v2

    .line 125
    .end local v0    # "target":Ljava/nio/channels/FileChannel;
    .end local v1    # "source":Ljava/nio/channels/FileChannel;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v2

    .line 125
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;
    .locals 1
    .param p0, "fileToSave"    # Ljava/io/File;

    .prologue
    .line 79
    new-instance v0, Lcom/google/glass/util/FileSaver$2;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FileSaver$2;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newSaver(Ljava/io/InputStream;)Lcom/google/glass/util/FileSaver$Saver;
    .locals 1
    .param p0, "streamToSave"    # Ljava/io/InputStream;

    .prologue
    .line 133
    new-instance v0, Lcom/google/glass/util/FileSaver$3;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FileSaver$3;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newSaver([B)Lcom/google/glass/util/FileSaver$Saver;
    .locals 1
    .param p0, "content"    # [B

    .prologue
    .line 64
    new-instance v0, Lcom/google/glass/util/FileSaver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FileSaver$1;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 235
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 231
    return-void
.end method

.method public getModifiedTime()J
    .locals 5

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    .local v0, "lastModifiedTime":J
    iget-object v2, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 242
    :cond_0
    return-wide v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    const-string v1, "%s.tmp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z
    .locals 13
    .param p1, "saver"    # Lcom/google/glass/util/FileSaver$Saver;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/google/glass/util/FileSaver;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 179
    .local v7, "tempFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 180
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    .line 184
    .local v2, "lastModifiedTime":J
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Temporary file already exists."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v6, 0x0

    .line 209
    .local v6, "success":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 210
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 218
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_1
    return v6

    .line 188
    .end local v6    # "success":Z
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-interface {p1, v5}, Lcom/google/glass/util/FileSaver$Saver;->save(Ljava/io/OutputStream;)V

    .line 190
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    const/4 v4, 0x0

    .line 194
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 196
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Saved content to [%s] into file cache at %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 196
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/4 v6, 0x1

    .restart local v6    # "success":Z
    goto :goto_0

    .line 200
    .end local v6    # "success":Z
    :cond_3
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to rename file."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    const/4 v6, 0x0

    .restart local v6    # "success":Z
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to close stream."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v6, 0x0

    .line 216
    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "success":Z
    :catch_1
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to write content."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    const/4 v6, 0x0

    .line 209
    .restart local v6    # "success":Z
    if-eqz v4, :cond_0

    .line 210
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 212
    :catch_2
    move-exception v0

    .line 213
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to close stream."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v6, 0x0

    .line 216
    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "success":Z
    :catchall_0
    move-exception v8

    .line 209
    :goto_3
    if-eqz v4, :cond_4

    .line 210
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 215
    :cond_4
    :goto_4
    throw v8

    .line 212
    :catch_3
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed to close stream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v0, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 204
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
