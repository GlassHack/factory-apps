.class public final Lcom/google/glass/companion/Proto$MultimediaMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MultimediaMessage;


# instance fields
.field public attachmentContent:[[B

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8162
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MultimediaMessage;

    sput-object v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8163
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8185
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8163
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 8300
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 8294
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-object v0
.end method


# virtual methods
.method public final clearTimelineItem()Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 8181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8182
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8189
    if-ne p1, p0, :cond_1

    .line 8194
    :cond_0
    :goto_0
    return v0

    .line 8190
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8191
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 8192
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    iget-object v3, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8193
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8194
    goto :goto_0

    .line 8192
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8193
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    .line 8194
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 8228
    .line 8229
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_2

    .line 8230
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8231
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v0, v1

    .line 8233
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 8235
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 8237
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v2, v5

    .line 8235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8239
    :cond_0
    add-int/2addr v0, v2

    .line 8240
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8242
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8243
    iput v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->cachedSize:I

    .line 8244
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 8168
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public final hasTimelineItem()Z
    .locals 1

    .prologue
    .line 8178
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8198
    .line 8199
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 8200
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 8208
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    .line 8209
    return v0

    .line 8199
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 8202
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    move v3, v1

    .line 8203
    :goto_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 8204
    mul-int/lit8 v2, v2, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v3

    add-int/2addr v4, v2

    .line 8203
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 8202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8208
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8253
    sparse-switch v0, :sswitch_data_0

    .line 8257
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    .line 8261
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8263
    :sswitch_0
    return-object p0

    .line 8268
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_2

    .line 8269
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8271
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8275
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 8276
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v0, v0

    .line 8277
    add-int/2addr v1, v0

    new-array v1, v1, [[B

    .line 8278
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8279
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8280
    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 8281
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 8282
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8285
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 8253
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8159
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public final setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 8171
    if-nez p1, :cond_0

    .line 8172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8174
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8175
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 8214
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 8215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8217
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v0, :cond_1

    .line 8218
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 8219
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8222
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8224
    return-void
.end method
