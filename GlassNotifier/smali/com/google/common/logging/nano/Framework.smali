.class public final Lcom/google/common/logging/nano/Framework;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Framework.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Framework;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Framework;


# instance fields
.field private oneof_event_:I

.field public resolver:Lcom/google/common/logging/nano/Resolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Framework;->oneof_event_:I

    .line 30
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Framework;->clear()Lcom/google/common/logging/nano/Framework;

    .line 31
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Framework;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/google/common/logging/nano/Framework;->_emptyArray:[Lcom/google/common/logging/nano/Framework;

    if-nez v0, :cond_1

    .line 14
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Framework;->_emptyArray:[Lcom/google/common/logging/nano/Framework;

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Framework;

    sput-object v0, Lcom/google/common/logging/nano/Framework;->_emptyArray:[Lcom/google/common/logging/nano/Framework;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Framework;->_emptyArray:[Lcom/google/common/logging/nano/Framework;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Framework;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/common/logging/nano/Framework;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Framework;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Framework;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Framework;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Framework;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/common/logging/nano/Framework;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Framework;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Framework;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Framework;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    .line 35
    iput-object v0, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Framework;->cachedSize:I

    .line 37
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 88
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    .line 90
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Framework;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/google/common/logging/nano/Framework;

    .line 49
    .local v0, "other":Lcom/google/common/logging/nano/Framework;
    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-nez v3, :cond_5

    .line 50
    iget-object v3, v0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-nez v3, :cond_0

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 59
    :cond_3
    iget-object v3, v0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    iget-object v4, v0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Resolver;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 61
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-nez v1, :cond_1

    move v1, v2

    .line 69
    :goto_0
    add-int v0, v3, v1

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 71
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 73
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Resolver;->hashCode()I

    move-result v1

    goto :goto_0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Framework;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Framework;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 101
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 105
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :sswitch_0
    return-object p0

    .line 111
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Lcom/google/common/logging/nano/Resolver;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Resolver;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Framework;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Framework;

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
    .line 79
    iget-object v0, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Framework;->resolver:Lcom/google/common/logging/nano/Resolver;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    return-void
.end method
