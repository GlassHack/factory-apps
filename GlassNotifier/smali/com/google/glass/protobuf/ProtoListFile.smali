.class public Lcom/google/glass/protobuf/ProtoListFile;
.super Ljava/lang/Object;
.source "ProtoListFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TIME_BETWEEN_SAVES_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private maxAllowedSize:I

.field private final parser:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;

.field private saveQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/protobuf/ProtoListFile;->TIME_BETWEEN_SAVES_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/protobuf/ProtoParser;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p5, "maxAllowedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/glass/protobuf/ProtoParser",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    .local p4, "parser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/glass/protobuf/ProtoListFile;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    iput-object p4, p0, Lcom/google/glass/protobuf/ProtoListFile;->parser:Lcom/google/glass/protobuf/ProtoParser;

    .line 49
    iput p5, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    .line 50
    return-void
.end method

.method private readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 6
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 195
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 196
    new-instance v2, Ljava/io/IOException;

    const/16 v3, 0x23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid proto size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    iget v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    if-le v1, v2, :cond_1

    .line 199
    new-instance v2, Ljava/io/IOException;

    iget v3, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Proto too large to read: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_1
    new-array v0, v1, [B

    .line 202
    .local v0, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 203
    iget-object v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->parser:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v2, v0}, Lcom/google/glass/protobuf/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    return-object v2
.end method

.method private writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V
    .locals 6
    .param p2, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    .local p1, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    const/4 v5, 0x0

    .line 134
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 135
    .local v0, "serializedProto":[B
    array-length v1, v0

    iget v2, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    if-le v1, v2, :cond_0

    .line 136
    sget-object v1, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Proto too large to write: %d > %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->maxAllowedSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    array-length v1, v0

    invoke-virtual {p2, v0, v5, v1}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 208
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 211
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 215
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    return-void
.end method

.method public flushWrites()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    const/4 v7, 0x0

    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    const v7, 0x8000

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 110
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 114
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0, v5, v0}, Lcom/google/glass/protobuf/ProtoListFile;->writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    sget-object v5, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Saved %s proto(s) to disk."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 125
    sget-object v5, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 130
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :goto_1
    return-void

    .line 118
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v5, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not write protos."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 125
    sget-object v5, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 125
    sget-object v6, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v5

    .line 128
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    sget-object v5, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No protos to save to disk."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 147
    const/4 v3, 0x0

    .line 149
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 150
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v1, "dis":Ljava/io/DataInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    .line 156
    .local v4, "hasData":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 158
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/glass/protobuf/ProtoListFile;->readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/EOFException;
    const/4 v4, 0x0

    .line 163
    goto :goto_0

    .line 165
    .end local v2    # "e":Ljava/io/EOFException;
    :cond_0
    :try_start_2
    sget-object v6, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Read %s persisted protos."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 173
    :cond_1
    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    sget-object v6, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 182
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "hasData":Z
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v5

    .line 175
    :catch_1
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not read protos from disk; not necessarily an error."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    sget-object v6, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/google/glass/protobuf/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v6
.end method

.method public size(Z)J
    .locals 6
    .param p1, "includeQueue"    # Z

    .prologue
    .line 65
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 68
    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/protobuf/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 71
    .local v2, "size":J
    if-eqz p1, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 73
    iget-object v4, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v4}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-wide v2
.end method

.method public write(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/glass/protobuf/ProtoListFile;, "Lcom/google/glass/protobuf/ProtoListFile<TT;>;"
    .local p1, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 84
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

    .line 87
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method
