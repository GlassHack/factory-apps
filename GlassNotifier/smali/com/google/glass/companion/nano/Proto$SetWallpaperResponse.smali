.class public final Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWallpaperResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse$Update;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private update_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10445
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10446
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->clear()Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 10447
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 2

    .prologue
    .line 10392
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v0, :cond_1

    .line 10393
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10395
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v0, :cond_0

    .line 10396
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 10398
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10400
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    return-object v0

    .line 10398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10569
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10563
    new-instance v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10450
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    .line 10451
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    .line 10452
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    .line 10453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10454
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->cachedSize:I

    .line 10455
    return-object p0
.end method

.method public clearId()Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 10414
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    .line 10415
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    .line 10416
    return-object p0
.end method

.method public clearUpdate()Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 10438
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    .line 10439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    .line 10440
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 10507
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10508
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10509
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    .line 10510
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10512
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10513
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    .line 10514
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10516
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10460
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 10478
    :cond_0
    :goto_0
    return v1

    .line 10463
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 10466
    check-cast v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 10467
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    if-ne v3, v4, :cond_0

    .line 10471
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    if-ne v3, v4, :cond_0

    .line 10475
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10476
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 10478
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 10408
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    return v0
.end method

.method public getUpdate()I
    .locals 1

    .prologue
    .line 10427
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 10411
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdate()Z
    .locals 1

    .prologue
    .line 10435
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

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
    .locals 3

    .prologue
    .line 10483
    const/16 v0, 0x11

    .line 10484
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 10485
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    add-int v0, v1, v2

    .line 10486
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    add-int v0, v1, v2

    .line 10487
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10488
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 10489
    :goto_0
    add-int v0, v2, v1

    .line 10490
    return v0

    .line 10489
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 10525
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 10529
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10530
    :sswitch_0
    return-object p0

    .line 10535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    .line 10536
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 10540
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 10541
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 10542
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 10551
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10552
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 10547
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    .line 10548
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 10525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 10542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    .line 10378
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10419
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    .line 10420
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    .line 10421
    return-object p0
.end method

.method public setUpdate(I)Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10430
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    .line 10431
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    .line 10432
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
    .line 10496
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10497
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10499
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10500
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->update_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10502
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10503
    return-void
.end method
