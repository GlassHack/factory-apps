.class public final Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AdminNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AdminNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WipeConfirmationRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field public email:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    return-object v0
.end method


# virtual methods
.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    .line 44
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    .line 45
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 46
    goto :goto_0

    .line 44
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 45
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    .line 46
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "size":I
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 80
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    .line 81
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 87
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v2, v0

    .line 90
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 92
    .end local v0    # "dataSize":I
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 93
    iput v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->cachedSize:I

    .line 94
    return v2
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

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

    .line 50
    const/16 v1, 0x11

    .line 51
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 52
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 58
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 59
    return v1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 55
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 58
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 103
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 107
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    :sswitch_0
    return-object p0

    .line 118
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    .line 119
    iget v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    goto :goto_0

    .line 123
    :sswitch_2
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 124
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v1, v4

    .line 125
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 126
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    .line 128
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 129
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 130
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

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
    .line 64
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 69
    .local v0, "element":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 74
    return-void
.end method
