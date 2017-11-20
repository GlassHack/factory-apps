.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;


# instance fields
.field private bitField0_:I

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 708
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 818
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 812
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-object v0
.end method


# virtual methods
.method public final clearResponseCode()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 733
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    .line 734
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 739
    if-ne p1, p0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 741
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .line 742
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 743
    goto :goto_0

    .line 742
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    .line 743
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 765
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 766
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 767
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    .line 771
    return v0
.end method

.method public final hasResponseCode()Z
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

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
    .locals 2

    .prologue
    .line 747
    .line 748
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    add-int/lit16 v0, v0, 0x20f

    .line 749
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 750
    return v0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 2

    .prologue
    .line 779
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 780
    sparse-switch v0, :sswitch_data_0

    .line 784
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    :sswitch_0
    return-object p0

    .line 795
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 796
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 799
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 800
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    goto :goto_0

    .line 802
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    goto :goto_0

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setResponseCode(I)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 724
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 725
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    .line 726
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 755
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 760
    return-void
.end method
