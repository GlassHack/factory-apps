.class public final Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextModelLog"
.end annotation


# static fields
.field public static final CONTEXT_MODEL_TYPE_FOCUS_CONTACTS:I = 0x2

.field public static final CONTEXT_MODEL_TYPE_TOP_CONTACTS:I = 0x3

.field public static final CONTEXT_MODEL_TYPE_UNIFIED_CONTACTS:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;


# instance fields
.field private bitField0_:I

.field private modelType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1671
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    .line 1672
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 2

    .prologue
    .line 1638
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    if-nez v0, :cond_1

    .line 1639
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1641
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    if-nez v0, :cond_0

    .line 1642
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    .line 1644
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    return-object v0

    .line 1644
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1732
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1726
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 1

    .prologue
    .line 1675
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    .line 1676
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    .line 1677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->cachedSize:I

    .line 1678
    return-object p0
.end method

.method public clearModelType()Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    .line 1666
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    .line 1667
    return-object p0
.end method

.method public getModelType()I
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1691
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1692
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1693
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->cachedSize:I

    .line 1697
    return v0
.end method

.method public hasModelType()Z
    .locals 1

    .prologue
    .line 1662
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

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
    .line 1627
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1706
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1710
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1711
    :sswitch_0
    return-object p0

    .line 1716
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    .line 1717
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    goto :goto_0

    .line 1706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setModelType(I)Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1657
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    .line 1658
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    .line 1659
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
    .line 1684
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1685
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$ContextModelLog;->modelType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1687
    :cond_0
    return-void
.end method
