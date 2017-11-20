.class public final Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EntitySyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareTargetsInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;


# instance fields
.field public shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 555
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 552
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    if-ne p1, p0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 561
    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    .line 562
    .local v0, "other":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 563
    goto :goto_0

    .line 562
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    .line 563
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_1

    .line 595
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 596
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 597
    const/4 v5, 0x1

    .line 598
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 595
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 603
    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->cachedSize:I

    .line 604
    return v1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 567
    const/16 v1, 0x11

    .line 568
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 574
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 575
    return v1

    .line 570
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 571
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_2

    .line 574
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 613
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 617
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    .line 621
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 623
    :sswitch_0
    return-object p0

    .line 628
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 629
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v5, :cond_3

    move v1, v4

    .line 630
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 631
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_2

    .line 632
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 635
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 636
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 637
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 638
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v5

    goto :goto_1

    .line 641
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v6, v5, v1

    .line 642
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 548
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    return-object v0
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
    .line 580
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_1

    .line 581
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 582
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 583
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 581
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 589
    return-void
.end method
