.class public final Lcom/google/majel/proto/ContextProtos$Context;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContextProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContextProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContextProtos$Context;


# instance fields
.field public actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

.field private bitField0_:I

.field private textualContext_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->clear()Lcom/google/majel/proto/ContextProtos$Context;

    .line 141
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContextProtos$Context;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/google/majel/proto/ContextProtos$Context;->_emptyArray:[Lcom/google/majel/proto/ContextProtos$Context;

    if-nez v0, :cond_1

    .line 102
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContextProtos$Context;->_emptyArray:[Lcom/google/majel/proto/ContextProtos$Context;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContextProtos$Context;

    sput-object v0, Lcom/google/majel/proto/ContextProtos$Context;->_emptyArray:[Lcom/google/majel/proto/ContextProtos$Context;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContextProtos$Context;->_emptyArray:[Lcom/google/majel/proto/ContextProtos$Context;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContextProtos$Context;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContextProtos$Context;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    .line 148
    return-object p0
.end method

.method public clearTextualContext()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 132
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    .line 133
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 165
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    .line 174
    return v0
.end method

.method public getTextualContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTextualContext()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

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
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContextProtos$Context;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 183
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 187
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :sswitch_0
    return-object p0

    .line 193
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 194
    iget v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    goto :goto_0

    .line 198
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-direct {v1}, Lcom/google/majel/proto/ContextProtos$ActionContext;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setTextualContext(Ljava/lang/String;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    .line 125
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
    .line 154
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext:Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 160
    :cond_1
    return-void
.end method
