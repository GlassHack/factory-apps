.class public final Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/clockwork/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkSearchResponse"
.end annotation


# static fields
.field public static final STATUS_GENERAL_ERROR:I = 0x1

.field public static final STATUS_REQUEST_THROTTLED:I = 0x2

.field public static final STATUS_SUCCESS:I

.field private static volatile _emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;


# instance fields
.field private bitField0_:I

.field private status_:I

.field public structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 748
    invoke-virtual {p0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->clear()Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .line 749
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 2

    .prologue
    .line 712
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    if-nez v0, :cond_1

    .line 713
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    sput-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .line 718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :cond_1
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    return-object v0

    .line 718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 752
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    .line 753
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->cachedSize:I

    .line 756
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    .line 740
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    .line 741
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 773
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 774
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    if-eqz v1, :cond_1

    .line 778
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_1
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->cachedSize:I

    .line 782
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 701
    invoke-virtual {p0, p1}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 791
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 795
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    :sswitch_0
    return-object p0

    .line 801
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    .line 802
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    goto :goto_0

    .line 806
    :sswitch_2
    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    if-nez v1, :cond_1

    .line 807
    new-instance v1, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-direct {v1}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 791
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setStatus(I)Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 731
    iput p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    .line 732
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    .line 733
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
    .line 762
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    if-eqz v0, :cond_1

    .line 766
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;->structuredResult:Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 768
    :cond_1
    return-void
.end method
