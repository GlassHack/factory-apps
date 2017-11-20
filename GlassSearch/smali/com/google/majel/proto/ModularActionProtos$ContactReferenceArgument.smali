.class public final Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactReferenceArgument"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;


# instance fields
.field public layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

.field public value:Lcom/google/majel/proto/ContactProtos$ContactReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 726
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    .line 727
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-nez v0, :cond_1

    .line 709
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-nez v0, :cond_0

    .line 712
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    .line 714
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 731
    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->cachedSize:I

    .line 733
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 749
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 750
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v1, :cond_0

    .line 751
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    if-eqz v1, :cond_1

    .line 755
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->cachedSize:I

    .line 759
    return v0
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
    .line 702
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 768
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 772
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    :sswitch_0
    return-object p0

    .line 778
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v1, :cond_1

    .line 779
    new-instance v1, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v1}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 785
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    if-nez v1, :cond_2

    .line 786
    new-instance v1, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    .line 788
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 739
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 745
    :cond_1
    return-void
.end method
