.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcingCorpusDiagnostics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;


# instance fields
.field private bitField0_:I

.field private deviceStorageLow_:Z

.field public diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2772
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    .line 2773
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 2

    .prologue
    .line 2736
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    if-nez v0, :cond_1

    .line 2737
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2739
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    if-nez v0, :cond_0

    .line 2740
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    .line 2742
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    return-object v0

    .line 2742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2871
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2865
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2776
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    .line 2777
    invoke-static {}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;->emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    .line 2778
    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    .line 2779
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->cachedSize:I

    .line 2780
    return-object p0
.end method

.method public clearDeviceStorageLow()Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 1

    .prologue
    .line 2766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    .line 2767
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    .line 2768
    return-object p0
.end method

.method public getDeviceStorageLow()Z
    .locals 1

    .prologue
    .line 2755
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2801
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2802
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 2803
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2804
    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    aget-object v0, v3, v1

    .line 2805
    .local v0, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    if-eqz v0, :cond_0

    .line 2806
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2811
    .end local v0    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 2812
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2815
    :cond_2
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->cachedSize:I

    .line 2816
    return v2
.end method

.method public hasDeviceStorageLow()Z
    .locals 1

    .prologue
    .line 2763
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

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
    .line 2583
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2825
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2829
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2830
    :sswitch_0
    return-object p0

    .line 2835
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2837
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    if-nez v5, :cond_2

    move v1, v4

    .line 2838
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    .line 2840
    .local v2, "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    if-eqz v1, :cond_1

    .line 2841
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2843
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2844
    new-instance v5, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    invoke-direct {v5}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;-><init>()V

    aput-object v5, v2, v1

    .line 2845
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2846
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2843
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2837
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    array-length v1, v5

    goto :goto_1

    .line 2849
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    invoke-direct {v5}, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;-><init>()V

    aput-object v5, v2, v1

    .line 2850
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2851
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    goto :goto_0

    .line 2855
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    .line 2856
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    goto :goto_0

    .line 2825
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDeviceStorageLow(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2758
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    .line 2759
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    .line 2760
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2787
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2788
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->diagnostics:[Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;

    aget-object v0, v2, v1

    .line 2789
    .local v0, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    if-eqz v0, :cond_0

    .line 2790
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2787
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2794
    .end local v0    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics$IcingCorpusDiagnostic;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2795
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$IcingCorpusDiagnostics;->deviceStorageLow_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2797
    :cond_2
    return-void
.end method
