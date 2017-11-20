.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Debug"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;


# instance fields
.field public debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4726
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4727
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 4728
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 2

    .prologue
    .line 4712
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    if-nez v0, :cond_1

    .line 4713
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4715
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    if-nez v0, :cond_0

    .line 4716
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 4718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4720
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    return-object v0

    .line 4718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4812
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4806
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1

    .prologue
    .line 4731
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4732
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    .line 4733
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4751
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 4752
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 4753
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 4754
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    aget-object v0, v3, v1

    .line 4755
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    if-eqz v0, :cond_0

    .line 4756
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4753
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4761
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    .line 4762
    return v2
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
    .line 4706
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4770
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4771
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4775
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4776
    :sswitch_0
    return-object p0

    .line 4781
    :sswitch_1
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4783
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    if-nez v5, :cond_2

    move v1, v4

    .line 4784
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4786
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    if-eqz v1, :cond_1

    .line 4787
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4789
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4790
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    aput-object v5, v2, v1

    .line 4791
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4792
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4789
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4783
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    array-length v1, v5

    goto :goto_1

    .line 4795
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_3
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    aput-object v5, v2, v1

    .line 4796
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4797
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    goto :goto_0

    .line 4771
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
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
    .line 4739
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 4740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4741
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    aget-object v0, v2, v1

    .line 4742
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    if-eqz v0, :cond_0

    .line 4743
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4740
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4747
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
