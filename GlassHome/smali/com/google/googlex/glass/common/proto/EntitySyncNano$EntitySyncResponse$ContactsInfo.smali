.class public final Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EntitySyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;


# instance fields
.field private bitField0_:I

.field public contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public deletedEntityId:[Ljava/lang/String;

.field private peopleApiNextSyncToken_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 367
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    .line 362
    return-void
.end method


# virtual methods
.method public clearPeopleApiNextSyncToken()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 1

    .prologue
    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 387
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    .line 388
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    if-ne p1, p0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 397
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 398
    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    .line 399
    .local v0, "other":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 400
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    .line 401
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 402
    goto :goto_0

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 401
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    .line 402
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getPeopleApiNextSyncToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, "size":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_1

    .line 449
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 450
    .local v1, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v1, :cond_0

    .line 451
    const/4 v7, 0x1

    .line 452
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 449
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 457
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 458
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 464
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v2, v0

    .line 467
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 469
    .end local v0    # "dataSize":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 470
    iput v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->cachedSize:I

    .line 471
    return v2
.end method

.method public hasPeopleApiNextSyncToken()Z
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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

    .line 406
    const/16 v1, 0x11

    .line 407
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 413
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 414
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 420
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_7

    :goto_1
    add-int v1, v2, v3

    .line 421
    return v1

    .line 409
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 410
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_3

    .line 413
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 416
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 417
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 417
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 420
    .end local v0    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 480
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 484
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    .line 488
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    :sswitch_0
    return-object p0

    .line 495
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 496
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v5, :cond_3

    move v1, v4

    .line 497
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 498
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_2

    .line 499
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 502
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 503
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 504
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 505
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 496
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v5

    goto :goto_1

    .line 508
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 509
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 513
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 514
    iget v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    goto :goto_0

    .line 518
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 519
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v1, v5

    .line 520
    .restart local v1    # "i":I
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 521
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    .line 523
    :goto_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 524
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 528
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 358
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    return-object v0
.end method

.method public setPeopleApiNextSyncToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    .line 379
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_1

    .line 427
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 428
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 429
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 427
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 434
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->peopleApiNextSyncToken_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 438
    .local v0, "element":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 441
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 443
    return-void
.end method
