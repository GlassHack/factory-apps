.class public final Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 715
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 720
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    .line 739
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    .line 715
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    return-object v0
.end method


# virtual methods
.method public clearCellId()Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 2

    .prologue
    .line 733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    .line 734
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    .line 735
    return-object p0
.end method

.method public clearFprint()Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 2

    .prologue
    .line 752
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    .line 753
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    .line 754
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 759
    if-ne p1, p0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v1

    .line 760
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 761
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 762
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    iget-wide v5, v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    iget-wide v5, v0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 722
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 741
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x1

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 791
    const/4 v1, 0x2

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cachedSize:I

    .line 795
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

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
    .line 749
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

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

    .line 767
    const/16 v0, 0x11

    .line 768
    .local v0, "result":I
    iget-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 769
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    iget-wide v4, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 770
    return v0
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
    .line 711
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 804
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 808
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    :sswitch_0
    return-object p0

    .line 814
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    .line 815
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 819
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    .line 820
    iget v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCellId(J)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 725
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    .line 726
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    .line 727
    return-object p0
.end method

.method public setFprint(J)Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 744
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    .line 745
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    .line 746
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
    .line 775
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->cellId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 778
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 779
    const/4 v0, 0x2

    iget-wide v1, p0, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->fprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 781
    :cond_1
    return-void
.end method
