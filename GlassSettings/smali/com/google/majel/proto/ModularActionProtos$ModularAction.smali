.class public final Lcom/google/majel/proto/ModularActionProtos$ModularAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModularAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ModularAction;


# instance fields
.field public argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

.field private bitField0_:I

.field public prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

.field public userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

.field private veUiType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->clear()Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    .line 57
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    .line 61
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$Argument;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$Argument;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    .line 62
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    .line 64
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->cachedSize:I

    .line 66
    return-object p0
.end method

.method public clearVeUiType()Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    .line 51
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 99
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    aget-object v0, v3, v1

    .line 102
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$Argument;
    if-eqz v0, :cond_0

    .line 103
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$Argument;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 109
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    aget-object v0, v3, v1

    .line 111
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    if-eqz v0, :cond_2

    .line 112
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    if-eqz v3, :cond_4

    .line 118
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 121
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 122
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 125
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->cachedSize:I

    .line 126
    return v2
.end method

.method public getVeUiType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    return v0
.end method

.method public hasVeUiType()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 135
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 139
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    :sswitch_0
    return-object p0

    .line 145
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 147
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-nez v5, :cond_2

    move v1, v4

    .line 148
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$Argument;

    .line 150
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$Argument;
    if-eqz v1, :cond_1

    .line 151
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 154
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$Argument;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$Argument;-><init>()V

    aput-object v5, v2, v1

    .line 155
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 156
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$Argument;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v1, v5

    goto :goto_1

    .line 159
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$Argument;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$Argument;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$Argument;-><init>()V

    aput-object v5, v2, v1

    .line 160
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 161
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    goto :goto_0

    .line 165
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$Argument;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 167
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    if-nez v5, :cond_5

    move v1, v4

    .line 168
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    .line 170
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    if-eqz v1, :cond_4

    .line 171
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 174
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;-><init>()V

    aput-object v5, v2, v1

    .line 175
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 167
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    array-length v1, v5

    goto :goto_3

    .line 179
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;-><init>()V

    aput-object v5, v2, v1

    .line 180
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 181
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    goto/16 :goto_0

    .line 185
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    if-nez v5, :cond_7

    .line 186
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    .line 188
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 192
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    .line 193
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    goto/16 :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setVeUiType(I)Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    .line 43
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    aget-object v0, v2, v1

    .line 75
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$Argument;
    if-eqz v0, :cond_0

    .line 76
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$Argument;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 81
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    aget-object v0, v2, v1

    .line 83
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    if-eqz v0, :cond_2

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    if-eqz v2, :cond_4

    .line 89
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 92
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->veUiType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 94
    :cond_5
    return-void
.end method
