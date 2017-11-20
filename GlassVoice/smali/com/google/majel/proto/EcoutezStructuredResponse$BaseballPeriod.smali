.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseballPeriod"
.end annotation


# static fields
.field public static final INNING_STATUS_BOTTOM_INNING:I = 0x2

.field public static final INNING_STATUS_END_INNING:I = 0x3

.field public static final INNING_STATUS_MIDDLE_INNING:I = 0x1

.field public static final INNING_STATUS_TOP_INNING:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;


# instance fields
.field private bitField0_:I

.field private inningStatus_:I

.field private numOfBalls_:I

.field private numOfOuts_:I

.field private numOfStrikes_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7593
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7594
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 7595
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 2

    .prologue
    .line 7504
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    if-nez v0, :cond_1

    .line 7505
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7507
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    if-nez v0, :cond_0

    .line 7508
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 7510
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7512
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    return-object v0

    .line 7510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7694
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7688
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7598
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7599
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 7600
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 7601
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 7602
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 7603
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    .line 7604
    return-object p0
.end method

.method public clearInningStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 7531
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 7532
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7533
    return-object p0
.end method

.method public clearNumOfBalls()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 7588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 7589
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7590
    return-object p0
.end method

.method public clearNumOfOuts()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 7550
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 7551
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7552
    return-object p0
.end method

.method public clearNumOfStrikes()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1

    .prologue
    .line 7569
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 7570
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7571
    return-object p0
.end method

.method public getInningStatus()I
    .locals 1

    .prologue
    .line 7520
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    return v0
.end method

.method public getNumOfBalls()I
    .locals 1

    .prologue
    .line 7577
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    return v0
.end method

.method public getNumOfOuts()I
    .locals 1

    .prologue
    .line 7539
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    return v0
.end method

.method public getNumOfStrikes()I
    .locals 1

    .prologue
    .line 7558
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7626
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7627
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7628
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7631
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7632
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7635
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7636
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7639
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7640
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7643
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->cachedSize:I

    .line 7644
    return v0
.end method

.method public hasInningStatus()Z
    .locals 1

    .prologue
    .line 7528
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumOfBalls()Z
    .locals 1

    .prologue
    .line 7585
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumOfOuts()Z
    .locals 1

    .prologue
    .line 7547
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumOfStrikes()Z
    .locals 1

    .prologue
    .line 7566
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 7492
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7653
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7657
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7658
    :sswitch_0
    return-object p0

    .line 7663
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 7664
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    goto :goto_0

    .line 7668
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 7669
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    goto :goto_0

    .line 7673
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 7674
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    goto :goto_0

    .line 7678
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 7679
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    goto :goto_0

    .line 7653
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setInningStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7523
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    .line 7524
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7525
    return-object p0
.end method

.method public setNumOfBalls(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7580
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    .line 7581
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7582
    return-object p0
.end method

.method public setNumOfOuts(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7542
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    .line 7543
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7544
    return-object p0
.end method

.method public setNumOfStrikes(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7561
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    .line 7562
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    .line 7563
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7610
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7611
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->inningStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7613
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7614
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfOuts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7616
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7617
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfStrikes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7619
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7620
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;->numOfBalls_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7622
    :cond_3
    return-void
.end method
