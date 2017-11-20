.class public final Lcom/google/speech/s3/Clockwork$ClockworkEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Clockwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/Clockwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkEvent;


# instance fields
.field public clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clear()Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    .line 30
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/Clockwork$ClockworkEvent;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    sput-object v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->_emptyArray:[Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-direct {v0}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/Clockwork$ClockworkEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    invoke-direct {v0}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/Clockwork$ClockworkEvent;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->cachedSize:I

    .line 35
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 49
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->cachedSize:I

    .line 54
    return v0
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Clockwork$ClockworkEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 63
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 67
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :sswitch_0
    return-object p0

    .line 73
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-direct {v1}, Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;-><init>()V

    iput-object v1, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 41
    iget-object v0, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/Clockwork$ClockworkEvent;->clockwork:Lcom/google/wireless/clockwork/Search$ClockworkSearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 44
    :cond_0
    return-void
.end method
