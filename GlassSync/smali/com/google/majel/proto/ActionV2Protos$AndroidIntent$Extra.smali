.class public final Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;


# instance fields
.field private bitField0_:I

.field private floatValue_:F

.field private intValue_:I

.field public locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private name_:Ljava/lang/String;

.field private stringValue_:Ljava/lang/String;

.field private timestampMsValue_:J

.field private uriValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12795
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12796
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->clear()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    .line 12797
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 2

    .prologue
    .line 12656
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    if-nez v0, :cond_1

    .line 12657
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12659
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    if-nez v0, :cond_0

    .line 12660
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    .line 12662
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12664
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    return-object v0

    .line 12662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12937
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12931
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12800
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    .line 12802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    .line 12803
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    .line 12804
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    .line 12805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    .line 12806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 12807
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    .line 12808
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->cachedSize:I

    .line 12809
    return-object p0
.end method

.method public clearFloatValue()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1

    .prologue
    .line 12746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    .line 12747
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12748
    return-object p0
.end method

.method public clearIntValue()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1

    .prologue
    .line 12727
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    .line 12728
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12729
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1

    .prologue
    .line 12686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    .line 12687
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12688
    return-object p0
.end method

.method public clearStringValue()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1

    .prologue
    .line 12708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    .line 12709
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12710
    return-object p0
.end method

.method public clearTimestampMsValue()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 2

    .prologue
    .line 12790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    .line 12791
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12792
    return-object p0
.end method

.method public clearUriValue()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1

    .prologue
    .line 12768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    .line 12769
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12770
    return-object p0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 12735
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 12716
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12672
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12840
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 12841
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 12842
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12845
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 12846
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12849
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 12850
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12853
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 12854
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 12857
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 12858
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12861
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_5

    .line 12862
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12865
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 12866
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12869
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->cachedSize:I

    .line 12870
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12694
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMsValue()J
    .locals 2

    .prologue
    .line 12779
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    return-wide v0
.end method

.method public getUriValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12754
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFloatValue()Z
    .locals 1

    .prologue
    .line 12743
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 12724
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 12683
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 12705
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestampMsValue()Z
    .locals 1

    .prologue
    .line 12787
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUriValue()Z
    .locals 1

    .prologue
    .line 12765
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 12650
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12878
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12879
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 12883
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12884
    :sswitch_0
    return-object p0

    .line 12889
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    .line 12890
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12894
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    .line 12895
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12899
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    .line 12900
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12904
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    .line 12905
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12909
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    .line 12910
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12914
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_1

    .line 12915
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 12917
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12921
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    .line 12922
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    goto :goto_0

    .line 12879
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setFloatValue(F)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 12738
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    .line 12739
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12740
    return-object p0
.end method

.method public setIntValue(I)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12719
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    .line 12720
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12721
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12675
    if-nez p1, :cond_0

    .line 12676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12678
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    .line 12679
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12680
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12697
    if-nez p1, :cond_0

    .line 12698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12700
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    .line 12701
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12702
    return-object p0
.end method

.method public setTimestampMsValue(J)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 12782
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    .line 12783
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12784
    return-object p0
.end method

.method public setUriValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12757
    if-nez p1, :cond_0

    .line 12758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12760
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    .line 12761
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    .line 12762
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
    .line 12815
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12816
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12818
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12819
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->stringValue_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12821
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 12822
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->intValue_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12824
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 12825
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->floatValue_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 12827
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 12828
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->uriValue_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12830
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_5

    .line 12831
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->locationValue:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12833
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 12834
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->timestampMsValue_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 12836
    :cond_6
    return-void
.end method
