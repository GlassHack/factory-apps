.class public final Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgendaItemSubtitle"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;


# instance fields
.field private bitField0_:I

.field private status_:Ljava/lang/String;

.field public textSegment:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1902
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1903
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->clear()Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    .line 1904
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 2

    .prologue
    .line 1864
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    if-nez v0, :cond_1

    .line 1865
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1867
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    if-nez v0, :cond_0

    .line 1868
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    .line 1870
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    return-object v0

    .line 1870
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2004
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1998
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    .line 1908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    .line 1909
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    .line 1910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->cachedSize:I

    .line 1911
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 1

    .prologue
    .line 1894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    .line 1895
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    .line 1896
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1932
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 1933
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1934
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1937
    :cond_0
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1940
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 1941
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 1942
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1943
    add-int/lit8 v0, v0, 0x1

    .line 1944
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1940
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1948
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 1949
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1951
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iput v4, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->cachedSize:I

    .line 1952
    return v4
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    return-object v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1891
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

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
    .line 1858
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1961
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1965
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1966
    :sswitch_0
    return-object p0

    .line 1971
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    .line 1972
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    goto :goto_0

    .line 1976
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1978
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 1979
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1980
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1981
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1983
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1984
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1985
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1978
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 1988
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1989
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    goto :goto_0

    .line 1961
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1883
    if-nez p1, :cond_0

    .line 1884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1886
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    .line 1887
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    .line 1888
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
    .line 1917
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1918
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->status_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1920
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1921
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1922
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;->textSegment:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1923
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1924
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1921
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1928
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
