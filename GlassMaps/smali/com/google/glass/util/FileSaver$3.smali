.class final Lcom/google/glass/util/FileSaver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# instance fields
.field final synthetic val$streamToSave:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/util/FileSaver$3;->val$streamToSave:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final save(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    const/high16 v6, 0x100000

    const/4 v5, 0x0

    .line 136
    const-wide/16 v0, 0x0

    .line 137
    new-array v2, v6, [B

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/google/glass/util/FileSaver$3;->val$streamToSave:Ljava/io/InputStream;

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 141
    invoke-virtual {p1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/google/glass/util/FileSaver;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/streamSaver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Copied %s bytes to cache."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method
