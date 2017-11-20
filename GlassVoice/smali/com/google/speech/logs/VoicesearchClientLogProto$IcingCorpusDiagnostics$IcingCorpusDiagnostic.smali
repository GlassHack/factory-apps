.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcingCorpusDiagnostic"
.end annotation


# static fields
.field public static final CORPUS_APPS:I = 0x0

.field public static final CORPUS_CONTACTS:I = 0x1

.field public static final DIAGNOSTIC_ALL_INDEXED:I = 0x0

.field public static final DIAGNOSTIC_FAILED:I = 0x4

.field public static final DIAGNOSTIC_NONE_INDEXED:I = 0x2

.field public static final DIAGNOSTIC_NOT_REGISTERED:I = 0x3

.field public static final DIAGNOSTIC_SOME_INDEXED:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;


# instance fields
.field private bitField0_:I

.field private corpus_:I

.field private diagnostic_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2655
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    .line 2656
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 2

    .prologue
    .line 2603
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    if-nez v0, :cond_1

    .line 2604
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2606
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    if-nez v0, :cond_0

    .line 2607
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    .line 2609
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    return-object v0

    .line 2609
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2729
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2723
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2659
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    .line 2660
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    .line 2661
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    .line 2662
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->cachedSize:I

    .line 2663
    return-object p0
.end method

.method public clearCorpus()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1

    .prologue
    .line 2630
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    .line 2631
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    .line 2632
    return-object p0
.end method

.method public clearDiagnostic()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1

    .prologue
    .line 2649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    .line 2650
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    .line 2651
    return-object p0
.end method

.method public getCorpus()I
    .locals 1

    .prologue
    .line 2619
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    return v0
.end method

.method public getDiagnostic()I
    .locals 1

    .prologue
    .line 2638
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2679
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2680
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2681
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2684
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2685
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2688
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->cachedSize:I

    .line 2689
    return v0
.end method

.method public hasCorpus()Z
    .locals 1

    .prologue
    .line 2627
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiagnostic()Z
    .locals 1

    .prologue
    .line 2646
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

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
    .line 2586
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2698
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2702
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    :sswitch_0
    return-object p0

    .line 2708
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    .line 2709
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    goto :goto_0

    .line 2713
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    .line 2714
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    goto :goto_0

    .line 2698
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCorpus(I)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2622
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    .line 2623
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    .line 2624
    return-object p0
.end method

.method public setDiagnostic(I)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    .line 2642
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    .line 2643
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
    .line 2669
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2670
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->corpus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2672
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2673
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->diagnostic_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2675
    :cond_1
    return-void
.end method
