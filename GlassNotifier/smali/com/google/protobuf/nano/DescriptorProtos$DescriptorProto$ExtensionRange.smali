.class public final Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 630
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 631
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2

    .prologue
    .line 610
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_1

    .line 611
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_0

    .line 614
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 616
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0

    .line 616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 634
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    .line 635
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->cachedSize:I

    .line 638
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 655
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 656
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    if-eqz v1, :cond_0

    .line 657
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    .line 658
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    if-eqz v1, :cond_1

    .line 661
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    .line 662
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 673
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 677
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    :sswitch_0
    return-object p0

    .line 683
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    goto :goto_0

    .line 687
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    goto :goto_0

    .line 673
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 647
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    if-eqz v0, :cond_1

    .line 648
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 650
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 651
    return-void
.end method
