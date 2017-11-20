.class public final Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslationConsoleString"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;


# instance fields
.field private bitField0_:I

.field private messageId_:I

.field private setId_:I

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9691
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9692
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->clear()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9693
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 2

    .prologue
    .line 9618
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-nez v0, :cond_1

    .line 9619
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9621
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-nez v0, :cond_0

    .line 9622
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9624
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9626
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0

    .line 9624
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9779
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9773
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9696
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9697
    const/16 v0, 0x36

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 9698
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 9699
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 9700
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    .line 9701
    return-object p0
.end method

.method public clearMessageId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 9664
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 9665
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9666
    return-object p0
.end method

.method public clearSetId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 9645
    const/16 v0, 0x36

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 9646
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9647
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 9686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 9687
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9688
    return-object p0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 9653
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9720
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9721
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9722
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9725
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9726
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9729
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9730
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9733
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    .line 9734
    return v0
.end method

.method public getSetId()I
    .locals 1

    .prologue
    .line 9634
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9672
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 9661
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetId()Z
    .locals 1

    .prologue
    .line 9642
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 9683
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 9612
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9743
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9747
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9748
    :sswitch_0
    return-object p0

    .line 9753
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 9754
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    goto :goto_0

    .line 9758
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 9759
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    goto :goto_0

    .line 9763
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 9764
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    goto :goto_0

    .line 9743
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMessageId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9656
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 9657
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9658
    return-object p0
.end method

.method public setSetId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9637
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 9638
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9639
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9675
    if-nez p1, :cond_0

    .line 9676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9678
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 9679
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    .line 9680
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
    .line 9707
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9708
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9710
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9711
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9713
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9714
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9716
    :cond_2
    return-void
.end method
