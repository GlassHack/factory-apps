.class public final Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeCgiParam"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->clear()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 294
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-nez v0, :cond_1

    .line 236
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    .line 298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    .line 301
    return-object p0
.end method

.method public clearKey()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 266
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    .line 267
    return-object p0
.end method

.method public clearValue()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 288
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    .line 289
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 318
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 323
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    .line 327
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

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
    .line 229
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 336
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 340
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    :sswitch_0
    return-object p0

    .line 346
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 347
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    goto :goto_0

    .line 351
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 352
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    goto :goto_0

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 258
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    .line 259
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 280
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    .line 281
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
    .line 307
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 310
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 313
    :cond_1
    return-void
.end method
