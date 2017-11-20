.class public final Lcom/google/wireless/android/nova/Common$Image;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/nova/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/android/nova/Common$Image;


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/String;

.field private secureUrl_:Ljava/lang/String;

.field private urlSupportsFife_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 481
    invoke-virtual {p0}, Lcom/google/wireless/android/nova/Common$Image;->clear()Lcom/google/wireless/android/nova/Common$Image;

    .line 482
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/nova/Common$Image;
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/google/wireless/android/nova/Common$Image;->_emptyArray:[Lcom/google/wireless/android/nova/Common$Image;

    if-nez v0, :cond_1

    .line 405
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    sget-object v0, Lcom/google/wireless/android/nova/Common$Image;->_emptyArray:[Lcom/google/wireless/android/nova/Common$Image;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/nova/Common$Image;

    sput-object v0, Lcom/google/wireless/android/nova/Common$Image;->_emptyArray:[Lcom/google/wireless/android/nova/Common$Image;

    .line 410
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    sget-object v0, Lcom/google/wireless/android/nova/Common$Image;->_emptyArray:[Lcom/google/wireless/android/nova/Common$Image;

    return-object v0

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$Image;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lcom/google/wireless/android/nova/Common$Image;

    invoke-direct {v0}, Lcom/google/wireless/android/nova/Common$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/nova/Common$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/nova/Common$Image;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Lcom/google/wireless/android/nova/Common$Image;

    invoke-direct {v0}, Lcom/google/wireless/android/nova/Common$Image;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/nova/Common$Image;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/android/nova/Common$Image;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    iput v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    .line 488
    iput-boolean v1, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->cachedSize:I

    .line 490
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/wireless/android/nova/Common$Image;
    .locals 1

    .prologue
    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    .line 435
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 436
    return-object p0
.end method

.method public clearSecureUrl()Lcom/google/wireless/android/nova/Common$Image;
    .locals 1

    .prologue
    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    .line 457
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 458
    return-object p0
.end method

.method public clearUrlSupportsFife()Lcom/google/wireless/android/nova/Common$Image;
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    .line 476
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 477
    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 510
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_0
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 515
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 518
    :cond_1
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 519
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 522
    :cond_2
    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->cachedSize:I

    .line 523
    return v0
.end method

.method public getUrlSupportsFife()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecureUrl()Z
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlSupportsFife()Z
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/nova/Common$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$Image;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$Image;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 532
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 536
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    :sswitch_0
    return-object p0

    .line 542
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    .line 543
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    goto :goto_0

    .line 547
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    .line 548
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    goto :goto_0

    .line 552
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    .line 553
    iget v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$Image;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    .line 427
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 428
    return-object p0
.end method

.method public setSecureUrl(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$Image;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 448
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    .line 449
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 450
    return-object p0
.end method

.method public setUrlSupportsFife(Z)Lcom/google/wireless/android/nova/Common$Image;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    .line 468
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    .line 469
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$Image;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 499
    :cond_0
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 500
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$Image;->secureUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 502
    :cond_1
    iget v0, p0, Lcom/google/wireless/android/nova/Common$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 503
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/android/nova/Common$Image;->urlSupportsFife_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 505
    :cond_2
    return-void
.end method
