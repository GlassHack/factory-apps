.class public Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;
.super Ljava/lang/Object;
.source "ClockworkProxyTcpConduit.java"


# instance fields
.field private final mBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannel:Ljava/nio/channels/SocketChannel;

.field private mLastReceivedSeqNum:J

.field private mLastSentSeqNum:J

.field private mNumBytesReceived:J

.field private mNumBytesSent:J

.field private final mOtherNodeClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStreamId:I


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;I)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "streamId"    # I

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mOtherNodeClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    .line 25
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mChannel:Ljava/nio/channels/SocketChannel;

    .line 26
    iput p2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mStreamId:I

    .line 27
    iput-wide v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastReceivedSeqNum:J

    .line 28
    iput-wide v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastSentSeqNum:J

    .line 29
    iput-wide v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesSent:J

    .line 30
    iput-wide v4, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesReceived:J

    .line 31
    return-void
.end method


# virtual methods
.method public appendWrite(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastReceivedSeqNum()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastReceivedSeqNum:J

    return-wide v0
.end method

.method public getLastSentSeqNum()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastSentSeqNum:J

    return-wide v0
.end method

.method public getNextExpectedReceivedSeqNum()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getLastReceivedSeqNum()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 121
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getLastReceivedSeqNum()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNextSentSeqNum()J
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getLastSentSeqNum()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 110
    const-wide/16 v0, 0x0

    .line 114
    .local v0, "seqNumOfThisPacket":J
    :goto_0
    return-wide v0

    .line 112
    .end local v0    # "seqNumOfThisPacket":J
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getLastSentSeqNum()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .restart local v0    # "seqNumOfThisPacket":J
    goto :goto_0
.end method

.method public getNumBytesReceived()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesReceived:J

    return-wide v0
.end method

.method public getNumBytesSent()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesSent:J

    return-wide v0
.end method

.method public getOtherNodeClosed()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mOtherNodeClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mStreamId:I

    return v0
.end method

.method public hasPendingWrites()Z
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastReceivedSeqNum(J)V
    .locals 0
    .param p1, "seqNum"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastReceivedSeqNum:J

    .line 80
    return-void
.end method

.method public setLastSentSeqNum(J)V
    .locals 0
    .param p1, "seqNum"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastSentSeqNum:J

    .line 89
    return-void
.end method

.method public setNumBytesReceived(J)V
    .locals 0
    .param p1, "numBytesReceived"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesReceived:J

    .line 105
    return-void
.end method

.method public setNumBytesSent(J)V
    .locals 0
    .param p1, "numBytesSent"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesSent:J

    .line 97
    return-void
.end method

.method public setOtherNodeClosed()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mOtherNodeClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClockworkProxyTcpConduit["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mNumBytesReceived:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastReceivedSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastReceivedSeqNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastSentSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mLastSentSeqNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherNodeClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mOtherNodeClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeNow()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "bytesWritten":I
    iget-object v3, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    monitor-enter v3

    .line 60
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 62
    .local v1, "first":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 63
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    .end local v1    # "first":Ljava/nio/ByteBuffer;
    :cond_0
    monitor-exit v3

    .line 70
    return v0

    .line 66
    .restart local v1    # "first":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lcom/google/android/clockwork/proxy/ClockworkProxyTcpConduit;->mBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v1    # "first":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
