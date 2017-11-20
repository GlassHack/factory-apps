.class public final Lcom/google/glass/companion/nano/Proto$ApiResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$ApiResponse$ResponseType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$ApiResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiResponse;


# instance fields
.field private bitField0_:I

.field public timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

.field private type_:I

.field public userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6635
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6636
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->clear()Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 6637
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 2

    .prologue
    .line 6595
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v0, :cond_1

    .line 6596
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6598
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v0, :cond_0

    .line 6599
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$ApiResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 6601
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6603
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$ApiResponse;

    return-object v0

    .line 6601
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6790
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ApiResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6784
    new-instance v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$ApiResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6640
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    .line 6641
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    .line 6642
    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6643
    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 6644
    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6645
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->cachedSize:I

    .line 6646
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 6622
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    .line 6623
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    .line 6624
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 6718
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6719
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6720
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    .line 6721
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6723
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v1, :cond_1

    .line 6724
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6725
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6727
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-eqz v1, :cond_2

    .line 6728
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 6729
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6731
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6651
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 6683
    :cond_0
    :goto_0
    return v1

    .line 6654
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 6657
    check-cast v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 6658
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$ApiResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    if-ne v3, v4, :cond_0

    .line 6662
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_6

    .line 6663
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_0

    .line 6671
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v3, :cond_7

    .line 6672
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v3, :cond_0

    .line 6680
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6681
    :cond_4
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 6667
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6676
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 6683
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6611
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6619
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6688
    const/16 v0, 0x11

    .line 6689
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 6690
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    add-int v0, v1, v3

    .line 6691
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v1, :cond_1

    move v1, v2

    .line 6692
    :goto_0
    add-int v0, v3, v1

    .line 6693
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v1, :cond_2

    move v1, v2

    .line 6694
    :goto_1
    add-int v0, v3, v1

    .line 6695
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6696
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6697
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 6698
    return v0

    .line 6692
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hashCode()I

    move-result v1

    goto :goto_0

    .line 6694
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->hashCode()I

    move-result v1

    goto :goto_1

    .line 6697
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6739
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 6740
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 6744
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6745
    :sswitch_0
    return-object p0

    .line 6750
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 6751
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 6752
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 6758
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6759
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 6754
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    .line 6755
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    goto :goto_0

    .line 6765
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v3, :cond_1

    .line 6766
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 6768
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6772
    :sswitch_3
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-nez v3, :cond_2

    .line 6773
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 6775
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6740
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 6752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6584
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public setType(I)Lcom/google/glass/companion/nano/Proto$ApiResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6614
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    .line 6615
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    .line 6616
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
    .line 6704
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6705
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6707
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v0, :cond_1

    .line 6708
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6710
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    if-eqz v0, :cond_2

    .line 6711
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6713
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6714
    return-void
.end method
