.class public final Llocation/unified/LocationDescriptorProto$FeatureIdProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$FeatureIdProto;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 812
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->clear()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 813
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 760
    sget-object v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-nez v0, :cond_1

    .line 761
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    sput-object v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 766
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0

    .line 766
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 880
    new-instance v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 817
    iput-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 818
    iput-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 819
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 820
    return-object p0
.end method

.method public clearCellId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 787
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 788
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 789
    return-object p0
.end method

.method public clearFprint()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 806
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 807
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 808
    return-object p0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 776
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 795
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 836
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 837
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 838
    const/4 v1, 0x1

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 841
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 842
    const/4 v1, 0x2

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 846
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 855
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 859
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    :sswitch_0
    return-object p0

    .line 865
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 866
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 870
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 871
    iget v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCellId(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 779
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 780
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 781
    return-object p0
.end method

.method public setFprint(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 798
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 799
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    .line 800
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x1

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 829
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 830
    const/4 v0, 0x2

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 832
    :cond_1
    return-void
.end method
