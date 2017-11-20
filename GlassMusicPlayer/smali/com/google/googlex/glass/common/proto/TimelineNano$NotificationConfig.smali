.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;


# instance fields
.field private bitField0_:I

.field private deliveryTime_:J

.field private level_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5749
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5750
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5759
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5750
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 5889
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 5883
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method


# virtual methods
.method public final clearDeliveryTime()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 2

    .prologue
    .line 5791
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5792
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 5793
    return-object p0
.end method

.method public final clearLevel()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 5772
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 5774
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5798
    if-ne p1, p0, :cond_1

    .line 5803
    :cond_0
    :goto_0
    return v0

    .line 5799
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5800
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 5801
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5803
    goto :goto_0

    .line 5801
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    .line 5803
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getDeliveryTime()J
    .locals 2

    .prologue
    .line 5780
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    return-wide v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 5761
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 5828
    const/4 v0, 0x0

    .line 5829
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5830
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5831
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5833
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5834
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5835
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5837
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5838
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 5839
    return v0
.end method

.method public final hasDeliveryTime()Z
    .locals 1

    .prologue
    .line 5788
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLevel()Z
    .locals 1

    .prologue
    .line 5769
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 5807
    .line 5808
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    add-int/lit16 v0, v0, 0x20f

    .line 5809
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 5810
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 5811
    return v0

    .line 5810
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 5847
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5848
    sparse-switch v0, :sswitch_data_0

    .line 5852
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5853
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    .line 5856
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5858
    :sswitch_0
    return-object p0

    .line 5863
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5864
    if-ne v0, v2, :cond_2

    .line 5865
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 5868
    :cond_2
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    goto :goto_0

    .line 5873
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 5848
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5746
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public final setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 5783
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5784
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 5785
    return-object p0
.end method

.method public final setLevel(I)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 5764
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 5766
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 5816
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5817
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5819
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5820
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5822
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5824
    return-void
.end method
