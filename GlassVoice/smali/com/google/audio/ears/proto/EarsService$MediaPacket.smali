.class public final Lcom/google/audio/ears/proto/EarsService$MediaPacket;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPacket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$MediaPacket;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private isLast_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 833
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->clear()Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 834
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 2

    .prologue
    .line 778
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    if-nez v0, :cond_1

    .line 779
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 784
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    return-object v0

    .line 784
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 901
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    .line 838
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    .line 839
    iput-boolean v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 840
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    .line 841
    return-object p0
.end method

.method public clearData()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    .line 809
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    .line 810
    return-object p0
.end method

.method public clearIsLast()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 828
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    .line 829
    return-object p0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    return-object v0
.end method

.method public getIsLast()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 857
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 858
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 859
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    :cond_0
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 863
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    .line 867
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLast()Z
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 876
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 880
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    :sswitch_0
    return-object p0

    .line 886
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    .line 887
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    goto :goto_0

    .line 891
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 892
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
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
    .line 772
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 797
    if-nez p1, :cond_0

    .line 798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 800
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    .line 801
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    .line 802
    return-object p0
.end method

.method public setIsLast(Z)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 820
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    .line 821
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
    .line 847
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 850
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 851
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 853
    :cond_1
    return-void
.end method
