.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateCorrectionData"
.end annotation


# static fields
.field public static final ALTERNATE_UNIT_UTF8_BYTES:I = 0x1

.field public static final ALTERNATE_UNIT_WORD:I

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;


# instance fields
.field private bitField0_:I

.field private length_:I

.field private newText_:Ljava/lang/String;

.field private oldText_:Ljava/lang/String;

.field private recognizerSegmentIndex_:I

.field private start_:I

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3761
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3762
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 3763
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 2

    .prologue
    .line 3628
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    if-nez v0, :cond_1

    .line 3629
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3631
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    if-nez v0, :cond_0

    .line 3632
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 3634
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3636
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    return-object v0

    .line 3634
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3888
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3882
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3766
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3767
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 3768
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 3769
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 3770
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 3771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 3772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 3773
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 3774
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3712
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 3713
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3714
    return-object p0
.end method

.method public clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 3757
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3758
    return-object p0
.end method

.method public clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 3735
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3736
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3655
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 3656
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3657
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3693
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 3694
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3695
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 3674
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 3675
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3676
    return-object p0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 3701
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 3644
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3802
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3803
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3804
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3807
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3808
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3811
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3812
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3815
    :cond_2
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3816
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3819
    :cond_3
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3820
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3823
    :cond_4
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3824
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3827
    :cond_5
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 3828
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 3682
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 3663
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 3709
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewText()Z
    .locals 1

    .prologue
    .line 3753
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOldText()Z
    .locals 1

    .prologue
    .line 3731
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 3652
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 3690
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 3671
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

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
    .line 3618
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3836
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3837
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3841
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3842
    :sswitch_0
    return-object p0

    .line 3847
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 3848
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3852
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 3853
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3857
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 3858
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3862
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 3863
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3867
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 3868
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3872
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 3873
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    goto :goto_0

    .line 3837
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3704
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 3705
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3706
    return-object p0
.end method

.method public setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3745
    if-nez p1, :cond_0

    .line 3746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3748
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 3749
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3750
    return-object p0
.end method

.method public setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3723
    if-nez p1, :cond_0

    .line 3724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3726
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 3727
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3728
    return-object p0
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3647
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 3648
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3649
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3685
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 3686
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3687
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3666
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 3667
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    .line 3668
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3780
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3781
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3783
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3784
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3786
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3787
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3789
    :cond_2
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3790
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3792
    :cond_3
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3793
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3795
    :cond_4
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3796
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3798
    :cond_5
    return-void
.end method
