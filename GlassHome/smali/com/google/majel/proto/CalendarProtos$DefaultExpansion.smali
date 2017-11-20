.class public final Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultExpansion"
.end annotation


# static fields
.field public static final URL_TYPE_GMAIL:I = 0x1

.field public static final URL_TYPE_WEB:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/String;

.field private urlType_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2095
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->clear()Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    .line 2096
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 2

    .prologue
    .line 2018
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    if-nez v0, :cond_1

    .line 2019
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2021
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    if-nez v0, :cond_0

    .line 2022
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    .line 2024
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    return-object v0

    .line 2024
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2182
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2176
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2099
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    .line 2101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    .line 2102
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    .line 2103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->cachedSize:I

    .line 2104
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1

    .prologue
    .line 2070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    .line 2071
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2072
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1

    .prologue
    .line 2048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    .line 2049
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2050
    return-object p0
.end method

.method public clearUrlType()Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1

    .prologue
    .line 2089
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    .line 2090
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2091
    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2123
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2124
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2125
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2128
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2129
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2132
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2133
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->cachedSize:I

    .line 2137
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()I
    .locals 1

    .prologue
    .line 2078
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 2067
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2045
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlType()Z
    .locals 1

    .prologue
    .line 2086
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 2008
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2146
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2150
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2151
    :sswitch_0
    return-object p0

    .line 2156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    .line 2157
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    goto :goto_0

    .line 2161
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    .line 2162
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    goto :goto_0

    .line 2166
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    .line 2167
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    goto :goto_0

    .line 2146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2059
    if-nez p1, :cond_0

    .line 2060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2062
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    .line 2063
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2064
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2037
    if-nez p1, :cond_0

    .line 2038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2040
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    .line 2041
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2042
    return-object p0
.end method

.method public setUrlType(I)Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2081
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    .line 2082
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    .line 2083
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
    .line 2110
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2111
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2113
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2114
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2116
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2117
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;->urlType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2119
    :cond_2
    return-void
.end method
