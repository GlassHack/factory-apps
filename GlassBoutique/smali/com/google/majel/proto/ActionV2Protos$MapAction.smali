.class public final Lcom/google/majel/proto/ActionV2Protos$MapAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MapAction;


# instance fields
.field private bitField0_:I

.field public location:[Lcom/google/majel/proto/ActionV2Protos$Location;

.field private previewImageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3484
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3485
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->clear()Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 3486
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 2

    .prologue
    .line 3446
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-nez v0, :cond_1

    .line 3447
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3449
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MapAction;

    if-nez v0, :cond_0

    .line 3450
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MapAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MapAction;

    .line 3452
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3454
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MapAction;

    return-object v0

    .line 3452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3584
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3578
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MapAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MapAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1

    .prologue
    .line 3489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    .line 3490
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$Location;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 3492
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    .line 3493
    return-object p0
.end method

.method public clearPreviewImageUrl()Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1

    .prologue
    .line 3479
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 3480
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    .line 3481
    return-object p0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3514
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3515
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 3516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3517
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    aget-object v0, v3, v1

    .line 3518
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$Location;
    if-eqz v0, :cond_0

    .line 3519
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3516
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3524
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$Location;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 3525
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3528
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->cachedSize:I

    .line 3529
    return v2
.end method

.method public hasPreviewImageUrl()Z
    .locals 1

    .prologue
    .line 3476
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 3440
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MapAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MapAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3538
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3542
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3543
    :sswitch_0
    return-object p0

    .line 3548
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3550
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v5, :cond_2

    move v1, v4

    .line 3551
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 3553
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$Location;
    if-eqz v1, :cond_1

    .line 3554
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3556
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3557
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    aput-object v5, v2, v1

    .line 3558
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3559
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3556
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3550
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v1, v5

    goto :goto_1

    .line 3562
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    aput-object v5, v2, v1

    .line 3563
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3564
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_0

    .line 3568
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 3569
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    goto :goto_0

    .line 3538
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MapAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3468
    if-nez p1, :cond_0

    .line 3469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3471
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    .line 3472
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    .line 3473
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
    .line 3499
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 3500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3501
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->location:[Lcom/google/majel/proto/ActionV2Protos$Location;

    aget-object v0, v2, v1

    .line 3502
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$Location;
    if-eqz v0, :cond_0

    .line 3503
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3500
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3507
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$Location;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 3508
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MapAction;->previewImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3510
    :cond_2
    return-void
.end method
