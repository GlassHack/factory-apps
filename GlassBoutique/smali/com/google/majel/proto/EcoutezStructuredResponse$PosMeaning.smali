.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PosMeaning"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;


# instance fields
.field private bitField0_:I

.field public meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

.field private partOfSpeech_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6620
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6621
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 6622
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 2

    .prologue
    .line 6582
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    if-nez v0, :cond_1

    .line 6583
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6585
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    if-nez v0, :cond_0

    .line 6586
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 6588
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6590
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    return-object v0

    .line 6588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6720
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6714
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1

    .prologue
    .line 6625
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    .line 6626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 6627
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 6628
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    .line 6629
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1

    .prologue
    .line 6612
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 6613
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    .line 6614
    return-object p0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6650
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 6651
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 6652
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6655
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 6656
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 6657
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    aget-object v0, v3, v1

    .line 6658
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    if-eqz v0, :cond_1

    .line 6659
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6656
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6664
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    .line 6665
    return v2
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 6609
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

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
    .line 6576
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6674
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6678
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6679
    :sswitch_0
    return-object p0

    .line 6684
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 6685
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    goto :goto_0

    .line 6689
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6691
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    if-nez v5, :cond_2

    move v1, v4

    .line 6692
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 6694
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    if-eqz v1, :cond_1

    .line 6695
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6697
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6698
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    aput-object v5, v2, v1

    .line 6699
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6700
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6697
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6691
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    array-length v1, v5

    goto :goto_1

    .line 6703
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    aput-object v5, v2, v1

    .line 6704
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6705
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    goto :goto_0

    .line 6674
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6601
    if-nez p1, :cond_0

    .line 6602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6604
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 6605
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    .line 6606
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6635
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6636
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6638
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 6639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 6640
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    aget-object v0, v2, v1

    .line 6641
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    if-eqz v0, :cond_1

    .line 6642
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6639
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6646
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
