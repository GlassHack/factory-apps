.class public final Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;


# instance fields
.field public begin:I

.field public end:I

.field public path:[I

.field public sourceFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5935
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5936
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 5937
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 2

    .prologue
    .line 5910
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v0, :cond_1

    .line 5911
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5913
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v0, :cond_0

    .line 5914
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 5916
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5918
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0

    .line 5916
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6086
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6080
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5940
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    .line 5941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    .line 5942
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    .line 5943
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    .line 5944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5945
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->cachedSize:I

    .line 5946
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 5979
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 5980
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 5981
    const/4 v0, 0x0

    .line 5982
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 5983
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v1, v4, v2

    .line 5985
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 5982
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5987
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 5988
    add-int/lit8 v3, v3, 0x1

    .line 5990
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 5992
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5993
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    .line 5994
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5996
    :cond_2
    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    if-eqz v4, :cond_3

    .line 5997
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    .line 5998
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 6000
    :cond_3
    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    if-eqz v4, :cond_4

    .line 6001
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    .line 6002
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 6004
    :cond_4
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 6012
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 6013
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 6017
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6018
    :sswitch_0
    return-object p0

    .line 6023
    :sswitch_1
    const/16 v8, 0x8

    .line 6024
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6025
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 6026
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6027
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 6028
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6030
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 6031
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6032
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6030
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6025
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v1, v8

    goto :goto_1

    .line 6035
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6036
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    goto :goto_0

    .line 6040
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 6041
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 6043
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 6044
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 6045
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 6046
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 6047
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6049
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6050
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 6051
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6052
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 6053
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6055
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 6056
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6055
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6050
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v1, v8

    goto :goto_4

    .line 6058
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    .line 6059
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6063
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 6067
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    goto/16 :goto_0

    .line 6071
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    goto/16 :goto_0

    .line 6013
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5904
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

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
    .line 5952
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 5953
    const/4 v0, 0x0

    .line 5954
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 5955
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v1, v3, v2

    .line 5957
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 5954
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5959
    .end local v1    # "element":I
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5960
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 5961
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 5962
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 5961
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5965
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5966
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5968
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    if-eqz v3, :cond_3

    .line 5969
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5971
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    if-eqz v3, :cond_4

    .line 5972
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5974
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5975
    return-void
.end method
