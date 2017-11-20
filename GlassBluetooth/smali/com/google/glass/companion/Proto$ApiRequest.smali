.class public final Lcom/google/glass/companion/Proto$ApiRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;


# instance fields
.field public attachmentContent:[[B

.field private bitField0_:I

.field private projectId_:Ljava/lang/String;

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private token_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5582
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5583
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5593
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 5615
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5637
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 5675
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 5583
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5838
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5832
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method


# virtual methods
.method public clearProjectId()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 5609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 5610
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5611
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 5671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5672
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 5631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5632
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5633
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 5650
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 5651
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5652
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5679
    if-ne p1, p0, :cond_1

    .line 5687
    :cond_0
    :goto_0
    return v1

    .line 5680
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5681
    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    .line 5682
    .local v0, "other":Lcom/google/glass/companion/Proto$ApiRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 5683
    :goto_2
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    .line 5685
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 5686
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 5687
    goto :goto_0

    .line 5682
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5683
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5685
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 5686
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    .line 5687
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5595
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 5733
    const/4 v2, 0x0

    .line 5734
    .local v2, "size":I
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5735
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 5736
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5738
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5739
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5740
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5742
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 5743
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 5744
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5746
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_3

    .line 5747
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5748
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5750
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v3

    if-lez v3, :cond_5

    .line 5751
    const/4 v0, 0x0

    .line 5752
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v1, v4, v3

    .line 5754
    .local v1, "element":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v6

    add-int/2addr v0, v6

    .line 5752
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5756
    .end local v1    # "element":[B
    :cond_4
    add-int/2addr v2, v0

    .line 5757
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 5759
    .end local v0    # "dataSize":I
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5760
    iput v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 5761
    return v2
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 5658
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5617
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5639
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    return v0
.end method

.method public hasProjectId()Z
    .locals 1

    .prologue
    .line 5606
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItem()Z
    .locals 1

    .prologue
    .line 5668
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 5628
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 5647
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 5691
    const/16 v2, 0x11

    .line 5692
    .local v2, "result":I
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    add-int/lit16 v2, v3, 0x20f

    .line 5693
    mul-int/lit8 v5, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int v2, v5, v3

    .line 5694
    mul-int/lit8 v3, v2, 0x1f

    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    add-int v2, v3, v5

    .line 5695
    mul-int/lit8 v5, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    add-int v2, v5, v3

    .line 5696
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-nez v3, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    .line 5704
    :cond_0
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_6

    :goto_3
    add-int v2, v3, v4

    .line 5705
    return v2

    .line 5692
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 5693
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 5695
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v3

    goto :goto_2

    .line 5698
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 5699
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 5700
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v1

    add-int v2, v3, v5

    .line 5699
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5698
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5704
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_6
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 5769
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5770
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5774
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 5775
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    .line 5778
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5780
    :sswitch_0
    return-object p0

    .line 5785
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 5786
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 5790
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5791
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 5795
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 5796
    .local v4, "temp":I
    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 5798
    :cond_2
    iput v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 5799
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 5801
    :cond_3
    iput v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    goto :goto_0

    .line 5806
    .end local v4    # "temp":I
    :sswitch_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_4

    .line 5807
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5809
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5813
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5814
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v1, v5

    .line 5815
    .local v1, "i":I
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 5816
    .local v2, "newArray":[[B
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v5, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5817
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 5818
    :goto_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 5819
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 5820
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5818
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5823
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    goto/16 :goto_0

    .line 5770
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 5579
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5598
    if-nez p1, :cond_0

    .line 5599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5601
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 5602
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5603
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 5661
    if-nez p1, :cond_0

    .line 5662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5664
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 5665
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5620
    if-nez p1, :cond_0

    .line 5621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5623
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 5624
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5625
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5642
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 5643
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 5644
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
    .line 5710
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5711
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5713
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5714
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5716
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5717
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5719
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_3

    .line 5720
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5722
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v1, :cond_4

    .line 5723
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 5724
    .local v0, "element":[B
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5727
    .end local v0    # "element":[B
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5729
    return-void
.end method
