.class public Lcom/google/glass/protobuf/ProtoListFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIME_BETWEEN_SAVES_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private maxAllowedSize:I

.field private final parser:Lcom/google/glass/protobuf/ProtoParser;

.field private final path:Ljava/lang/String;

.field private saveQueue:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/protobuf/ProtoListFile;->TIME_BETWEEN_SAVES_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/protobuf/ProtoParser;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/glass/protobuf/ProtoListFile;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iput-object p4, p0, Lcom/google/glass/protobuf/ProtoListFile;->parser:Lcom/google/glass/protobuf/ProtoParser;

    .line 50
    iput p5, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    .line 51
    return-void
.end method

.method private readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 191
    if-gez v0, :cond_0

    .line 192
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid proto size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    iget v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    if-le v0, v1, :cond_1

    .line 195
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Proto too large to read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    new-array v1, v0, [B

    .line 198
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->parser:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method private writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 131
    array-length v1, v0

    iget v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    if-le v1, v2, :cond_0

    .line 132
    sget-object v1, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Proto too large to write: %d > %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    array-length v1, v0

    invoke-virtual {p2, v0, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 207
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 211
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    return-void
.end method

.method public flushWrites()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 102
    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const/4 v1, 0x0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 106
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0, v0, v3}, Lcom/google/glass/protobuf/ProtoListFile;->writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    sget-object v0, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Saved %s proto(s) to disk."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    sget-object v0, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 126
    :goto_1
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_1
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not write protos."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    sget-object v0, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 121
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 124
    :cond_1
    sget-object v1, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No protos to save to disk."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 58
    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 146
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    if-eqz v2, :cond_0

    .line 154
    :try_start_1
    invoke-direct {p0, v4}, Lcom/google/glass/protobuf/ProtoListFile;->readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    move v2, v3

    .line 159
    goto :goto_0

    .line 161
    :cond_0
    :try_start_2
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Read %s persisted protos."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    :goto_1
    return-object v0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    :try_start_3
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not read protos from disk; not necessarily an error."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0
.end method

.method public size(Z)J
    .locals 9

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 69
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 72
    if-eqz p1, :cond_1

    .line 73
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    move-wide v7, v0

    move-wide v1, v7

    :goto_0
    if-ge v3, v4, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v1, v5

    .line 73
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move-wide v0, v1

    .line 77
    :cond_1
    return-wide v0
.end method

.method public write(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 5

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 85
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/protobuf/ProtoListFile$1;

    invoke-direct {v1, p0}, Lcom/google/glass/protobuf/ProtoListFile$1;-><init>(Lcom/google/glass/protobuf/ProtoListFile;)V

    sget-wide v2, Lcom/google/glass/protobuf/ProtoListFile;->TIME_BETWEEN_SAVES_MS:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method
