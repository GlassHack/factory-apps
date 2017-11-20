.class public final Lcom/google/majel/proto/ContactProtos$InferenceDetails;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InferenceDetails"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$InferenceDetails;


# instance fields
.field private bitField0_:I

.field private isInferred_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1882
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->clear()Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 1883
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 2

    .prologue
    .line 1849
    sget-object v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-nez v0, :cond_1

    .line 1850
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-nez v0, :cond_0

    .line 1853
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 1855
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    return-object v0

    .line 1855
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1943
    new-instance v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1886
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    .line 1887
    iput-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->cachedSize:I

    .line 1889
    return-object p0
.end method

.method public clearIsInferred()Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    .line 1877
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    .line 1878
    return-object p0
.end method

.method public getIsInferred()Z
    .locals 1

    .prologue
    .line 1865
    iget-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1902
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1903
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1904
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1907
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->cachedSize:I

    .line 1908
    return v0
.end method

.method public hasIsInferred()Z
    .locals 1

    .prologue
    .line 1873
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

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
    .line 1843
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1917
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1921
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1922
    :sswitch_0
    return-object p0

    .line 1927
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    .line 1928
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    goto :goto_0

    .line 1917
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIsInferred(Z)Lcom/google/majel/proto/ContactProtos$InferenceDetails;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1868
    iput-boolean p1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    .line 1869
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    .line 1870
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
    .line 1895
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1896
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/majel/proto/ContactProtos$InferenceDetails;->isInferred_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1898
    :cond_0
    return-void
.end method
