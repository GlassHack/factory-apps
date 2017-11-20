.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bluetooth"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;


# instance fields
.field private bitField0_:I

.field private connectionTimeoutMs_:I

.field private scoConnectionTimeoutMs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 705
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 706
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    if-nez v0, :cond_1

    .line 654
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    if-nez v0, :cond_0

    .line 657
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 659
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    return-object v0

    .line 659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 709
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    .line 710
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 711
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 712
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    .line 713
    return-object p0
.end method

.method public clearConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 681
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    .line 682
    return-object p0
.end method

.method public clearScoConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 700
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    .line 701
    return-object p0
.end method

.method public getConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    return v0
.end method

.method public getScoConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 729
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 730
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 731
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 735
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    .line 739
    return v0
.end method

.method public hasConnectionTimeoutMs()Z
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScoConnectionTimeoutMs()Z
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

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
    .line 647
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 748
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 752
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    :sswitch_0
    return-object p0

    .line 758
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 759
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    goto :goto_0

    .line 763
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 764
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    goto :goto_0

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 672
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 673
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    .line 674
    return-object p0
.end method

.method public setScoConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 691
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 692
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    .line 693
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
    .line 719
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 720
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 722
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 723
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 725
    :cond_1
    return-void
.end method
