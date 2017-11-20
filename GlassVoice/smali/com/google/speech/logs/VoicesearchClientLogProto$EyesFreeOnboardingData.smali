.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EyesFreeOnboardingData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;


# instance fields
.field private bitField0_:I

.field private currentScreenId_:Ljava/lang/String;

.field private eyesFreeOptedIn_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2505
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    .line 2506
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 2

    .prologue
    .line 2450
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    if-nez v0, :cond_1

    .line 2451
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2453
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    if-nez v0, :cond_0

    .line 2454
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    .line 2456
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    return-object v0

    .line 2456
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2579
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2573
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2509
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    .line 2510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    .line 2511
    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    .line 2512
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->cachedSize:I

    .line 2513
    return-object p0
.end method

.method public clearCurrentScreenId()Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1

    .prologue
    .line 2480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    .line 2481
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    .line 2482
    return-object p0
.end method

.method public clearEyesFreeOptedIn()Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1

    .prologue
    .line 2499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    .line 2500
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    .line 2501
    return-object p0
.end method

.method public getCurrentScreenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    return-object v0
.end method

.method public getEyesFreeOptedIn()Z
    .locals 1

    .prologue
    .line 2488
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2529
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2530
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2531
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2535
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2538
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->cachedSize:I

    .line 2539
    return v0
.end method

.method public hasCurrentScreenId()Z
    .locals 1

    .prologue
    .line 2477
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEyesFreeOptedIn()Z
    .locals 1

    .prologue
    .line 2496
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

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
    .line 2444
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2547
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2548
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2552
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2553
    :sswitch_0
    return-object p0

    .line 2558
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    .line 2559
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    goto :goto_0

    .line 2563
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    .line 2564
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    goto :goto_0

    .line 2548
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCurrentScreenId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2469
    if-nez p1, :cond_0

    .line 2470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2472
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    .line 2473
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    .line 2474
    return-object p0
.end method

.method public setEyesFreeOptedIn(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2491
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    .line 2492
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    .line 2493
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
    .line 2519
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2520
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->currentScreenId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2522
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2523
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EyesFreeOnboardingData;->eyesFreeOptedIn_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2525
    :cond_1
    return-void
.end method
