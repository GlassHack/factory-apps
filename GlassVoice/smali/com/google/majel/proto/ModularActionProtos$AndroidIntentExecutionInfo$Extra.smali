.class public final Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x5

.field public static final TYPE_INTEGER:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_STRING:I = 0x1

.field public static final TYPE_STRING_ARRAY:I = 0x6

.field public static final TYPE_URI:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private type_:I

.field public value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2662
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->clear()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    .line 2663
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 2

    .prologue
    .line 2604
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    if-nez v0, :cond_1

    .line 2605
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2607
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    if-nez v0, :cond_0

    .line 2608
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    .line 2610
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    return-object v0

    .line 2610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2751
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2745
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1

    .prologue
    .line 2666
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    .line 2667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    .line 2668
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->cachedSize:I

    .line 2671
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1

    .prologue
    .line 2634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    .line 2635
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    .line 2636
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1

    .prologue
    .line 2653
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    .line 2654
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    .line 2655
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2690
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2691
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2692
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2695
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2696
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2699
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v1, :cond_2

    .line 2700
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2703
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->cachedSize:I

    .line 2704
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2642
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2631
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2650
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

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
    .line 2590
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2713
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2717
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2718
    :sswitch_0
    return-object p0

    .line 2723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    .line 2724
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    goto :goto_0

    .line 2728
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    .line 2729
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    goto :goto_0

    .line 2733
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v1, :cond_1

    .line 2734
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2736
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2623
    if-nez p1, :cond_0

    .line 2624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2626
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    .line 2627
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    .line 2628
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2645
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    .line 2646
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    .line 2647
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
    .line 2677
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2678
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2680
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2681
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2683
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v0, :cond_2

    .line 2684
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->value:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2686
    :cond_2
    return-void
.end method
