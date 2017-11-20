.class public final Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionLayoutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionLayoutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactReferenceArgumentLayoutInformation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;


# instance fields
.field private bitField0_:I

.field private size_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->clear()Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    .line 52
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    sput-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    .line 56
    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->cachedSize:I

    .line 58
    return-object p0
.end method

.method public clearSize()Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    .line 46
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 72
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->cachedSize:I

    .line 77
    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 86
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :sswitch_0
    return-object p0

    .line 96
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    .line 97
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSize(I)Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    .line 38
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    .line 39
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
    .line 64
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$ContactReferenceArgumentLayoutInformation;->size_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_0
    return-void
.end method
