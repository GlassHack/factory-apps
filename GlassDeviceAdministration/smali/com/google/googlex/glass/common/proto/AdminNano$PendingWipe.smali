.class public final Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AdminNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AdminNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingWipe"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private retryCount_:I

.field private timestamp_:J

.field private wipeExternalStorage_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 353
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    .line 372
    iput v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    .line 307
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1

    .prologue
    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 349
    return-object p0
.end method

.method public clearRetryCount()Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    .line 386
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 387
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 2

    .prologue
    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    .line 326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 327
    return-object p0
.end method

.method public clearWipeExternalStorage()Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    .line 367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 368
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    if-ne p1, p0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 393
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 394
    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    .line 395
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 396
    :goto_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 399
    goto :goto_0

    .line 395
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    .line 399
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    .line 435
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 438
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 439
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 442
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    .line 443
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 446
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    .line 447
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->cachedSize:I

    .line 451
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    return-wide v0
.end method

.method public getWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRetryCount()Z
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

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
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 403
    const/16 v0, 0x11

    .line 404
    .local v0, "result":I
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit16 v0, v1, 0x20f

    .line 405
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 406
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v3, v1

    .line 407
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    add-int v0, v1, v3

    .line 408
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 409
    return v0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 460
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 464
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    :sswitch_0
    return-object p0

    .line 475
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    .line 476
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    goto :goto_0

    .line 480
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 481
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    goto :goto_0

    .line 485
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    .line 486
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    goto :goto_0

    .line 490
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    .line 491
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    goto :goto_0

    .line 460
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 303
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    .line 340
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 341
    return-object p0
.end method

.method public setRetryCount(I)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    .line 378
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 379
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 317
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    .line 318
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 319
    return-object p0
.end method

.method public setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    .line 359
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    .line 360
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 417
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 420
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->wipeExternalStorage_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 423
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 424
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->retryCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$PendingWipe;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 428
    return-void
.end method
