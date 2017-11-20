.class public final Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeQueryPublicRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;


# instance fields
.field public authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

.field private bitField0_:I

.field private queryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 456
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->clear()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    .line 457
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    if-nez v0, :cond_1

    .line 418
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    sput-object v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    .line 423
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :cond_1
    sget-object v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->_emptyArray:[Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    .line 464
    return-object p0
.end method

.method public clearQueryId()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1

    .prologue
    .line 447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 448
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    .line 449
    return-object p0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 480
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 481
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 482
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-eqz v1, :cond_1

    .line 486
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->cachedSize:I

    .line 490
    return v0
.end method

.method public hasQueryId()Z
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

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
    .line 411
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 499
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 503
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    :sswitch_0
    return-object p0

    .line 509
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 510
    iget v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    goto :goto_0

    .line 514
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-nez v1, :cond_1

    .line 515
    new-instance v1, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setQueryId(Ljava/lang/String;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 439
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    .line 440
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    .line 441
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
    .line 470
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->queryId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicRequest;->authInfo:Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 476
    :cond_1
    return-void
.end method
