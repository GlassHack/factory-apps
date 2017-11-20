.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Synonym"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;


# instance fields
.field private bitField0_:I

.field private partOfSpeech_:Ljava/lang/String;

.field public synonym:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6768
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6769
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 6770
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 2

    .prologue
    .line 6730
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    if-nez v0, :cond_1

    .line 6731
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6733
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    if-nez v0, :cond_0

    .line 6734
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 6736
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6738
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    return-object v0

    .line 6736
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6870
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6864
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1

    .prologue
    .line 6773
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    .line 6774
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 6775
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    .line 6776
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    .line 6777
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1

    .prologue
    .line 6760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 6761
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    .line 6762
    return-object p0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6746
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 6798
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 6799
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6800
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6803
    :cond_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 6804
    const/4 v0, 0x0

    .line 6805
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 6806
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 6807
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 6808
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 6809
    add-int/lit8 v0, v0, 0x1

    .line 6810
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 6806
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6814
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 6815
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 6817
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    .line 6818
    return v4
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 6757
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

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
    .line 6724
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6827
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6831
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6832
    :sswitch_0
    return-object p0

    .line 6837
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 6838
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    goto :goto_0

    .line 6842
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6844
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 6845
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 6846
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6847
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6849
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6850
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 6851
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6849
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6844
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 6854
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 6855
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    goto :goto_0

    .line 6827
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6749
    if-nez p1, :cond_0

    .line 6750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6752
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 6753
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    .line 6754
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
    .line 6783
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6784
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6786
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 6787
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 6788
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 6789
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 6790
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6787
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6794
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
