.class public final Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FamousSpeechResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;


# instance fields
.field private bitField0_:I

.field private speakerName_:Ljava/lang/String;

.field private speechTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2611
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2612
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->clear()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 2613
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 2

    .prologue
    .line 2554
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    if-nez v0, :cond_1

    .line 2555
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2557
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    if-nez v0, :cond_0

    .line 2558
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 2560
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    return-object v0

    .line 2560
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2686
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2680
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2616
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    .line 2617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2618
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2619
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    .line 2620
    return-object p0
.end method

.method public clearSpeakerName()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2585
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    .line 2586
    return-object p0
.end method

.method public clearSpeechTitle()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2607
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    .line 2608
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2636
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2637
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2638
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2641
    :cond_0
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2642
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2645
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    .line 2646
    return v0
.end method

.method public getSpeakerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSpeakerName()Z
    .locals 1

    .prologue
    .line 2581
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeechTitle()Z
    .locals 1

    .prologue
    .line 2603
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2655
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2659
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2660
    :sswitch_0
    return-object p0

    .line 2665
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2666
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    goto :goto_0

    .line 2670
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2671
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    goto :goto_0

    .line 2655
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 2548
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v0

    return-object v0
.end method

.method public setSpeakerName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2573
    if-nez p1, :cond_0

    .line 2574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2576
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2577
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    .line 2578
    return-object p0
.end method

.method public setSpeechTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2595
    if-nez p1, :cond_0

    .line 2596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2598
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2599
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    .line 2600
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
    .line 2626
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2627
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2629
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2630
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2632
    :cond_1
    return-void
.end method
