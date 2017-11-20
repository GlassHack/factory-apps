.class public final Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalResultCandidateList"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;


# instance fields
.field public candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

.field public nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8588
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8589
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->clear()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8590
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 2

    .prologue
    .line 8571
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-nez v0, :cond_1

    .line 8572
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8574
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-nez v0, :cond_0

    .line 8575
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8577
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8579
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    return-object v0

    .line 8577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8689
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8683
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1

    .prologue
    .line 8593
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 8594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    .line 8595
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    .line 8596
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 8617
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 8618
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 8619
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 8620
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v3, v1

    .line 8621
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_0

    .line 8622
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8619
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8627
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v3, :cond_2

    .line 8628
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8631
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    .line 8632
    return v2
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
    .line 8565
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 8640
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 8641
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 8645
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8646
    :sswitch_0
    return-object p0

    .line 8651
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8653
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v5, :cond_2

    move v1, v4

    .line 8654
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 8656
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v1, :cond_1

    .line 8657
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8659
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 8660
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 8661
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8662
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8653
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v1, v5

    goto :goto_1

    .line 8665
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    aput-object v5, v2, v1

    .line 8666
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8667
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    goto :goto_0

    .line 8671
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    if-nez v5, :cond_4

    .line 8672
    new-instance v5, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v5}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    .line 8674
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8641
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 8602
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 8603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 8604
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    aget-object v0, v2, v1

    .line 8605
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    if-eqz v0, :cond_0

    .line 8606
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8603
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8610
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v2, :cond_2

    .line 8611
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8613
    :cond_2
    return-void
.end method
