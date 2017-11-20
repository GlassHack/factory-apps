.class public final Lcom/google/audio/ears/proto/EarsService$EarsMessage;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsMessage;


# instance fields
.field public lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

.field public mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

.field public resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

.field public resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

.field public streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clear()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 49
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 53
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 54
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 55
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 56
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    .line 58
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 84
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    if-eqz v1, :cond_2

    .line 93
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    if-eqz v1, :cond_3

    .line 97
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-eqz v1, :cond_4

    .line 101
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_4
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    .line 105
    return v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 114
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 118
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :sswitch_0
    return-object p0

    .line 124
    :sswitch_1
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-nez v1, :cond_1

    .line 125
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 131
    :sswitch_2
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-nez v1, :cond_2

    .line 132
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 138
    :sswitch_3
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    if-nez v1, :cond_3

    .line 139
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 145
    :sswitch_4
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    if-nez v1, :cond_4

    .line 146
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;-><init>()V

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 152
    :sswitch_5
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-nez v1, :cond_5

    .line 153
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    move-result-object v0

    return-object v0
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
    .line 64
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_4
    return-void
.end method
