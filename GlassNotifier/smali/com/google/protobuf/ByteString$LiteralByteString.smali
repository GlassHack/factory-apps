.class Lcom/google/protobuf/ByteString$LiteralByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1257
    iput-object p1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1258
    return-void
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asReadOnlyByteBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1302
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1297
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1355
    if-ne p1, p0, :cond_0

    move v3, v4

    .line 1382
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v3

    .line 1358
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Lcom/google/protobuf/ByteString;

    if-nez v3, :cond_1

    move v3, v5

    .line 1359
    goto :goto_0

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v6

    move-object v3, p1

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v6, v3, :cond_2

    move v3, v5

    .line 1363
    goto :goto_0

    .line 1365
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 1366
    goto :goto_0

    .line 1369
    :cond_3
    instance-of v3, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 1370
    check-cast v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 1373
    .local v0, "otherAsLiteral":Lcom/google/protobuf/ByteString$LiteralByteString;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v2

    .line 1374
    .local v2, "thisHash":I
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v1

    .line 1375
    .local v1, "thatHash":I
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eq v2, v1, :cond_4

    move v3, v5

    .line 1376
    goto :goto_0

    .line 1379
    :cond_4
    check-cast p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v3

    goto :goto_0

    .line 1382
    .end local v0    # "otherAsLiteral":Lcom/google/protobuf/ByteString$LiteralByteString;
    .end local v1    # "thatHash":I
    .end local v2    # "thisHash":I
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method final equalsRange(Lcom/google/protobuf/ByteString;II)Z
    .locals 10
    .param p1, "other"    # Lcom/google/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 1397
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-le p3, v7, :cond_0

    .line 1398
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v7

    const/16 v8, 0x28

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Length too large: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1400
    :cond_0
    add-int v7, p2, p3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 1401
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 1402
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    const/16 v8, 0x3b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Ran off end of other: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1405
    :cond_1
    instance-of v7, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 1406
    check-cast v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 1407
    .local v0, "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    iget-object v3, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1408
    .local v3, "thisBytes":[B
    iget-object v1, v0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1409
    .local v1, "otherBytes":[B
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v7

    add-int v5, v7, p3

    .line 1411
    .local v5, "thisLimit":I
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v4

    .line 1412
    .local v4, "thisIndex":I
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v7

    add-int v2, v7, p2

    .line 1413
    .local v2, "otherIndex":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1414
    aget-byte v7, v3, v4

    aget-byte v8, v1, v2

    if-eq v7, v8, :cond_2

    .line 1421
    .end local v0    # "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    .end local v1    # "otherBytes":[B
    .end local v2    # "otherIndex":I
    .end local v3    # "thisBytes":[B
    .end local v4    # "thisIndex":I
    .end local v5    # "thisLimit":I
    :goto_1
    return v6

    .line 1413
    .restart local v0    # "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    .restart local v1    # "otherBytes":[B
    .restart local v2    # "otherIndex":I
    .restart local v3    # "thisBytes":[B
    .restart local v4    # "thisIndex":I
    .restart local v5    # "thisLimit":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 1421
    .end local v0    # "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    .end local v1    # "otherBytes":[B
    .end local v2    # "otherIndex":I
    .end local v3    # "thisBytes":[B
    .end local v4    # "thisIndex":I
    .end local v5    # "thisLimit":I
    :cond_4
    add-int v7, p2, p3

    invoke-virtual {p1, p2, v7}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {p0, v6, p3}, Lcom/google/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1
.end method

.method protected getOffsetIntoBytes()I
    .locals 1

    .prologue
    .line 1454
    const/4 v0, 0x0

    return v0
.end method

.method public final isValidUtf8()Z
    .locals 3

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1341
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    return v1
.end method

.method public final newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 4

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1442
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    const/4 v3, 0x1

    .line 1441
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final newInput()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 1434
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected final partialHash(III)I
    .locals 2
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    return v0
.end method

.method protected final partialIsValidUtf8(III)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int v0, v1, p2

    .line 1347
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final substring(II)Lcom/google/protobuf/ByteString;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/protobuf/ByteString$LiteralByteString;->checkRange(III)I

    move-result v0

    .line 1280
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 1281
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 1284
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/protobuf/ByteString$BoundedByteString;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    goto :goto_0
.end method

.method protected final toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 1332
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final writeTo(Lcom/google/protobuf/ByteOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/ByteOutput;->writeLazy([BII)V

    .line 1328
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1317
    return-void
.end method

.method final writeToInternal(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1323
    return-void
.end method
