.class public final Lcom/google/glass/companion/nano/Proto$ApiRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$ApiRequest$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$ApiRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiRequest;


# instance fields
.field public attachmentContent:[[B

.field private bitField0_:I

.field private projectId_:Ljava/lang/String;

.field public timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

.field private token_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6368
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6369
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->clear()Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 6370
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 2

    .prologue
    .line 6284
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v0, :cond_1

    .line 6285
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6287
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v0, :cond_0

    .line 6288
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$ApiRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 6290
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6292
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiRequest;

    return-object v0

    .line 6290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6580
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ApiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6574
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ApiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6373
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6376
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    .line 6377
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6378
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    .line 6379
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6380
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->cachedSize:I

    .line 6381
    return-object p0
.end method

.method public clearProjectId()Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 6306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6307
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6308
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 6328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6329
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6330
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 6355
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6356
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    .line 6357
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 6469
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 6470
    .local v4, "size":I
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6471
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6472
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6474
    :cond_0
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 6475
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6476
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6478
    :cond_1
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 6479
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    .line 6480
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6482
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v5, :cond_3

    .line 6483
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6484
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6486
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v5

    if-lez v5, :cond_6

    .line 6487
    const/4 v0, 0x0

    .line 6488
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 6489
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 6490
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v2, v5, v3

    .line 6491
    .local v2, "element":[B
    if-eqz v2, :cond_4

    .line 6492
    add-int/lit8 v0, v0, 0x1

    .line 6494
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v1, v5

    .line 6489
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6497
    .end local v2    # "element":[B
    :cond_5
    add-int/2addr v4, v1

    .line 6498
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 6500
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6386
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 6421
    :cond_0
    :goto_0
    return v1

    .line 6389
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 6392
    check-cast v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 6393
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$ApiRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6394
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6397
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6398
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6401
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    if-ne v3, v4, :cond_0

    .line 6405
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_5

    .line 6406
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_0

    .line 6414
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([[B[[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6418
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6419
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 6410
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6421
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6300
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6344
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    return v0
.end method

.method public hasProjectId()Z
    .locals 1

    .prologue
    .line 6303
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 6325
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6352
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 6426
    const/16 v0, 0x11

    .line 6427
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 6428
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 6429
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 6430
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    add-int v0, v1, v3

    .line 6431
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v1, :cond_1

    move v1, v2

    .line 6432
    :goto_0
    add-int v0, v3, v1

    .line 6433
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    .line 6434
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([[B)I

    move-result v3

    add-int v0, v1, v3

    .line 6435
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6436
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6437
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 6438
    return v0

    .line 6432
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hashCode()I

    move-result v1

    goto :goto_0

    .line 6437
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 6508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 6509
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 6513
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6514
    :sswitch_0
    return-object p0

    .line 6519
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6520
    iget v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 6524
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6525
    iget v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 6529
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6530
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6531
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 6538
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6539
    invoke-virtual {p0, p1, v4}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 6534
    :pswitch_0
    iput v5, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    .line 6535
    iget v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 6545
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_4
    iget-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v7, :cond_1

    .line 6546
    new-instance v7, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    iput-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6548
    :cond_1
    iget-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6552
    :sswitch_5
    const/16 v7, 0x2a

    .line 6553
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6554
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    if-nez v7, :cond_3

    move v1, v6

    .line 6555
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [[B

    .line 6556
    .local v3, "newArray":[[B
    if-eqz v1, :cond_2

    .line 6557
    iget-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6559
    :cond_2
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_4

    .line 6560
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v7

    aput-object v7, v3, v1

    .line 6561
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6559
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6554
    .end local v1    # "i":I
    .end local v3    # "newArray":[[B
    :cond_3
    iget-object v7, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    array-length v1, v7

    goto :goto_1

    .line 6564
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[[B
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v7

    aput-object v7, v3, v1

    .line 6565
    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    goto/16 :goto_0

    .line 6509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 6531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6272
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6311
    if-nez p1, :cond_0

    .line 6312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6314
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 6315
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6316
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6333
    if-nez p1, :cond_0

    .line 6334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6336
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 6337
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6338
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/companion/nano/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6347
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    .line 6348
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    .line 6349
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6444
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6445
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6447
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 6448
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6450
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 6451
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->type_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6453
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v2, :cond_3

    .line 6454
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6456
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    array-length v2, v2

    if-lez v2, :cond_5

    .line 6457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 6458
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v0, v2, v1

    .line 6459
    .local v0, "element":[B
    if-eqz v0, :cond_4

    .line 6460
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6457
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6464
    .end local v0    # "element":[B
    .end local v1    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6465
    return-void
.end method
