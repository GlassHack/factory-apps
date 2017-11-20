.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarsContext"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;


# instance fields
.field public grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 395
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    .line 396
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    if-nez v0, :cond_1

    .line 381
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    .line 386
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    return-object v0

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;->emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->cachedSize:I

    .line 401
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 419
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 420
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    aget-object v0, v3, v1

    .line 423
    .local v0, "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    if-eqz v0, :cond_0

    .line 424
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->cachedSize:I

    .line 430
    return v2
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
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 438
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 439
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 443
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 444
    :sswitch_0
    return-object p0

    .line 449
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 451
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    if-nez v5, :cond_2

    move v1, v4

    .line 452
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    .line 454
    .local v2, "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    if-eqz v1, :cond_1

    .line 455
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 458
    new-instance v5, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    invoke-direct {v5}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;-><init>()V

    aput-object v5, v2, v1

    .line 459
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 460
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 451
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    array-length v1, v5

    goto :goto_1

    .line 463
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    :cond_3
    new-instance v5, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    invoke-direct {v5}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;-><init>()V

    aput-object v5, v2, v1

    .line 464
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 465
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    goto :goto_0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 408
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;->grammar:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;

    aget-object v0, v2, v1

    .line 410
    .local v0, "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    if-eqz v0, :cond_0

    .line 411
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 408
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
