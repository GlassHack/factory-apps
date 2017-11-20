.class final Lcom/google/glass/util/FileSaver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


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
.method public final getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final save(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 82
    const-wide/16 v3, 0x0

    .line 83
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {v0, p1}, Lcom/google/glass/util/FileSaver;->access$000(Ljava/io/File;Ljava/io/FileOutputStream;)J

    move-result-wide v0

    .line 103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/util/FileSaver;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/copySaver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Copied %s bytes to cache."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/glass/util/FileSaver$2;->val$fileToSave:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/high16 v0, 0x100000

    :try_start_1
    new-array v5, v0, [B

    move-wide v0, v3

    .line 90
    :goto_1
    const/4 v3, 0x0

    const/high16 v4, 0x100000

    invoke-virtual {v2, v5, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p1, v5, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 97
    :cond_2
    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 97
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
