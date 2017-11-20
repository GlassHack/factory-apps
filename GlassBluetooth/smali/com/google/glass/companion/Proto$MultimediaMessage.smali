.class public final Lcom/google/glass/companion/Proto$MultimediaMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultimediaMessage"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MultimediaMessage;


# instance fields
.field public attachmentContent:[[B

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8678
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MultimediaMessage;

    sput-object v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8679
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8701
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8679
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8816
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8810
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-object v0
.end method


# virtual methods
.method public clearTimelineItem()Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 8697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8698
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8705
    if-ne p1, p0, :cond_1

    .line 8710
    :cond_0
    :goto_0
    return v1

    .line 8706
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8707
    check-cast v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 8708
    .local v0, "other":Lcom/google/glass/companion/Proto$MultimediaMessage;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8709
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8710
    goto :goto_0

    .line 8708
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 8709
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    .line 8710
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 8744
    const/4 v2, 0x0

    .line 8745
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_0

    .line 8746
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8747
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8749
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v3

    if-lez v3, :cond_2

    .line 8750
    const/4 v0, 0x0

    .line 8751
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 8753
    .local v1, "element":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v6

    add-int/2addr v0, v6

    .line 8751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8755
    .end local v1    # "element":[B
    :cond_1
    add-int/2addr v2, v0

    .line 8756
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 8758
    .end local v0    # "dataSize":I
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8759
    iput v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->cachedSize:I

    .line 8760
    return v2
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 8684
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 1

    .prologue
    .line 8694
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 8714
    const/16 v2, 0x11

    .line 8715
    .local v2, "result":I
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    add-int/lit16 v2, v3, 0x20f

    .line 8716
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-nez v3, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    .line 8724
    :cond_0
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_4

    :goto_1
    add-int v2, v3, v4

    .line 8725
    return v2

    .line 8715
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v3

    goto :goto_0

    .line 8718
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 8719
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8720
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v1

    add-int v2, v3, v5

    .line 8719
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8718
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8724
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 8768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 8769
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 8773
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 8774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    .line 8777
    :cond_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8779
    :sswitch_0
    return-object p0

    .line 8784
    :sswitch_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v4, :cond_2

    .line 8785
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8787
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8791
    :sswitch_2
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8792
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v1, v4

    .line 8793
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [[B

    .line 8794
    .local v2, "newArray":[[B
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8795
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 8796
    :goto_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 8797
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 8798
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8796
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8801
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 8769
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
    .line 8675
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MultimediaMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MultimediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 8687
    if-nez p1, :cond_0

    .line 8688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8690
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 8691
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
    .line 8730
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_0

    .line 8731
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8733
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    if-eqz v1, :cond_1

    .line 8734
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 8735
    .local v0, "element":[B
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8738
    .end local v0    # "element":[B
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8740
    return-void
.end method
