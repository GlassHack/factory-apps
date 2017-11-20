.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impression"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;


# instance fields
.field private bitField0_:I

.field private resultId_:Ljava/lang/String;

.field public resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

.field private resultSetNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2837
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2838
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2839
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 2

    .prologue
    .line 2780
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    if-nez v0, :cond_1

    .line 2781
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2783
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    if-nez v0, :cond_0

    .line 2784
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2786
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0

    .line 2786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2950
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2944
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2842
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    .line 2843
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2845
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2846
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2847
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2830
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    .line 2831
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2807
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2808
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    .line 2809
    return-object p0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2796
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2871
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2872
    .local v2, "size":I
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2873
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2876
    :cond_0
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2877
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2880
    :cond_1
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 2881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2882
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    aget-object v0, v3, v1

    .line 2883
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    if-eqz v0, :cond_2

    .line 2884
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2881
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2889
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .end local v1    # "i":I
    :cond_3
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2890
    return v2
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 2826
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2804
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2898
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2899
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2903
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2904
    :sswitch_0
    return-object p0

    .line 2909
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2910
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    goto :goto_0

    .line 2914
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2915
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    goto :goto_0

    .line 2919
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2921
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    if-nez v5, :cond_2

    move v1, v4

    .line 2922
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2924
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    if-eqz v1, :cond_1

    .line 2925
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2927
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2928
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    aput-object v5, v2, v1

    .line 2929
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2930
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2927
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2921
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    array-length v1, v5

    goto :goto_1

    .line 2933
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_3
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    aput-object v5, v2, v1

    .line 2934
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2935
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    goto :goto_0

    .line 2899
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
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
    .line 2774
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2818
    if-nez p1, :cond_0

    .line 2819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2821
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2822
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    .line 2823
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2799
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2800
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    .line 2801
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
    .line 2853
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2854
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2856
    :cond_0
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2857
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2859
    :cond_1
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 2860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2861
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    aget-object v0, v2, v1

    .line 2862
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    if-eqz v0, :cond_2

    .line 2863
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2860
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2867
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
