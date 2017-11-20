.class public final Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LocationRequestNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LocationRequestNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationUpdateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;


# instance fields
.field public responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    .line 154
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-ne p1, p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    .line 168
    .local v0, "other":Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 169
    goto :goto_0

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    .line 169
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    .line 190
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->cachedSize:I

    .line 193
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 173
    const/16 v0, 0x11

    .line 174
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    add-int/lit16 v0, v1, 0x20f

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 176
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 202
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 206
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    :sswitch_0
    return-object p0

    .line 217
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 218
    .local v1, "temp":I
    if-nez v1, :cond_2

    .line 219
    iput v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    goto :goto_0

    .line 221
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    move-result-object v0

    return-object v0
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
    .line 181
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->responseCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 182
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 184
    return-void
.end method
