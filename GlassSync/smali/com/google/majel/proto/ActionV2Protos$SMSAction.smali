.class public final Lcom/google/majel/proto/ActionV2Protos$SMSAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SMSAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SMSAction;


# instance fields
.field private bitField0_:I

.field private contactName_:Ljava/lang/String;

.field public messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

.field private messageBody_:Ljava/lang/String;

.field public recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4444
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4445
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clear()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 4446
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 2

    .prologue
    .line 4381
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-nez v0, :cond_1

    .line 4382
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4384
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-nez v0, :cond_0

    .line 4385
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 4387
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4389
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    return-object v0

    .line 4387
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4595
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4589
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 4449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    .line 4450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 4451
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactReference;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 4452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 4453
    invoke-static {}, Lcom/google/majel/proto/SpanProtos$Span;->emptyArray()[Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    .line 4454
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    .line 4455
    return-object p0
.end method

.method public clearContactName()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 4411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 4412
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    .line 4413
    return-object p0
.end method

.method public clearMessageBody()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 4436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 4437
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    .line 4438
    return-object p0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4422
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 4487
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 4488
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 4489
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4492
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4493
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4496
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 4497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 4498
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    aget-object v0, v3, v1

    .line 4499
    .local v0, "element":Lcom/google/majel/proto/SpanProtos$Span;
    if-eqz v0, :cond_2

    .line 4500
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4497
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4505
    .end local v0    # "element":Lcom/google/majel/proto/SpanProtos$Span;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 4506
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 4507
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    aget-object v0, v3, v1

    .line 4508
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v0, :cond_4

    .line 4509
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4506
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4514
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    .end local v1    # "i":I
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    .line 4515
    return v2
.end method

.method public hasContactName()Z
    .locals 1

    .prologue
    .line 4408
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessageBody()Z
    .locals 1

    .prologue
    .line 4433
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 4375
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4524
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4528
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4529
    :sswitch_0
    return-object p0

    .line 4534
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 4535
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    goto :goto_0

    .line 4539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 4540
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    goto :goto_0

    .line 4544
    :sswitch_3
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4546
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v5, :cond_2

    move v1, v4

    .line 4547
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/SpanProtos$Span;

    .line 4549
    .local v2, "newArray":[Lcom/google/majel/proto/SpanProtos$Span;
    if-eqz v1, :cond_1

    .line 4550
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4552
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4553
    new-instance v5, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    aput-object v5, v2, v1

    .line 4554
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4555
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4552
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4546
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/SpanProtos$Span;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    array-length v1, v5

    goto :goto_1

    .line 4558
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/SpanProtos$Span;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    aput-object v5, v2, v1

    .line 4559
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4560
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    goto :goto_0

    .line 4564
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_4
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4566
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v5, :cond_5

    move v1, v4

    .line 4567
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 4569
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v1, :cond_4

    .line 4570
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4572
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 4573
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    aput-object v5, v2, v1

    .line 4574
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4575
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4572
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4566
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v1, v5

    goto :goto_3

    .line 4578
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    aput-object v5, v2, v1

    .line 4579
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4580
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    goto/16 :goto_0

    .line 4524
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public setContactName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4400
    if-nez p1, :cond_0

    .line 4401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4403
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 4404
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    .line 4405
    return-object p0
.end method

.method public setMessageBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4425
    if-nez p1, :cond_0

    .line 4426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4428
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 4429
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    .line 4430
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
    .line 4461
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4462
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4464
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4465
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4467
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 4468
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 4469
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan:[Lcom/google/majel/proto/SpanProtos$Span;

    aget-object v0, v2, v1

    .line 4470
    .local v0, "element":Lcom/google/majel/proto/SpanProtos$Span;
    if-eqz v0, :cond_2

    .line 4471
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4468
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4475
    .end local v0    # "element":Lcom/google/majel/proto/SpanProtos$Span;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 4476
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 4477
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipientCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    aget-object v0, v2, v1

    .line 4478
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v0, :cond_4

    .line 4479
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4476
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4483
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
