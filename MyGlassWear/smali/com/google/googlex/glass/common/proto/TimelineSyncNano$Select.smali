.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Select"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;


# instance fields
.field private bitField0_:I

.field private continuationToken_:[B

.field private maxItems_:I

.field private modifiedAfterTime_:J

.field private modifiedBeforeTime_:J

.field private startTime_:J

.field private writeAfterTime_:J

.field private writeBeforeTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 722
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 727
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    .line 746
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    .line 765
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    .line 784
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    .line 803
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    .line 822
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    .line 841
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 722
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    return-object v0
.end method


# virtual methods
.method public clearContinuationToken()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1

    .prologue
    .line 857
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 859
    return-object p0
.end method

.method public clearMaxItems()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1

    .prologue
    .line 740
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    .line 741
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 742
    return-object p0
.end method

.method public clearModifiedAfterTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 2

    .prologue
    .line 759
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    .line 760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 761
    return-object p0
.end method

.method public clearModifiedBeforeTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 2

    .prologue
    .line 778
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    .line 779
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 780
    return-object p0
.end method

.method public clearStartTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 2

    .prologue
    .line 835
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    .line 836
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 837
    return-object p0
.end method

.method public clearWriteAfterTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 2

    .prologue
    .line 797
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    .line 798
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 799
    return-object p0
.end method

.method public clearWriteBeforeTime()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 2

    .prologue
    .line 816
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    .line 817
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 818
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    if-ne p1, p0, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v1

    .line 865
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 866
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 867
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 873
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 874
    goto :goto_0

    .line 873
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    .line 874
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getContinuationToken()[B
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    return v0
.end method

.method public getModifiedAfterTime()J
    .locals 2

    .prologue
    .line 748
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    return-wide v0
.end method

.method public getModifiedBeforeTime()J
    .locals 2

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 926
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    .line 927
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 929
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 930
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    .line 931
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 933
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 934
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    .line 935
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 937
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 938
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 939
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 941
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 942
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    .line 943
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 945
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 946
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    .line 947
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 949
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 950
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    .line 951
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 953
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->cachedSize:I

    .line 955
    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 824
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    return-wide v0
.end method

.method public getWriteAfterTime()J
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    return-wide v0
.end method

.method public getWriteBeforeTime()J
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    return-wide v0
.end method

.method public hasContinuationToken()Z
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxItems()Z
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedAfterTime()Z
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedBeforeTime()Z
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteAfterTime()Z
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteBeforeTime()Z
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    const/16 v7, 0x20

    .line 878
    const/16 v1, 0x11

    .line 879
    .local v1, "result":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    add-int/lit16 v1, v2, 0x20f

    .line 880
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 881
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 882
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 883
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 884
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 885
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 891
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 892
    return v1

    .line 887
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 888
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 964
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 968
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    .line 972
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    :sswitch_0
    return-object p0

    .line 979
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    .line 980
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 984
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    .line 985
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 989
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    .line 990
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 994
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 995
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 999
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    .line 1000
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 1004
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    .line 1005
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 1009
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    .line 1010
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 964
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
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
    .line 718
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    move-result-object v0

    return-object v0
.end method

.method public setContinuationToken([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 849
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    .line 850
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 851
    return-object p0
.end method

.method public setMaxItems(I)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    .line 733
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 734
    return-object p0
.end method

.method public setModifiedAfterTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 751
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    .line 752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 753
    return-object p0
.end method

.method public setModifiedBeforeTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 770
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    .line 771
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 772
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 827
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    .line 828
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 829
    return-object p0
.end method

.method public setWriteAfterTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 789
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    .line 790
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 791
    return-object p0
.end method

.method public setWriteBeforeTime(J)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 808
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    .line 809
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    .line 810
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
    .line 897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 898
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->maxItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 900
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 901
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeAfterTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 903
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 904
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->writeBeforeTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 906
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 907
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->continuationToken_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 909
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 910
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedAfterTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 912
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 913
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->modifiedBeforeTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 915
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 916
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->startTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 920
    return-void
.end method
