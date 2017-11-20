.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugServer"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/String;

.field public pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field public singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

.field public tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4866
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4867
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4868
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 2

    .prologue
    .line 4822
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    if-nez v0, :cond_1

    .line 4823
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4825
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    if-nez v0, :cond_0

    .line 4826
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4828
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4830
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    return-object v0

    .line 4828
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4973
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4967
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4871
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    .line 4872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4873
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 4874
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 4875
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 4876
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    .line 4877
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4853
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    .line 4854
    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4838
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4899
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4900
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4901
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4904
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-eqz v1, :cond_1

    .line 4905
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4908
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-eqz v1, :cond_2

    .line 4909
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4912
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-eqz v1, :cond_3

    .line 4913
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4916
    :cond_3
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    .line 4917
    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 4849
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

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
    .line 4816
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4926
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4930
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4931
    :sswitch_0
    return-object p0

    .line 4936
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4937
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    goto :goto_0

    .line 4941
    :sswitch_2
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-nez v1, :cond_1

    .line 4942
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 4944
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4948
    :sswitch_3
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-nez v1, :cond_2

    .line 4949
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 4951
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4955
    :sswitch_4
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-nez v1, :cond_3

    .line 4956
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 4958
    :cond_3
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4926
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4841
    if-nez p1, :cond_0

    .line 4842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4844
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4845
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    .line 4846
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
    .line 4883
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4884
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4886
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-eqz v0, :cond_1

    .line 4887
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4889
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-eqz v0, :cond_2

    .line 4890
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4892
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-eqz v0, :cond_3

    .line 4893
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4895
    :cond_3
    return-void
.end method
