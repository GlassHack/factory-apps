.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;


# instance fields
.field private header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

.field public request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 482
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 460
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-object v0
.end method


# virtual methods
.method public clearHeader()Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 479
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    if-ne p1, p0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v1

    .line 487
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 488
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    .line 489
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 490
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 491
    goto :goto_0

    .line 489
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 490
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    .line 491
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getHeader()Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v2, :cond_0

    .line 527
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 528
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v2, :cond_2

    .line 531
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 532
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    if-eqz v0, :cond_1

    .line 533
    const/4 v5, 0x2

    .line 534
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 531
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 539
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    .line 540
    return v1
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 495
    const/16 v1, 0x11

    .line 496
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 497
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 503
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 504
    return v1

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->hashCode()I

    move-result v2

    goto :goto_0

    .line 499
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 500
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 500
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->hashCode()I

    move-result v2

    goto :goto_3

    .line 503
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 549
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 553
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    .line 557
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 559
    :sswitch_0
    return-object p0

    .line 564
    :sswitch_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v5, :cond_2

    .line 565
    new-instance v5, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 567
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 571
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 572
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v5, :cond_4

    move v1, v4

    .line 573
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 574
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v5, :cond_3

    .line 575
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 578
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 579
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 580
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 581
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 572
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v1, v5

    goto :goto_1

    .line 584
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 585
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 472
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v1, :cond_2

    .line 513
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 514
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    if-eqz v0, :cond_1

    .line 515
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 513
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 521
    return-void
.end method
