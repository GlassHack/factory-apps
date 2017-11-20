.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Meaning"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;


# instance fields
.field private bitField0_:I

.field public example:[Ljava/lang/String;

.field private text_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6457
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6458
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 6459
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 2

    .prologue
    .line 6397
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    if-nez v0, :cond_1

    .line 6398
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6400
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    if-nez v0, :cond_0

    .line 6401
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 6403
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6405
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    return-object v0

    .line 6403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6572
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6566
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 6462
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    .line 6463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 6464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 6465
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    .line 6466
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    .line 6467
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 6427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 6428
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    .line 6429
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 6449
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 6450
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    .line 6451
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 6491
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 6492
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6493
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6496
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 6497
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6500
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 6501
    const/4 v0, 0x0

    .line 6502
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 6503
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 6504
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 6505
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 6506
    add-int/lit8 v0, v0, 0x1

    .line 6507
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 6503
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6511
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 6512
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 6514
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    .line 6515
    return v4
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6413
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6435
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 6424
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 6446
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6391
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6524
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6528
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6529
    :sswitch_0
    return-object p0

    .line 6534
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 6535
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    goto :goto_0

    .line 6539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 6540
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    goto :goto_0

    .line 6544
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6546
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 6547
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 6548
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6549
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6551
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6552
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 6553
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6551
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6546
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 6556
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 6557
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    goto :goto_0

    .line 6524
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6416
    if-nez p1, :cond_0

    .line 6417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6419
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 6420
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    .line 6421
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6438
    if-nez p1, :cond_0

    .line 6439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6441
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 6442
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    .line 6443
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6473
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6474
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6476
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 6477
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6479
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 6480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 6481
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 6482
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 6483
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6480
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6487
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
