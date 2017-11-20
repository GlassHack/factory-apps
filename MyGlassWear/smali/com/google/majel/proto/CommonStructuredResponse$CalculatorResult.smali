.class public final Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalculatorResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;


# instance fields
.field private bitField0_:I

.field private left_:Ljava/lang/String;

.field private right_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 816
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->clear()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 817
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 2

    .prologue
    .line 758
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    if-nez v0, :cond_1

    .line 759
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    if-nez v0, :cond_0

    .line 762
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    sput-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 764
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    return-object v0

    .line 764
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    .line 821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 823
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    .line 824
    return-object p0
.end method

.method public clearLeft()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 789
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    .line 790
    return-object p0
.end method

.method public clearRight()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 811
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    .line 812
    return-object p0
.end method

.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 840
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 841
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 842
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 846
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 849
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    .line 850
    return v0
.end method

.method public hasLeft()Z
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRight()Z
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

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
    .line 752
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 859
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 863
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    :sswitch_0
    return-object p0

    .line 869
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 870
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    goto :goto_0

    .line 874
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 875
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    goto :goto_0

    .line 859
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLeft(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 777
    if-nez p1, :cond_0

    .line 778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 780
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 781
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    .line 782
    return-object p0
.end method

.method public setRight(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 802
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 803
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    .line 804
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
    .line 830
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 833
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 834
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 836
    :cond_1
    return-void
.end method
