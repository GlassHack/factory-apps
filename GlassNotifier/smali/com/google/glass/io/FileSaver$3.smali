.class final Lcom/google/glass/io/FileSaver$3;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/google/glass/io/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/io/FileSaver;->newSaver(Ljava/io/InputStream;)Lcom/google/glass/io/FileSaver$Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$streamToSave:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/io/FileSaver$3;->val$streamToSave:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x100000

    const/4 v8, 0x0

    .line 136
    const-wide/16 v2, 0x0

    .line 137
    .local v2, "bytesCopied":J
    new-array v0, v6, [B

    .line 138
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 140
    .local v1, "bytesRead":I
    :goto_0
    iget-object v4, p0, Lcom/google/glass/io/FileSaver$3;->val$streamToSave:Ljava/io/InputStream;

    invoke-virtual {v4, v0, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 141
    invoke-virtual {p1, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/google/glass/io/FileSaver;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/streamSaver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Copied %s bytes to cache."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method
