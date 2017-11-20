.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesStreamResponse"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;


# instance fields
.field private bitField0_:I

.field private highestSequenceNumberComplete_:I

.field private highestSequenceNumberReceived_:I

.field private resultSetNumber_:I

.field public results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

.field public sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2001
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2002
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 2

    .prologue
    .line 1924
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    if-nez v0, :cond_1

    .line 1925
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1927
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    if-nez v0, :cond_0

    .line 1928
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 1930
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    return-object v0

    .line 1930
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2141
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2135
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2005
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 2006
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 2007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 2008
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 2009
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 2010
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 2011
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    .line 2012
    return-object p0
.end method

.method public clearHighestSequenceNumberComplete()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 1995
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 1996
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1997
    return-object p0
.end method

.method public clearHighestSequenceNumberReceived()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 1976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 1977
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1978
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 1951
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 1952
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1953
    return-object p0
.end method

.method public getHighestSequenceNumberComplete()I
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    return v0
.end method

.method public getHighestSequenceNumberReceived()I
    .locals 1

    .prologue
    .line 1965
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    return v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 1940
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2042
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2043
    .local v2, "size":I
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2044
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2047
    :cond_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    if-eqz v3, :cond_1

    .line 2048
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2051
    :cond_1
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 2052
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2053
    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    aget-object v0, v3, v1

    .line 2054
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    if-eqz v0, :cond_2

    .line 2055
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2052
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2060
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 2061
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2064
    :cond_4
    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 2065
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2068
    :cond_5
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    .line 2069
    return v2
.end method

.method public hasHighestSequenceNumberComplete()Z
    .locals 1

    .prologue
    .line 1992
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighestSequenceNumberReceived()Z
    .locals 1

    .prologue
    .line 1973
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

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
    .line 1948
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2078
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2082
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2083
    :sswitch_0
    return-object p0

    .line 2088
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 2089
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    goto :goto_0

    .line 2093
    :sswitch_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    if-nez v5, :cond_1

    .line 2094
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 2096
    :cond_1
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2100
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2102
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    if-nez v5, :cond_3

    move v1, v4

    .line 2103
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 2105
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    if-eqz v1, :cond_2

    .line 2106
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2108
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2109
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;-><init>()V

    aput-object v5, v2, v1

    .line 2110
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2111
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2102
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :cond_3
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    array-length v1, v5

    goto :goto_1

    .line 2114
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :cond_4
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;-><init>()V

    aput-object v5, v2, v1

    .line 2115
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2116
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    goto :goto_0

    .line 2120
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 2121
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    goto :goto_0

    .line 2125
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 2126
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    goto/16 :goto_0

    .line 2078
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHighestSequenceNumberComplete(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1987
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 1988
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1989
    return-object p0
.end method

.method public setHighestSequenceNumberReceived(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1968
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 1969
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1970
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1943
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 1944
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    .line 1945
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
    .line 2018
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2019
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2021
    :cond_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    if-eqz v2, :cond_1

    .line 2022
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2024
    :cond_1
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 2025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2026
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    aget-object v0, v2, v1

    .line 2027
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    if-eqz v0, :cond_2

    .line 2028
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2025
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2032
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 2033
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2035
    :cond_4
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 2036
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2038
    :cond_5
    return-void
.end method
