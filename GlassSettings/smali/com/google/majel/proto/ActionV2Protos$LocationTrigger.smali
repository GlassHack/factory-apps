.class public final Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationTrigger"
.end annotation


# static fields
.field public static final TYPE_ARRIVING:I = 0x0

.field public static final TYPE_EN_ROUTE:I = 0x1

.field public static final TYPE_LEAVING:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;


# instance fields
.field private bitField0_:I

.field public defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

.field public localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

.field public location:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8745
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8746
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->clear()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 8747
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 2

    .prologue
    .line 8704
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    if-nez v0, :cond_1

    .line 8705
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8707
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    if-nez v0, :cond_0

    .line 8708
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 8710
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8712
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    return-object v0

    .line 8710
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8875
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8869
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8750
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    .line 8751
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 8752
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8753
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8754
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 8755
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    .line 8756
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    .line 8740
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 8741
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    .line 8742
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 8783
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 8784
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v3, :cond_0

    .line 8785
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8788
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 8789
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 8792
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 8793
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8794
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    aget-object v0, v3, v1

    .line 8795
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    if-eqz v0, :cond_2

    .line 8796
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8793
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8801
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-eqz v3, :cond_4

    .line 8802
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8805
    :cond_4
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    .line 8806
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 8729
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 8737
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

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
    .line 8693
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 8814
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 8815
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 8819
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8820
    :sswitch_0
    return-object p0

    .line 8825
    :sswitch_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v5, :cond_1

    .line 8826
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 8828
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8832
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 8833
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    goto :goto_0

    .line 8837
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8839
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-nez v5, :cond_3

    move v1, v4

    .line 8840
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8842
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    if-eqz v1, :cond_2

    .line 8843
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8845
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 8846
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    aput-object v5, v2, v1

    .line 8847
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8848
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8845
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8839
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    array-length v1, v5

    goto :goto_1

    .line 8851
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    aput-object v5, v2, v1

    .line 8852
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8853
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    goto :goto_0

    .line 8857
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    :sswitch_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-nez v5, :cond_5

    .line 8858
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 8860
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8815
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setType(I)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8732
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 8733
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    .line 8734
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
    .line 8762
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v2, :cond_0

    .line 8763
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8765
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 8766
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8768
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 8769
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 8770
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList:[Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    aget-object v0, v2, v1

    .line 8771
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    if-eqz v0, :cond_2

    .line 8772
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8769
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8776
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    if-eqz v2, :cond_4

    .line 8777
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->defaultLocations:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8779
    :cond_4
    return-void
.end method
