.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;


# instance fields
.field private bitField0_:I

.field public deleteFailedItemIds:[Ljava/lang/String;

.field public insertFailedItemIds:[Ljava/lang/String;

.field public responseCode:I

.field private selectContinuationToken_:[B

.field private selectMaxWriteTimestamp_:J

.field private selectStartTime_:J

.field public selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private syncContinuationToken_:[B

.field private syncEndTime_:J

.field private syncStartTime_:J

.field public updateFailedItemIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 257
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    .line 269
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 272
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 278
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 281
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    .line 300
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    .line 319
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 341
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    .line 360
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 382
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    .line 257
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 713
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 707
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    return-object v0
.end method


# virtual methods
.method public final clearSelectContinuationToken()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 377
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 378
    return-object p0
.end method

.method public final clearSelectMaxWriteTimestamp()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 2

    .prologue
    .line 395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    .line 396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 397
    return-object p0
.end method

.method public final clearSelectStartTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 2

    .prologue
    .line 354
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    .line 355
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 356
    return-object p0
.end method

.method public final clearSyncContinuationToken()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 337
    return-object p0
.end method

.method public final clearSyncEndTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 2

    .prologue
    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    .line 314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 315
    return-object p0
.end method

.method public final clearSyncStartTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 2

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    .line 295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 296
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 402
    if-ne p1, p0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 404
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    .line 405
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 406
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 407
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 408
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 409
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 412
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 414
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 416
    goto :goto_0

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 416
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSelectContinuationToken()[B
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    return-object v0
.end method

.method public final getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public final getSelectStartTime()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 515
    .line 516
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    .line 517
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 518
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_1

    .line 519
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 520
    if-eqz v5, :cond_0

    .line 521
    const/4 v6, 0x2

    .line 522
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 528
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 530
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    :cond_2
    add-int/2addr v0, v3

    .line 533
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 535
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 537
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 539
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 541
    :cond_4
    add-int/2addr v0, v3

    .line 542
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 544
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 546
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 548
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 550
    :cond_6
    add-int/2addr v0, v2

    .line 551
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 553
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 554
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    .line 555
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 558
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    .line 559
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 562
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 563
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    .line 566
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    .line 567
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    .line 570
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 571
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    .line 574
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    .line 575
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->cachedSize:I

    .line 579
    return v0
.end method

.method public final getSyncContinuationToken()[B
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    return-object v0
.end method

.method public final getSyncEndTime()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    return-wide v0
.end method

.method public final getSyncStartTime()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    return-wide v0
.end method

.method public final hasSelectContinuationToken()Z
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSelectMaxWriteTimestamp()Z
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSelectStartTime()Z
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSyncContinuationToken()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSyncEndTime()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSyncStartTime()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 420
    .line 421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    add-int/lit16 v0, v0, 0x20f

    .line 422
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    mul-int/lit8 v2, v0, 0x1f

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-nez v0, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-nez v0, :cond_a

    mul-int/lit8 v2, v2, 0x1f

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-nez v0, :cond_c

    mul-int/lit8 v2, v2, 0x1f

    .line 446
    :cond_3
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 447
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 448
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    if-nez v2, :cond_e

    mul-int/lit8 v2, v0, 0x1f

    .line 454
    :cond_4
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 455
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    if-nez v2, :cond_f

    mul-int/lit8 v2, v0, 0x1f

    .line 461
    :cond_5
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 462
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_10

    :goto_0
    add-int/2addr v0, v1

    .line 463
    return v0

    :cond_6
    move v2, v0

    move v0, v1

    .line 424
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 425
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v1

    :goto_2
    add-int/2addr v2, v3

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_8
    move v0, v1

    .line 430
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 431
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v1

    :goto_4
    add-int/2addr v2, v3

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 431
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_a
    move v0, v1

    .line 436
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 437
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v1

    :goto_6
    add-int/2addr v2, v3

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 437
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_c
    move v0, v1

    .line 442
    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 443
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v1

    :goto_8
    add-int/2addr v2, v3

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 443
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_e
    move v2, v0

    move v0, v1

    .line 450
    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 451
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    move v2, v0

    move v0, v1

    .line 457
    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 458
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 462
    :cond_10
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 588
    sparse-switch v0, :sswitch_data_0

    .line 592
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 596
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :sswitch_0
    return-object p0

    .line 603
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 604
    if-nez v0, :cond_2

    .line 605
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    goto :goto_0

    .line 607
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    goto :goto_0

    .line 612
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 613
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_4

    move v0, v1

    .line 614
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 615
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_3

    .line 616
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 619
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 620
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    .line 621
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 622
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v0, v0

    goto :goto_1

    .line 625
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    .line 626
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 630
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 631
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v0, v0

    .line 632
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 633
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 635
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    .line 636
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 637
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 640
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 644
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 645
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v0, v0

    .line 646
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 647
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 649
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_7

    .line 650
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 651
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 654
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 658
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 659
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v0, v0

    .line 660
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 661
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 663
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    .line 664
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 665
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 668
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 672
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    .line 673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 677
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    .line 678
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 682
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 683
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 687
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    .line 688
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 692
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 697
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    .line 698
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setSelectContinuationToken([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    .line 369
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 370
    return-object p0
.end method

.method public final setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    .line 388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public final setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 346
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 348
    return-object p0
.end method

.method public final setSyncContinuationToken([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    .line 328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 329
    return-object p0
.end method

.method public final setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    .line 306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 307
    return-object p0
.end method

.method public final setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;
    .locals 1

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    .line 287
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    .line 288
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 468
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->responseCode:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 469
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_1

    .line 470
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 471
    if-eqz v4, :cond_0

    .line 472
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 477
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 478
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 482
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 483
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 486
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 487
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 488
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 491
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 492
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncStartTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 494
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 495
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncEndTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 497
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 498
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->syncContinuationToken_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 500
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 501
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectStartTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 503
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 504
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectContinuationToken_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 506
    :cond_9
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 507
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->selectMaxWriteTimestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 509
    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 511
    return-void
.end method
