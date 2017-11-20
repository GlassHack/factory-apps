.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;


# instance fields
.field private bitField0_:I

.field private contentUsageTimestampMs_:J

.field private glasswareAffinity_:I

.field private phoneUsageTimestampMs_:J

.field private usageCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3603
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 3604
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3609
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3628
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    .line 3647
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    .line 3666
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    .line 3604
    return-void
.end method


# virtual methods
.method public clearContentUsageTimestampMs()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 2

    .prologue
    .line 3660
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    .line 3661
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3662
    return-object p0
.end method

.method public clearGlasswareAffinity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 3622
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3623
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3624
    return-object p0
.end method

.method public clearPhoneUsageTimestampMs()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 2

    .prologue
    .line 3679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    .line 3680
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3681
    return-object p0
.end method

.method public clearUsageCount()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 3641
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    .line 3642
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3643
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3686
    if-ne p1, p0, :cond_1

    .line 3693
    :cond_0
    :goto_0
    return v1

    .line 3687
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3688
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 3689
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3693
    goto :goto_0

    .line 3689
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    .line 3693
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getContentUsageTimestampMs()J
    .locals 2

    .prologue
    .line 3649
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    return-wide v0
.end method

.method public getGlasswareAffinity()I
    .locals 1

    .prologue
    .line 3611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    return v0
.end method

.method public getPhoneUsageTimestampMs()J
    .locals 2

    .prologue
    .line 3668
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3726
    const/4 v0, 0x0

    .line 3727
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3728
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3729
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3731
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3732
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    .line 3733
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3735
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3736
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    .line 3737
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3739
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3740
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    .line 3741
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3743
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3744
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 3745
    return v0
.end method

.method public getUsageCount()I
    .locals 1

    .prologue
    .line 3630
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    return v0
.end method

.method public hasContentUsageTimestampMs()Z
    .locals 1

    .prologue
    .line 3657
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareAffinity()Z
    .locals 1

    .prologue
    .line 3619
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneUsageTimestampMs()Z
    .locals 1

    .prologue
    .line 3676
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsageCount()Z
    .locals 1

    .prologue
    .line 3638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 3697
    const/16 v0, 0x11

    .line 3698
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    add-int/lit16 v0, v1, 0x20f

    .line 3699
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    add-int v0, v1, v2

    .line 3700
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 3701
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 3702
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 3703
    return v0

    .line 3702
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3753
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3754
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3758
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    .line 3762
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3764
    :sswitch_0
    return-object p0

    .line 3769
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3770
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 3774
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    .line 3775
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 3779
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    .line 3780
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 3784
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    .line 3785
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 3754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 3600
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3800
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3794
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-object v0
.end method

.method public setContentUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3652
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    .line 3653
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3654
    return-object p0
.end method

.method public setGlasswareAffinity(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3614
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3615
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3616
    return-object p0
.end method

.method public setPhoneUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3671
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    .line 3672
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3673
    return-object p0
.end method

.method public setUsageCount(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3633
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    .line 3634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 3635
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
    .line 3708
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3709
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3711
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3712
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->usageCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3714
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3715
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->contentUsageTimestampMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3717
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3718
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->phoneUsageTimestampMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3720
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3722
    return-void
.end method
