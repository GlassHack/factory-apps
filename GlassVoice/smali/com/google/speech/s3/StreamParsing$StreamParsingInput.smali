.class public final Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "StreamParsing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/StreamParsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamParsingInput"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;


# instance fields
.field private bitField0_:I

.field private enableStreamParsing_:Z

.field private waitForPauses_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->clear()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 67
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    sput-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->_emptyArray:[Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-direct {v0}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    invoke-direct {v0}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    .line 71
    iput-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->cachedSize:I

    .line 74
    return-object p0
.end method

.method public clearEnableStreamParsing()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    .line 42
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearWaitForPauses()Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    .line 61
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public getEnableStreamParsing()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 91
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->cachedSize:I

    .line 100
    return v0
.end method

.method public getWaitForPauses()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    return v0
.end method

.method public hasEnableStreamParsing()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWaitForPauses()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 109
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    .line 120
    iget v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    goto :goto_0

    .line 124
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    .line 125
    iget v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEnableStreamParsing(Z)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    .line 34
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setWaitForPauses(Z)Lcom/google/speech/s3/StreamParsing$StreamParsingInput;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    .line 53
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    .line 54
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
    .line 80
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->enableStreamParsing_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/s3/StreamParsing$StreamParsingInput;->waitForPauses_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 86
    :cond_1
    return-void
.end method
