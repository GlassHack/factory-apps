.class public final Lspeech/DecodedWordProto$DecodedWord;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "DecodedWordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/DecodedWordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodedWord"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lspeech/DecodedWordProto$DecodedWord;


# instance fields
.field public endFrame:I

.field public startFrame:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->clear()Lspeech/DecodedWordProto$DecodedWord;

    .line 36
    return-void
.end method

.method public static emptyArray()[Lspeech/DecodedWordProto$DecodedWord;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lspeech/DecodedWordProto$DecodedWord;->_emptyArray:[Lspeech/DecodedWordProto$DecodedWord;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lspeech/DecodedWordProto$DecodedWord;->_emptyArray:[Lspeech/DecodedWordProto$DecodedWord;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lspeech/DecodedWordProto$DecodedWord;

    sput-object v0, Lspeech/DecodedWordProto$DecodedWord;->_emptyArray:[Lspeech/DecodedWordProto$DecodedWord;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lspeech/DecodedWordProto$DecodedWord;->_emptyArray:[Lspeech/DecodedWordProto$DecodedWord;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v0}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/DecodedWordProto$DecodedWord;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v0}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    return-object v0
.end method


# virtual methods
.method public clear()Lspeech/DecodedWordProto$DecodedWord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lspeech/DecodedWordProto$DecodedWord;->text:Ljava/lang/String;

    .line 40
    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame:I

    .line 41
    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    .line 43
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 57
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lspeech/DecodedWordProto$DecodedWord;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    const/4 v1, 0x2

    iget v2, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    const/4 v1, 0x3

    iget v2, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    .line 64
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
    invoke-virtual {p0, p1}, Lspeech/DecodedWordProto$DecodedWord;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/DecodedWordProto$DecodedWord;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 73
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 77
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :sswitch_0
    return-object p0

    .line 83
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lspeech/DecodedWordProto$DecodedWord;->text:Ljava/lang/String;

    goto :goto_0

    .line 87
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame:I

    goto :goto_0

    .line 91
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame:I

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Lspeech/DecodedWordProto$DecodedWord;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 50
    const/4 v0, 0x2

    iget v1, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 51
    const/4 v0, 0x3

    iget v1, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 52
    return-void
.end method
