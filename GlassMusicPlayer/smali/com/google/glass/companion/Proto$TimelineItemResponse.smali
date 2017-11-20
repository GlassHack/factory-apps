.class public final Lcom/google/glass/companion/Proto$TimelineItemResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


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
    .line 5284
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5285
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5312
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5285
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5426
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5420
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method


# virtual methods
.method public final clearId()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5307
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5308
    return-object p0
.end method

.method public final clearSyncStatus()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5325
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5326
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5327
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5332
    if-ne p1, p0, :cond_1

    .line 5337
    :cond_0
    :goto_0
    return v0

    .line 5333
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5334
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 5335
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5337
    goto :goto_0

    .line 5335
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    .line 5337
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5362
    const/4 v0, 0x0

    .line 5363
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5364
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5367
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5368
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5371
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5372
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    .line 5373
    return v0
.end method

.method public final getSyncStatus()I
    .locals 1

    .prologue
    .line 5314
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    return v0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 5303
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

.method public final hasSyncStatus()Z
    .locals 1

    .prologue
    .line 5322
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

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5341
    .line 5342
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 5343
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    add-int/2addr v0, v2

    .line 5344
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 5345
    return v0

    .line 5342
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5344
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 2

    .prologue
    .line 5381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5382
    sparse-switch v0, :sswitch_data_0

    .line 5386
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    .line 5390
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5392
    :sswitch_0
    return-object p0

    .line 5397
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5398
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 5402
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5403
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 5407
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5408
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 5410
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    goto :goto_0

    .line 5382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5281
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5295
    if-nez p1, :cond_0

    .line 5296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5298
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 5299
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5300
    return-object p0
.end method

.method public final setSyncStatus(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 5317
    iput p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    .line 5318
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 5319
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5350
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5351
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5353
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5354
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5356
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5358
    return-void
.end method
