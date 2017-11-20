.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopContact"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;


# instance fields
.field private affinity_:F

.field private bitField0_:I

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 545
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    .line 546
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    if-nez v0, :cond_1

    .line 491
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    .line 496
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->cachedSize:I

    .line 553
    return-object p0
.end method

.method public clearAffinity()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    .line 540
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    .line 541
    return-object p0
.end method

.method public clearName()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1

    .prologue
    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    .line 521
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    .line 522
    return-object p0
.end method

.method public getAffinity()F
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 569
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 570
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    :cond_0
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 575
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_1
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->cachedSize:I

    .line 579
    return v0
.end method

.method public hasAffinity()Z
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

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
    .line 484
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 588
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    :sswitch_0
    return-object p0

    .line 598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    .line 599
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    goto :goto_0

    .line 603
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    .line 604
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    goto :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAffinity(F)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    .line 532
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    .line 533
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 512
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    .line 513
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    .line 514
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
    .line 559
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 562
    :cond_0
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 563
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;->affinity_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 565
    :cond_1
    return-void
.end method
