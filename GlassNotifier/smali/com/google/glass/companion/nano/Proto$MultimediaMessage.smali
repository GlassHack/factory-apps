.class public final Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultimediaMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$MultimediaMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;


# instance fields
.field public attachmentContent:[[B

.field public timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10062
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10063
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->clear()Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 10064
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    .locals 2

    .prologue
    .line 10043
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v0, :cond_1

    .line 10044
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10046
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v0, :cond_0

    .line 10047
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 10049
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10051
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    return-object v0

    .line 10049
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10208
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10202
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10067
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 10068
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 10069
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10070
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->cachedSize:I

    .line 10071
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 10135
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 10136
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v5, :cond_0

    .line 10137
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 10138
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10140
    :cond_0
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v5, v5

    if-lez v5, :cond_3

    .line 10141
    const/4 v0, 0x0

    .line 10142
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 10143
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 10144
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v2, v5, v3

    .line 10145
    .local v2, "element":[B
    if-eqz v2, :cond_1

    .line 10146
    add-int/lit8 v0, v0, 0x1

    .line 10148
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v1, v5

    .line 10143
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10151
    .end local v2    # "element":[B
    :cond_2
    add-int/2addr v4, v1

    .line 10152
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 10154
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10076
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 10099
    :cond_0
    :goto_0
    return v1

    .line 10079
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 10082
    check-cast v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 10083
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_5

    .line 10084
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_0

    .line 10092
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([[B[[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10096
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10097
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 10088
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10099
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 10104
    const/16 v0, 0x11

    .line 10105
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 10106
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v1, :cond_1

    move v1, v2

    .line 10107
    :goto_0
    add-int v0, v3, v1

    .line 10108
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 10109
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([[B)I

    move-result v3

    add-int v0, v1, v3

    .line 10110
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10111
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10112
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 10113
    return v0

    .line 10107
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hashCode()I

    move-result v1

    goto :goto_0

    .line 10112
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MultimediaMessage;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 10163
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 10167
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10168
    :sswitch_0
    return-object p0

    .line 10173
    :sswitch_1
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v5, :cond_1

    .line 10174
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 10176
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10180
    :sswitch_2
    const/16 v5, 0x12

    .line 10181
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10182
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    if-nez v5, :cond_3

    move v1, v4

    .line 10183
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 10184
    .local v2, "newArray":[[B
    if-eqz v1, :cond_2

    .line 10185
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10187
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 10188
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 10189
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10182
    .end local v1    # "i":I
    .end local v2    # "newArray":[[B
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v1, v5

    goto :goto_1

    .line 10192
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[[B
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 10193
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    goto :goto_0

    .line 10163
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
    .line 10037
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10119
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v2, :cond_0

    .line 10120
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10122
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 10123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 10124
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v0, v2, v1

    .line 10125
    .local v0, "element":[B
    if-eqz v0, :cond_1

    .line 10126
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 10123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10130
    .end local v0    # "element":[B
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10131
    return-void
.end method
