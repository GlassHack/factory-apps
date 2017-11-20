.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;


# instance fields
.field private bitField0_:I

.field private clientCachePath_:Ljava/lang/String;

.field private contentType_:Ljava/lang/String;

.field private contentUrl_:Ljava/lang/String;

.field private creationTime_:J

.field private id_:Ljava/lang/String;

.field private isProcessingContent_:Z

.field private source_:Ljava/lang/String;

.field private thumbnailUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2570
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2571
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2917
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2911
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-object v0
.end method


# virtual methods
.method public clearClientCachePath()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2682
    return-object p0
.end method

.method public clearContentType()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2615
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2616
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2637
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2638
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 2

    .prologue
    .line 2699
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2700
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2701
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2594
    return-object p0
.end method

.method public clearIsProcessingContent()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2719
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2720
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2741
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2742
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2659
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2660
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2747
    if-ne p1, p0, :cond_1

    .line 2758
    :cond_0
    :goto_0
    return v1

    .line 2748
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2749
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 2750
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2751
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2752
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2753
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2754
    :goto_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2757
    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2758
    goto :goto_0

    .line 2750
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2751
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2752
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2753
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2754
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2757
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    .line 2758
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getClientCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 2688
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsProcessingContent()Z
    .locals 1

    .prologue
    .line 2707
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2807
    const/4 v0, 0x0

    .line 2808
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2809
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2810
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2812
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2813
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2814
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2816
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2817
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2818
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2820
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2821
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2822
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2824
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2825
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2826
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2828
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2829
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2830
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2832
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2833
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2834
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2836
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 2837
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2838
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2840
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2841
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->cachedSize:I

    .line 2842
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientCachePath()Z
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 2611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentUrl()Z
    .locals 1

    .prologue
    .line 2633
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 2696
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsProcessingContent()Z
    .locals 1

    .prologue
    .line 2715
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2737
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 2655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2762
    const/16 v0, 0x11

    .line 2763
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2764
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 2765
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 2766
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 2767
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 2768
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2769
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_5
    add-int v0, v3, v1

    .line 2770
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 2771
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    :goto_7
    add-int v0, v1, v2

    .line 2772
    return v0

    .line 2763
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 2764
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 2765
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 2766
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 2767
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 2769
    :cond_5
    const/4 v1, 0x2

    goto :goto_5

    .line 2770
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    .line 2771
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2850
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2851
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2855
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    .line 2859
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2861
    :sswitch_0
    return-object p0

    .line 2866
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2867
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2871
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2872
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2876
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2877
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2881
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2882
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2886
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2887
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2891
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2892
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2896
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2897
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2901
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2902
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto/16 :goto_0

    .line 2851
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 2567
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2669
    if-nez p1, :cond_0

    .line 2670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2672
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2674
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2603
    if-nez p1, :cond_0

    .line 2604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2606
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2608
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2625
    if-nez p1, :cond_0

    .line 2626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2628
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2630
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2691
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2692
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2693
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2581
    if-nez p1, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2584
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2585
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2586
    return-object p0
.end method

.method public setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2710
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2711
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2712
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2729
    if-nez p1, :cond_0

    .line 2730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2732
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2733
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2734
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2647
    if-nez p1, :cond_0

    .line 2648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2650
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2651
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2652
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2778
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2780
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2781
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2783
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2784
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2786
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2787
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2789
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2790
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2792
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2793
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2795
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2796
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2798
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2799
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2801
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2803
    return-void
.end method
