.class public final Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputRequest;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private currentInput_:Ljava/lang/String;

.field private prompt_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7797
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7798
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7803
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 7822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7798
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7973
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7967
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-object v0
.end method


# virtual methods
.method public final clearControl()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7816
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 7817
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7818
    return-object p0
.end method

.method public final clearCurrentInput()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7861
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7862
    return-object p0
.end method

.method public final clearPrompt()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7839
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7840
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7867
    if-ne p1, p0, :cond_1

    .line 7873
    :cond_0
    :goto_0
    return v0

    .line 7868
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7869
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 7870
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 7871
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 7872
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 7873
    goto :goto_0

    .line 7870
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7871
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7872
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    .line 7873
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getControl()I
    .locals 1

    .prologue
    .line 7805
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    return v0
.end method

.method public final getCurrentInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7846
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7824
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7902
    const/4 v0, 0x0

    .line 7903
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7904
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 7905
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7907
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7908
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7909
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7911
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7912
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7913
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7915
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7916
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->cachedSize:I

    .line 7917
    return v0
.end method

.method public final hasControl()Z
    .locals 1

    .prologue
    .line 7813
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCurrentInput()Z
    .locals 1

    .prologue
    .line 7857
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrompt()Z
    .locals 1

    .prologue
    .line 7835
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7877
    .line 7878
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    add-int/lit16 v0, v0, 0x20f

    .line 7879
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 7880
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 7881
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 7882
    return v0

    .line 7879
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 7880
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 7881
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7926
    sparse-switch v0, :sswitch_data_0

    .line 7930
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7931
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    .line 7934
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7936
    :sswitch_0
    return-object p0

    .line 7941
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7942
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7944
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 7945
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 7947
    :cond_3
    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    goto :goto_0

    .line 7952
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7953
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 7957
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7958
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 7926
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7794
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setControl(I)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7808
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    .line 7809
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7810
    return-object p0
.end method

.method public final setCurrentInput(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7849
    if-nez p1, :cond_0

    .line 7850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7852
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 7853
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7854
    return-object p0
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 7827
    if-nez p1, :cond_0

    .line 7828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7830
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 7831
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 7832
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7887
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7888
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7890
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7891
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7893
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7894
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7896
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7898
    return-void
.end method
