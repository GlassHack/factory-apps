.class Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;
.super Lcom/squareup/okhttp/internal/http/AbstractHttpInputStream;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedLengthInputStream"
.end annotation


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p1, p3, p2}, Lcom/squareup/okhttp/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 378
    iput p4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 379
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    .line 382
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 405
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v0, p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;->access$200(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 415
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 385
    array-length v2, p1

    invoke-static {v2, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 386
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 387
    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v2, :cond_1

    move v0, v1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 391
    .local v0, "read":I
    if-ne v0, v1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 393
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_2
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 396
    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->cacheWrite([BII)V

    .line 397
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    goto :goto_0
.end method
