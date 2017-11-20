.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchHeader"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;


# instance fields
.field public authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

.field private bitField0_:I

.field private dispatcherId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 166
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 161
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-object v0
.end method


# virtual methods
.method public clearDispatcherId()Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 2

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    .line 184
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    if-ne p1, p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 191
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 192
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 194
    goto :goto_0

    .line 192
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    .line 194
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDispatcherId()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v2, :cond_1

    .line 230
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 231
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    if-eqz v0, :cond_0

    .line 232
    const/4 v5, 0x1

    .line 233
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 230
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 238
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 239
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 242
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    .line 243
    return v1
.end method

.method public hasDispatcherId()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

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
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 198
    const/16 v1, 0x11

    .line 199
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 206
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 207
    return v1

    .line 201
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 202
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->hashCode()I

    move-result v2

    goto :goto_2

    .line 206
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 252
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 256
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    :sswitch_0
    return-object p0

    .line 267
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 268
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v5, :cond_3

    move v1, v4

    .line 269
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 270
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v5, :cond_2

    .line 271
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 274
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 275
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 276
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 277
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 268
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v1, v5

    goto :goto_1

    .line 280
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 281
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 285
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 286
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public setDispatcherId(J)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    .line 176
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
    .line 212
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 214
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    if-eqz v0, :cond_0

    .line 215
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 220
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 224
    return-void
.end method
