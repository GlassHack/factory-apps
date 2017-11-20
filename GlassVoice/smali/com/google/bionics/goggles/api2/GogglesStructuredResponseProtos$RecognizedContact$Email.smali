.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 556
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 557
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 2

    .prologue
    .line 520
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    if-nez v0, :cond_1

    .line 521
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 526
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    return-object v0

    .line 526
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->cachedSize:I

    .line 563
    return-object p0
.end method

.method public clearAddress()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1

    .prologue
    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    .line 551
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    .line 552
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 576
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 577
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_0
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->cachedSize:I

    .line 582
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 591
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 595
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    :sswitch_0
    return-object p0

    .line 601
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    .line 602
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    goto :goto_0

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 514
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    .line 543
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    .line 544
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
    .line 569
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method
