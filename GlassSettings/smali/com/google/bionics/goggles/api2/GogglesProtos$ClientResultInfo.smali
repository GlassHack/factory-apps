.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientResultInfo"
.end annotation


# static fields
.field public static final RESULT_DISPOSITION_RESULT_FILTERED_SCENE_CHANGE:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;


# instance fields
.field public resultDispositions:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2667
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2668
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 2

    .prologue
    .line 2652
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    if-nez v0, :cond_1

    .line 2653
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2655
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    if-nez v0, :cond_0

    .line 2656
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2658
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    return-object v0

    .line 2658
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2770
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2764
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1

    .prologue
    .line 2671
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    .line 2672
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    .line 2673
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2688
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 2689
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2690
    const/4 v0, 0x0

    .line 2691
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 2692
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    aget v1, v4, v2

    .line 2693
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2691
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2696
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 2697
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2699
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    .line 2700
    return v3
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 2709
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 2713
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2714
    :sswitch_0
    return-object p0

    .line 2719
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2721
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 2722
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2723
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 2724
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2726
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 2727
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2728
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2726
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2721
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v1, v8

    goto :goto_1

    .line 2731
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2732
    iput-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    goto :goto_0

    .line 2736
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 2737
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2739
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 2740
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 2741
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 2742
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2743
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2745
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2746
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 2747
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2748
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 2749
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2751
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 2752
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2751
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2746
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v1, v8

    goto :goto_4

    .line 2754
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    .line 2755
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2709
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
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
    .line 2643
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    move-result-object v0

    return-object v0
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
    .line 2679
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2681
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2684
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
