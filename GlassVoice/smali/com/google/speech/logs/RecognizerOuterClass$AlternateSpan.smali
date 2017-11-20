.class public final Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;


# instance fields
.field public alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private start_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2131
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2132
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->clear()Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    .line 2133
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 2

    .prologue
    .line 2058
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    if-nez v0, :cond_1

    .line 2059
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2061
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    if-nez v0, :cond_0

    .line 2062
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    .line 2064
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    return-object v0

    .line 2064
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2257
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2251
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2136
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2137
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    .line 2138
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    .line 2139
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    .line 2140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    .line 2141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->cachedSize:I

    .line 2142
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1

    .prologue
    .line 2126
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    .line 2127
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2128
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1

    .prologue
    .line 2104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    .line 2105
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2106
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1

    .prologue
    .line 2085
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    .line 2086
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2087
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 2115
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2093
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2169
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2170
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2171
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2174
    :cond_0
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2175
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2178
    :cond_1
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 2179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2180
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    aget-object v0, v3, v1

    .line 2181
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    if-eqz v0, :cond_2

    .line 2182
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2187
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 2188
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2191
    :cond_4
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->cachedSize:I

    .line 2192
    return v2
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2074
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 2123
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 2082
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

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
    .line 2052
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2201
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2205
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2206
    :sswitch_0
    return-object p0

    .line 2211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    .line 2212
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    goto :goto_0

    .line 2216
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    .line 2217
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    goto :goto_0

    .line 2221
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2223
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    if-nez v5, :cond_2

    move v1, v4

    .line 2224
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    .line 2226
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    if-eqz v1, :cond_1

    .line 2227
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2229
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2230
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 2231
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2232
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2223
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    array-length v1, v5

    goto :goto_1

    .line 2235
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 2236
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2237
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    goto :goto_0

    .line 2241
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    .line 2242
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    goto :goto_0

    .line 2201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2118
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    .line 2119
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2120
    return-object p0
.end method

.method public setLength(I)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2096
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    .line 2097
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2098
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2077
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    .line 2078
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    .line 2079
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
    .line 2148
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2149
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->start_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2151
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2152
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->length_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2154
    :cond_1
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 2155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2156
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->alternates:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    aget-object v0, v2, v1

    .line 2157
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    if-eqz v0, :cond_2

    .line 2158
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2155
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2162
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 2163
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2165
    :cond_4
    return-void
.end method
