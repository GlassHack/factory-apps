.class final Lcom/google/glass/util/FileSaver$2;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileToSave:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 82
    const-wide/16 v1, 0x0

    .line 83
    .local v1, "bytesCopied":J
    instance-of v6, p1, Ljava/io/FileOutputStream;

    if-eqz v6, :cond_1

    .line 84
    iget-object v6, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    check-cast p1, Ljava/io/FileOutputStream;

    .end local p1    # "os":Ljava/io/OutputStream;
    invoke-static {v6, p1}, Lcom/google/glass/util/FileSaver;->access$000(Ljava/io/File;Ljava/io/FileOutputStream;)J

    move-result-wide v1

    .line 103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/util/FileSaver;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/copySaver"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Copied %s bytes to cache."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void

    .line 86
    .restart local p1    # "os":Ljava/io/OutputStream;
    :cond_1
    const/4 v4, 0x0

    .line 88
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/high16 v6, 0x100000

    :try_start_1
    new-array v0, v6, [B

    .line 90
    .local v0, "buffer":[B
    const/4 v3, -0x1

    .line 92
    .local v3, "bytesRead":I
    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x100000

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 93
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    int-to-long v6, v3

    add-long/2addr v1, v6

    goto :goto_1

    .line 97
    :cond_2
    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 97
    .end local v0    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    .line 98
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v6

    .line 97
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method
