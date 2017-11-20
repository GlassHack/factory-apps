.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionOptions"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;


# instance fields
.field private annotation_:Ljava/lang/String;

.field private bitField0_:I

.field public clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

.field private locale_:Ljava/lang/String;

.field private textLanguageHint_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 750
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 751
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 2

    .prologue
    .line 667
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    if-nez v0, :cond_1

    .line 668
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 673
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 757
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 758
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 759
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    .line 760
    return-object p0
.end method

.method public clearAnnotation()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 697
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 698
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 699
    return-object p0
.end method

.method public clearLocale()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 722
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 723
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 724
    return-object p0
.end method

.method public clearTextLanguageHint()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 745
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 746
    return-object p0
.end method

.method public getAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 782
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 783
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 784
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    if-eqz v1, :cond_1

    .line 788
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 792
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 796
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 799
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    .line 800
    return v0
.end method

.method public getTextLanguageHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotation()Z
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextLanguageHint()Z
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 809
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 813
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    :sswitch_0
    return-object p0

    .line 819
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 820
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    goto :goto_0

    .line 824
    :sswitch_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    if-nez v1, :cond_1

    .line 825
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 831
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 832
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    goto :goto_0

    .line 836
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 837
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    goto :goto_0

    .line 809
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
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
    .line 661
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotation(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 689
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 690
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 691
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 714
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 715
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 716
    return-object p0
.end method

.method public setTextLanguageHint(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 736
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    .line 737
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    .line 738
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
    .line 766
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    if-eqz v0, :cond_1

    .line 770
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 772
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 773
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 775
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 776
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->textLanguageHint_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 778
    :cond_3
    return-void
.end method
