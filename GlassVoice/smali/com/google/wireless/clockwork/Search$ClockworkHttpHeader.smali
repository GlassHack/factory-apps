.class public final Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/clockwork/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkHttpHeader"
.end annotation


# static fields
.field public static final OVERWRITE_MODE_APPEND:I = 0x1

.field public static final OVERWRITE_MODE_NO_OVERWRITE:I = 0x0

.field public static final OVERWRITE_MODE_OVERWRITE:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private overwrite_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->clear()Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 97
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    sput-object v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->cachedSize:I

    .line 105
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1

    .prologue
    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    .line 50
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 51
    return-object p0
.end method

.method public clearOverwrite()Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    .line 91
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1

    .prologue
    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    .line 72
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 125
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_0
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_1
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 134
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_2
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->cachedSize:I

    .line 138
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverwrite()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 68
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 147
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 151
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :sswitch_0
    return-object p0

    .line 157
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    .line 158
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    goto :goto_0

    .line 162
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    .line 163
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    .line 168
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public setOverwrite(I)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    .line 83
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    .line 64
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    .line 65
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
    .line 111
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 114
    :cond_0
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 117
    :cond_1
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 118
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkHttpHeader;->overwrite_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 120
    :cond_2
    return-void
.end method
