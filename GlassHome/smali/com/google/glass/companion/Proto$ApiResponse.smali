.class public final Lcom/google/glass/companion/Proto$ApiResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiResponse;


# instance fields
.field private bitField0_:I

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private type_:I

.field private userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5698
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5699
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5708
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    .line 5699
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5875
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5869
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method


# virtual methods
.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 5742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5743
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 5721
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    .line 5722
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    .line 5723
    return-object p0
.end method

.method public clearUserAction()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 5761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5762
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5766
    if-ne p1, p0, :cond_1

    .line 5772
    :cond_0
    :goto_0
    return v1

    .line 5767
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5768
    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    .line 5769
    .local v0, "other":Lcom/google/glass/companion/Proto$ApiResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    .line 5770
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v3, :cond_3

    .line 5771
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 5772
    goto :goto_0

    .line 5769
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5770
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5771
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    .line 5772
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5801
    const/4 v0, 0x0

    .line 5802
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5803
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    .line 5804
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5806
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_1

    .line 5807
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5808
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5810
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v1, :cond_2

    .line 5811
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5812
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5814
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5815
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    .line 5816
    return v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 5729
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5710
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    return v0
.end method

.method public getUserAction()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5748
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 1

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5718
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAction()Z
    .locals 1

    .prologue
    .line 5758
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

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

    .line 5776
    const/16 v0, 0x11

    .line 5777
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 5778
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 5779
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 5780
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 5781
    return v0

    .line 5778
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v1

    goto :goto_0

    .line 5779
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v1

    goto :goto_1

    .line 5780
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5825
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5829
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 5830
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    .line 5833
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5835
    :sswitch_0
    return-object p0

    .line 5840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5841
    .local v1, "temp":I
    if-nez v1, :cond_2

    .line 5842
    iput v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    .line 5843
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    goto :goto_0

    .line 5845
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    goto :goto_0

    .line 5850
    .end local v1    # "temp":I
    :sswitch_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_3

    .line 5851
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5853
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5857
    :sswitch_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_4

    .line 5858
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5860
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5825
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 5732
    if-nez p1, :cond_0

    .line 5733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5735
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5736
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5713
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    .line 5714
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    .line 5715
    return-object p0
.end method

.method public setUserAction(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .prologue
    .line 5751
    if-nez p1, :cond_0

    .line 5752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5754
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5755
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
    .line 5786
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5787
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5789
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    .line 5790
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5792
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v0, :cond_2

    .line 5793
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5795
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5797
    return-void
.end method
