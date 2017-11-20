.class public final Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PronsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/PronsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPronsRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;


# instance fields
.field private bitField0_:I

.field private clientVersion_:I

.field private locale_:Ljava/lang/String;

.field public phrase:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    return-object v0
.end method


# virtual methods
.method public clearClientVersion()Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    .line 63
    .local v0, "other":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    .line 64
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 66
    goto :goto_0

    .line 63
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 64
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    .line 66
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getClientVersion()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "size":I
    iget v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 104
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    .line 105
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 111
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v2, v0

    .line 114
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 116
    .end local v0    # "dataSize":I
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 117
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    .line 118
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 121
    iput v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->cachedSize:I

    .line 122
    return v2
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    const/16 v1, 0x11

    .line 71
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 72
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 78
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    add-int v1, v2, v4

    .line 79
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 80
    return v1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 75
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 79
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 131
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 135
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    .line 139
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    :sswitch_0
    return-object p0

    .line 146
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    .line 147
    iget v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    goto :goto_0

    .line 151
    :sswitch_2
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 152
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v1, v4

    .line 153
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 154
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    .line 156
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 158
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 165
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    .line 166
    iget v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientVersion(I)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    .line 46
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    .line 25
    return-object p0
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
    .line 85
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 90
    .local v0, "element":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 94
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->clientVersion_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 98
    return-void
.end method
