.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5564
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5565
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5570
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 5589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5611
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5565
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5741
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5735
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-object v0
.end method


# virtual methods
.method public final clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5606
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5607
    return-object p0
.end method

.method public final clearIconUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5628
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5629
    return-object p0
.end method

.method public final clearState()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5583
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 5584
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5585
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5634
    if-ne p1, p0, :cond_1

    .line 5640
    :cond_0
    :goto_0
    return v0

    .line 5635
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 5636
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 5637
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5638
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 5639
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 5640
    goto :goto_0

    .line 5637
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5638
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5639
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    .line 5640
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5613
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 5669
    const/4 v0, 0x0

    .line 5670
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 5671
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5672
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5674
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 5675
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5676
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5678
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 5679
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 5680
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5682
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5683
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 5684
    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 5572
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    return v0
.end method

.method public final hasDisplayName()Z
    .locals 1

    .prologue
    .line 5602
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIconUrl()Z
    .locals 1

    .prologue
    .line 5624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasState()Z
    .locals 1

    .prologue
    .line 5580
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5644
    .line 5645
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    add-int/lit16 v0, v0, 0x20f

    .line 5646
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 5647
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 5648
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 5649
    return v0

    .line 5646
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5647
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 5648
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 2

    .prologue
    .line 5692
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5693
    sparse-switch v0, :sswitch_data_0

    .line 5697
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    .line 5701
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5703
    :sswitch_0
    return-object p0

    .line 5708
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 5713
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5714
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 5718
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5719
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5722
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 5723
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 5725
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    goto :goto_0

    .line 5693
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5561
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5594
    if-nez p1, :cond_0

    .line 5595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5597
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 5598
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5599
    return-object p0
.end method

.method public final setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5616
    if-nez p1, :cond_0

    .line 5617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5619
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 5620
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5621
    return-object p0
.end method

.method public final setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 5575
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 5576
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 5577
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 5654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5655
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5657
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 5658
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5660
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 5661
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5663
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5665
    return-void
.end method
