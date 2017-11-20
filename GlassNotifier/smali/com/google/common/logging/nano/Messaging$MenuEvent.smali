.class public final Lcom/google/common/logging/nano/Messaging$MenuEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Messaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Messaging$MenuEvent$Result;,
        Lcom/google/common/logging/nano/Messaging$MenuEvent$MenuAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Messaging$MenuEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Messaging$MenuEvent;


# instance fields
.field private bitField0_:I

.field private location_:I

.field private menuAction_:I

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 431
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->clear()Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 432
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v0, :cond_1

    .line 359
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Messaging$MenuEvent;

    sput-object v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 364
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/Messaging$MenuEvent;

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging$MenuEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Messaging$MenuEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 435
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 436
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    .line 437
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    .line 438
    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 440
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->cachedSize:I

    .line 441
    return-object p0
.end method

.method public clearLocation()Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    .line 425
    return-object p0
.end method

.method public clearMenuAction()Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    .line 387
    return-object p0
.end method

.method public clearResult()Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    .line 406
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 501
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 502
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 503
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    .line 504
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    .line 508
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 511
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    .line 512
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 452
    check-cast v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;

    .line 453
    .local v0, "other":Lcom/google/common/logging/nano/Messaging$MenuEvent;
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    if-ne v3, v4, :cond_0

    .line 457
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    if-ne v3, v4, :cond_0

    .line 461
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    iget v4, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    if-ne v3, v4, :cond_0

    .line 465
    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 466
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    return v0
.end method

.method public getMenuAction()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMenuAction()Z
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

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
    .line 473
    const/16 v0, 0x11

    .line 474
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 475
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    add-int v0, v1, v2

    .line 476
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    add-int v0, v1, v2

    .line 477
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    add-int v0, v1, v2

    .line 478
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 479
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 480
    :goto_0
    add-int v0, v2, v1

    .line 481
    return v0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 523
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 527
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 528
    :sswitch_0
    return-object p0

    .line 533
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 534
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 535
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 548
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 549
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 544
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    .line 545
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    goto :goto_0

    .line 555
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 556
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 557
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 566
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 567
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 562
    :pswitch_1
    iput v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    .line 563
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    goto :goto_0

    .line 573
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 574
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 575
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    .line 584
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 585
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 580
    :pswitch_2
    iput v2, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    .line 581
    iget v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    goto :goto_0

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 557
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .line 332
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Messaging$MenuEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Messaging$MenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(I)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    .line 416
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 417
    return-object p0
.end method

.method public setMenuAction(I)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    .line 378
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 379
    return-object p0
.end method

.method public setResult(I)Lcom/google/common/logging/nano/Messaging$MenuEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 396
    iput p1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    .line 397
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    .line 398
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
    .line 487
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->menuAction_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 491
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->result_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 493
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 494
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/Messaging$MenuEvent;->location_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 496
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 497
    return-void
.end method
