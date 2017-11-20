.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostalAddress"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;


# instance fields
.field private bitField0_:I

.field private full_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 663
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 664
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    if-nez v0, :cond_1

    .line 628
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    return-object v0

    .line 633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->cachedSize:I

    .line 670
    return-object p0
.end method

.method public clearFull()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1

    .prologue
    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    .line 658
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    .line 659
    return-object p0
.end method

.method public getFull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 683
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 684
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 685
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 688
    :cond_0
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->cachedSize:I

    .line 689
    return v0
.end method

.method public hasFull()Z
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 698
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 702
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    :sswitch_0
    return-object p0

    .line 708
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    .line 709
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    goto :goto_0

    .line 698
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
    .line 621
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public setFull(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    .line 650
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    .line 651
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
    .line 676
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->full_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 679
    :cond_0
    return-void
.end method
