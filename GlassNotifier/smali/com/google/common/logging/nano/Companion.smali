.class public final Lcom/google/common/logging/nano/Companion;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Companion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Companion;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Companion;


# instance fields
.field public appInstall:[Lcom/google/common/logging/nano/AppInstall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Companion;->clear()Lcom/google/common/logging/nano/Companion;

    .line 30
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Companion;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/Companion;->_emptyArray:[Lcom/google/common/logging/nano/Companion;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Companion;->_emptyArray:[Lcom/google/common/logging/nano/Companion;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Companion;

    sput-object v0, Lcom/google/common/logging/nano/Companion;->_emptyArray:[Lcom/google/common/logging/nano/Companion;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Companion;->_emptyArray:[Lcom/google/common/logging/nano/Companion;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Companion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/common/logging/nano/Companion;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Companion;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Companion;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Companion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Companion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/common/logging/nano/Companion;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Companion;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Companion;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Companion;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/logging/nano/AppInstall;->emptyArray()[Lcom/google/common/logging/nano/AppInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Companion;->cachedSize:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 87
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    aget-object v0, v3, v1

    .line 90
    .local v0, "element":Lcom/google/common/logging/nano/AppInstall;
    if-eqz v0, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "element":Lcom/google/common/logging/nano/AppInstall;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Companion;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/google/common/logging/nano/Companion;

    .line 48
    .local v0, "other":Lcom/google/common/logging/nano/Companion;
    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    iget-object v4, v0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    .line 63
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 64
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    add-int v0, v2, v1

    .line 67
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Companion;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Companion;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 105
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 109
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    :sswitch_0
    return-object p0

    .line 115
    :sswitch_1
    const/16 v5, 0xa

    .line 116
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 117
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    if-nez v5, :cond_2

    move v1, v4

    .line 118
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/AppInstall;

    .line 120
    .local v2, "newArray":[Lcom/google/common/logging/nano/AppInstall;
    if-eqz v1, :cond_1

    .line 121
    iget-object v5, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 124
    new-instance v5, Lcom/google/common/logging/nano/AppInstall;

    invoke-direct {v5}, Lcom/google/common/logging/nano/AppInstall;-><init>()V

    aput-object v5, v2, v1

    .line 125
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 126
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/AppInstall;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    array-length v1, v5

    goto :goto_1

    .line 129
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/AppInstall;
    :cond_3
    new-instance v5, Lcom/google/common/logging/nano/AppInstall;

    invoke-direct {v5}, Lcom/google/common/logging/nano/AppInstall;-><init>()V

    aput-object v5, v2, v1

    .line 130
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 131
    iput-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    goto :goto_0

    .line 105
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Companion;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Companion;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/google/common/logging/nano/Companion;->appInstall:[Lcom/google/common/logging/nano/AppInstall;

    aget-object v0, v2, v1

    .line 76
    .local v0, "element":Lcom/google/common/logging/nano/AppInstall;
    if-eqz v0, :cond_0

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "element":Lcom/google/common/logging/nano/AppInstall;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 82
    return-void
.end method
