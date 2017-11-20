.class public final Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SoundSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/SoundSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearchInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;


# instance fields
.field private bitField0_:I

.field public lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

.field public streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

.field private ttsOutputEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->clear()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 54
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->_emptyArray:[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->_emptyArray:[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    sput-object v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->_emptyArray:[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->_emptyArray:[Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    .line 58
    iput-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 59
    iput-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 60
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    .line 62
    return-object p0
.end method

.method public clearTtsOutputEnabled()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 48
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 82
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_1
    iget v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_2
    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    .line 95
    return v0
.end method

.method public getTtsOutputEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    return v0
.end method

.method public hasTtsOutputEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 104
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 108
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :sswitch_0
    return-object p0

    .line 114
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 121
    :sswitch_2
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-nez v1, :cond_2

    .line 122
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 128
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 129
    iget v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 40
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    .line 41
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
    .line 68
    iget-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 74
    :cond_1
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 77
    :cond_2
    return-void
.end method
