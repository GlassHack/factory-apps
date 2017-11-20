.class final Lcom/google/common/io/ByteSource$SlicedByteSource;
.super Lcom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlicedByteSource"
.end annotation


# instance fields
.field final length:J

.field final offset:J

.field final synthetic this$0:Lcom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/ByteSource;JJ)V
    .locals 6
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 472
    iput-object p1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 473
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset (%s) may not be negative"

    invoke-static {v0, v3, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 474
    cmp-long v0, p4, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "length (%s) may not be negative"

    invoke-static {v1, v0, p4, p5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 475
    iput-wide p2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    .line 476
    iput-wide p4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 477
    return-void

    :cond_0
    move v0, v2

    .line 473
    goto :goto_0

    :cond_1
    move v1, v2

    .line 474
    goto :goto_1
.end method

.method private sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 493
    :try_start_0
    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {p1, v4, v5}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 504
    .local v2, "skipped":J
    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 506
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 507
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 510
    .end local v2    # "skipped":J
    :goto_0
    return-object v4

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 496
    .local v0, "closer":Lcom/google/common/io/Closer;
    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 498
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4

    .line 510
    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {p1, v4, v5}, Lcom/google/common/io/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/common/io/ByteSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openBufferedStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    iget-object v3, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v3}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 529
    .local v2, "optionalUnslicedSize":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 531
    .local v4, "unslicedSize":J
    iget-wide v6, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 532
    .local v0, "off":J
    iget-wide v6, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long v8, v4, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 534
    .end local v0    # "off":J
    .end local v4    # "unslicedSize":J
    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_0
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 9
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 515
    cmp-long v2, p1, v6

    if-ltz v2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v2, v5, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 516
    cmp-long v2, p3, v6

    if-ltz v2, :cond_1

    :goto_1
    const-string v2, "length (%s) may not be negative"

    invoke-static {v3, v2, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 517
    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long v0, v2, p1

    .line 518
    .local v0, "maxLength":J
    iget-object v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    add-long/2addr v4, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/common/io/ByteSource;->slice(JJ)Lcom/google/common/io/ByteSource;

    move-result-object v2

    return-object v2

    .end local v0    # "maxLength":J
    :cond_0
    move v2, v4

    .line 515
    goto :goto_0

    :cond_1
    move v3, v4

    .line 516
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    iget-wide v4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".slice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
