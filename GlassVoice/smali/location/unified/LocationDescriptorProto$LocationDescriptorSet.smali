.class public final Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptorSet"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;


# instance fields
.field public descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1927
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1928
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->clear()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1929
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 2

    .prologue
    .line 1913
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    if-nez v0, :cond_1

    .line 1914
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1916
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    if-nez v0, :cond_0

    .line 1917
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1919
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    return-object v0

    .line 1919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2013
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2007
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1

    .prologue
    .line 1932
    invoke-static {}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->emptyArray()[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1933
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    .line 1934
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1952
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1953
    .local v2, "size":I
    iget-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1955
    iget-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    aget-object v0, v3, v1

    .line 1956
    .local v0, "element":Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    if-eqz v0, :cond_0

    .line 1957
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1954
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1962
    .end local v0    # "element":Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    .line 1963
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
    .line 1907
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1971
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1972
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1976
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1977
    :sswitch_0
    return-object p0

    .line 1982
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1984
    .local v0, "arrayLength":I
    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    if-nez v5, :cond_2

    move v1, v4

    .line 1985
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1987
    .local v2, "newArray":[Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    if-eqz v1, :cond_1

    .line 1988
    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1990
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1991
    new-instance v5, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    aput-object v5, v2, v1

    .line 1992
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1993
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1990
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1984
    .end local v1    # "i":I
    .end local v2    # "newArray":[Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    :cond_2
    iget-object v5, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    array-length v1, v5

    goto :goto_1

    .line 1996
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    :cond_3
    new-instance v5, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    aput-object v5, v2, v1

    .line 1997
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1998
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1972
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1941
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1942
    iget-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    aget-object v0, v2, v1

    .line 1943
    .local v0, "element":Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    if-eqz v0, :cond_0

    .line 1944
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1941
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1948
    .end local v0    # "element":Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
