.class public final Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeferredAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;


# instance fields
.field private bitField0_:I

.field private displayText_:Ljava/lang/String;

.field private numberOfAttempts_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11613
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11614
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->clear()Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    .line 11615
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 2

    .prologue
    .line 11559
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    if-nez v0, :cond_1

    .line 11560
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11562
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    if-nez v0, :cond_0

    .line 11563
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    .line 11565
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11567
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    return-object v0

    .line 11565
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11688
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11682
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11618
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    .line 11619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    .line 11620
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    .line 11621
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->cachedSize:I

    .line 11622
    return-object p0
.end method

.method public clearDisplayText()Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1

    .prologue
    .line 11589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    .line 11590
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    .line 11591
    return-object p0
.end method

.method public clearNumberOfAttempts()Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1

    .prologue
    .line 11608
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    .line 11609
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    .line 11610
    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11575
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfAttempts()I
    .locals 1

    .prologue
    .line 11597
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11638
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11639
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11640
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11643
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11644
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11647
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->cachedSize:I

    .line 11648
    return v0
.end method

.method public hasDisplayText()Z
    .locals 1

    .prologue
    .line 11586
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumberOfAttempts()Z
    .locals 1

    .prologue
    .line 11605
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

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
    .line 11553
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11656
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11657
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11661
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11662
    :sswitch_0
    return-object p0

    .line 11667
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    .line 11668
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    goto :goto_0

    .line 11672
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    .line 11673
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    goto :goto_0

    .line 11657
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11578
    if-nez p1, :cond_0

    .line 11579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11581
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    .line 11582
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    .line 11583
    return-object p0
.end method

.method public setNumberOfAttempts(I)Lcom/google/majel/proto/ActionV2Protos$DeferredAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 11600
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    .line 11601
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    .line 11602
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
    .line 11628
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11629
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->displayText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11631
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11632
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$DeferredAction;->numberOfAttempts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11634
    :cond_1
    return-void
.end method
