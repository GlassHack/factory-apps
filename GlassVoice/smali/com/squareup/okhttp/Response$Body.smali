.class public abstract Lcom/squareup/okhttp/Response$Body;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Body"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bytes()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Body;->contentLength()J

    move-result-wide v1

    .line 127
    .local v1, "contentLength":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 128
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot buffer entire body for content length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    .line 132
    long-to-int v5, v1

    new-array v0, v5, [B

    .line 133
    .local v0, "content":[B
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 134
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    .line 135
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Content-Length and stream length disagree"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    .end local v0    # "content":[B
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/squareup/okhttp/internal/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 141
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    return-object v0
.end method

.method public charStream()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 120
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Body;->bytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
