.class public final Lcom/google/majel/proto/ModularActionProtos$StringArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringArgument"
.end annotation


# static fields
.field public static final TEXT_TYPE_MULTI_LINE:I = 0x2

.field public static final TEXT_TYPE_SINGLE_LINE:I = 0x1

.field public static final TEXT_TYPE_UNKNOWN_TEXT_TYPE:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$StringArgument;


# instance fields
.field private bitField0_:I

.field private textType_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 624
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    .line 625
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    if-nez v0, :cond_1

    .line 570
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    .line 575
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    .line 629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    .line 630
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    .line 631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->cachedSize:I

    .line 632
    return-object p0
.end method

.method public clearTextType()Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    .line 619
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    .line 620
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1

    .prologue
    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    .line 600
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    .line 601
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 648
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 649
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 654
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->cachedSize:I

    .line 658
    return v0
.end method

.method public getTextType()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTextType()Z
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

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
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$StringArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 667
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 671
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    :sswitch_0
    return-object p0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    .line 678
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    goto :goto_0

    .line 682
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    .line 683
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    goto :goto_0

    .line 667
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public setTextType(I)Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 610
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    .line 611
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    .line 612
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$StringArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 591
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    .line 592
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    .line 593
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
    .line 638
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$StringArgument;->textType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 644
    :cond_1
    return-void
.end method
