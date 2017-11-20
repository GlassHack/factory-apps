.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerAlternatesLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field public span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1797
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    .line 1798
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 2

    .prologue
    .line 1742
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    if-nez v0, :cond_1

    .line 1743
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1745
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    if-nez v0, :cond_0

    .line 1746
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    .line 1748
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    return-object v0

    .line 1748
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1909
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1903
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1801
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    .line 1802
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    .line 1803
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    .line 1804
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    .line 1805
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->cachedSize:I

    .line 1806
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1

    .prologue
    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    .line 1773
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    .line 1774
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    .line 1792
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    .line 1793
    return-object p0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1830
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1831
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1832
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1833
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    aget-object v0, v3, v1

    .line 1834
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    if-eqz v0, :cond_0

    .line 1835
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1832
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1840
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1841
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1844
    :cond_2
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1845
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1848
    :cond_3
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->cachedSize:I

    .line 1849
    return v2
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

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
    .line 1736
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1858
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1862
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1863
    :sswitch_0
    return-object p0

    .line 1868
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1870
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    if-nez v5, :cond_2

    move v1, v4

    .line 1871
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    .line 1873
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    if-eqz v1, :cond_1

    .line 1874
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1876
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1877
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;-><init>()V

    aput-object v5, v2, v1

    .line 1878
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1879
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1876
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1870
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    array-length v1, v5

    goto :goto_1

    .line 1882
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;-><init>()V

    aput-object v5, v2, v1

    .line 1883
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1884
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    goto :goto_0

    .line 1888
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    .line 1889
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    goto :goto_0

    .line 1893
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    .line 1894
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    goto :goto_0

    .line 1858
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setMaxSpanLength(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1764
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    .line 1765
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    .line 1766
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1783
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    .line 1784
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    .line 1785
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
    .line 1812
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1814
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->span:[Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;

    aget-object v0, v2, v1

    .line 1815
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    if-eqz v0, :cond_0

    .line 1816
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1813
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$AlternateSpan;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1821
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->maxSpanLength_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1823
    :cond_2
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1824
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;->unit_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1826
    :cond_3
    return-void
.end method
