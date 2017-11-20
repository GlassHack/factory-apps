.class public final Lcom/google/glass/companion/Proto$TimelineItemResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItemResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/String;

.field private syncStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5432
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5433
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5460
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5433
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5574
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5568
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method


# virtual methods
.method public clearId()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5455
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5456
    return-object p0
.end method

.method public clearSyncStatus()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5473
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5474
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5475
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5480
    if-ne p1, p0, :cond_1

    .line 5485
    :cond_0
    :goto_0
    return v1

    .line 5481
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5482
    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 5483
    .local v0, "other":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 5485
    goto :goto_0

    .line 5483
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    .line 5485
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5440
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5510
    const/4 v0, 0x0

    .line 5511
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5512
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5513
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5515
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5516
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5517
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5519
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5520
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    .line 5521
    return v0
.end method

.method public getSyncStatus()I
    .locals 1

    .prologue
    .line 5462
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 5451
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncStatus()Z
    .locals 1

    .prologue
    .line 5470
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5489
    const/16 v0, 0x11

    .line 5490
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 5491
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    add-int v0, v1, v3

    .line 5492
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 5493
    return v0

    .line 5490
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 5492
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5530
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5534
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 5535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    .line 5538
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5540
    :sswitch_0
    return-object p0

    .line 5545
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5546
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 5550
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5551
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 5555
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5556
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 5558
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    goto :goto_0

    .line 5530
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 5429
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5443
    if-nez p1, :cond_0

    .line 5444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5446
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5447
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5448
    return-object p0
.end method

.method public setSyncStatus(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5465
    iput p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5466
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5467
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5498
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5499
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5501
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5502
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5504
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5506
    return-void
.end method
