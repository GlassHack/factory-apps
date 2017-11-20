.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkSpec"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;


# instance fields
.field private bitField0_:I

.field private end_:I

.field private start_:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1977
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1978
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1983
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 2002
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 2021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1978
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2144
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2138
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    return-object v0
.end method


# virtual methods
.method public clearEnd()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 2015
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 2016
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 2017
    return-object p0
.end method

.method public clearStart()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 1996
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1997
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1998
    return-object p0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 2037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 2038
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 2039
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2044
    if-ne p1, p0, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return v1

    .line 2045
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2046
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 2047
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2049
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2050
    goto :goto_0

    .line 2047
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 2049
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    .line 2050
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 2004
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2079
    const/4 v0, 0x0

    .line 2080
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2081
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 2082
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2084
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2085
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 2086
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2088
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2089
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 2090
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2093
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->cachedSize:I

    .line 2094
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 2012
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

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
    .line 1993
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 2034
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2054
    const/16 v0, 0x11

    .line 2055
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    add-int/lit16 v0, v1, 0x20f

    .line 2056
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    add-int v0, v1, v3

    .line 2057
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 2058
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 2059
    return v0

    .line 2057
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 2058
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2103
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2107
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    .line 2111
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2113
    :sswitch_0
    return-object p0

    .line 2118
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 2119
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 2123
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 2124
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 2128
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 2129
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 2103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1974
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    move-result-object v0

    return-object v0
.end method

.method public setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2007
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 2008
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 2009
    return-object p0
.end method

.method public setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1988
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1989
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1990
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2026
    if-nez p1, :cond_0

    .line 2027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2029
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 2030
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 2031
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2065
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2067
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2068
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2070
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2071
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2073
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2075
    return-void
.end method
