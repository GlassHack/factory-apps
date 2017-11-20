.class public final Lcom/google/speech/s3/Audio$S3AudioData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3AudioData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/Audio$S3AudioData;


# instance fields
.field private audio_:[B

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->clear()Lcom/google/speech/s3/Audio$S3AudioData;

    .line 219
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/google/speech/s3/Audio$S3AudioData;->_emptyArray:[Lcom/google/speech/s3/Audio$S3AudioData;

    if-nez v0, :cond_1

    .line 183
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/Audio$S3AudioData;->_emptyArray:[Lcom/google/speech/s3/Audio$S3AudioData;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/Audio$S3AudioData;

    sput-object v0, Lcom/google/speech/s3/Audio$S3AudioData;->_emptyArray:[Lcom/google/speech/s3/Audio$S3AudioData;

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    sget-object v0, Lcom/google/speech/s3/Audio$S3AudioData;->_emptyArray:[Lcom/google/speech/s3/Audio$S3AudioData;

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Audio$S3AudioData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/Audio$S3AudioData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    .line 223
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    .line 225
    return-object p0
.end method

.method public clearAudio()Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    .line 213
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public getAudio()[B
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 239
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    .line 244
    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

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
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/Audio$S3AudioData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 253
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 257
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    :sswitch_0
    return-object p0

    .line 263
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    .line 264
    iget v1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    goto :goto_0

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setAudio([B)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    .line 205
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    .line 206
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
    .line 231
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 234
    :cond_0
    return-void
.end method
