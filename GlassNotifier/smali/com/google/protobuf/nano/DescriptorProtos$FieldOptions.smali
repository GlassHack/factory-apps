.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;


# instance fields
.field public ctype:I

.field public deprecated:Z

.field public deprecatedRawMessage:Z

.field public enforceUtf8:Z

.field public jstype:I

.field public lazy:Z

.field public packed:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

.field public upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

.field public weak:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3459
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3460
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 3461
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    .prologue
    .line 3416
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_1

    .line 3417
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3419
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    .line 3420
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 3422
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3424
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object v0

    .line 3422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3704
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3698
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3464
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    .line 3465
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    .line 3466
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    .line 3467
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    .line 3468
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    .line 3469
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    .line 3470
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3471
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    .line 3472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    .line 3473
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3475
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->cachedSize:I

    .line 3476
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3527
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3528
    .local v2, "size":I
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    if-eqz v3, :cond_0

    .line 3529
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    .line 3530
    invoke-static {v5, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3532
    :cond_0
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v3, :cond_1

    .line 3533
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    .line 3534
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3536
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v3, :cond_2

    .line 3537
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    .line 3538
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3540
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v3, :cond_3

    .line 3541
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    .line 3542
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3544
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v3, :cond_4

    .line 3545
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    .line 3546
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3548
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v3, :cond_5

    .line 3549
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    .line 3550
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3552
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 3553
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 3554
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    aget-object v0, v3, v1

    .line 3555
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v0, :cond_6

    .line 3556
    const/16 v3, 0xb

    .line 3557
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3553
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3561
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .end local v1    # "i":I
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v3, :cond_8

    .line 3562
    const/16 v3, 0xc

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    .line 3563
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3565
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v3, v5, :cond_9

    .line 3566
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    .line 3567
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3569
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 3570
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 3571
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 3572
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 3573
    const/16 v3, 0x3e7

    .line 3574
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3570
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3578
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 3587
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 3591
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3592
    :sswitch_0
    return-object p0

    .line 3597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 3598
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 3599
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 3606
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3607
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3603
    :pswitch_0
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    goto :goto_0

    .line 3613
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    goto :goto_0

    .line 3617
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    goto :goto_0

    .line 3621
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    goto :goto_0

    .line 3625
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 3626
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 3627
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 3634
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3635
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3631
    :pswitch_1
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    goto :goto_0

    .line 3641
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    goto :goto_0

    .line 3645
    :sswitch_7
    const/16 v7, 0x5a

    .line 3646
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3647
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v7, :cond_2

    move v1, v6

    .line 3648
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3650
    .local v3, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v1, :cond_1

    .line 3651
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3653
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 3654
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v7, v3, v1

    .line 3655
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3656
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3653
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3647
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v1, v7

    goto :goto_1

    .line 3659
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v7, v3, v1

    .line 3660
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3661
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    goto/16 :goto_0

    .line 3665
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    goto/16 :goto_0

    .line 3669
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    goto/16 :goto_0

    .line 3673
    :sswitch_a
    const/16 v7, 0x1f3a

    .line 3674
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3675
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_5

    move v1, v6

    .line 3676
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 3678
    .local v3, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_4

    .line 3679
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3681
    :cond_4
    :goto_4
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_6

    .line 3682
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 3683
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3684
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3681
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3675
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_5
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v7

    goto :goto_3

    .line 3687
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_6
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 3688
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3689
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 3587
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x50 -> :sswitch_6
        0x5a -> :sswitch_7
        0x60 -> :sswitch_8
        0x68 -> :sswitch_9
        0x1f3a -> :sswitch_a
    .end sparse-switch

    .line 3599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3627
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 3294
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 3482
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    if-eqz v2, :cond_0

    .line 3483
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3485
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v2, :cond_1

    .line 3486
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3488
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 3489
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3491
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v2, :cond_3

    .line 3492
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3494
    :cond_3
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v2, :cond_4

    .line 3495
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3497
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v2, :cond_5

    .line 3498
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3500
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 3501
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 3502
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    aget-object v0, v2, v1

    .line 3503
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    if-eqz v0, :cond_6

    .line 3504
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3501
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3508
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .end local v1    # "i":I
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v2, :cond_8

    .line 3509
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3511
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v2, v4, :cond_9

    .line 3512
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3514
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3515
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3516
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 3517
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_a

    .line 3518
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3515
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3522
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3523
    return-void
.end method
