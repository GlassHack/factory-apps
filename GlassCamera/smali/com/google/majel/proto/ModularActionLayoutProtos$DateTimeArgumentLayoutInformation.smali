.class public final Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionLayoutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionLayoutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateTimeArgumentLayoutInformation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;


# instance fields
.field private bitField0_:I

.field private canShowDate_:Z

.field private canShowTime_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->clear()Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    .line 175
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    if-nez v0, :cond_1

    .line 123
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    sput-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->_emptyArray:[Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    .line 179
    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    .line 180
    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->cachedSize:I

    .line 182
    return-object p0
.end method

.method public clearCanShowDate()Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    .line 150
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public clearCanShowTime()Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    .line 169
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    .line 170
    return-object p0
.end method

.method public getCanShowDate()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    return v0
.end method

.method public getCanShowTime()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 199
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->cachedSize:I

    .line 208
    return v0
.end method

.method public hasCanShowDate()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanShowTime()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

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
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 217
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 221
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    :sswitch_0
    return-object p0

    .line 227
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    .line 228
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    goto :goto_0

    .line 232
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    .line 233
    iget v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCanShowDate(Z)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    .line 142
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    .line 143
    return-object p0
.end method

.method public setCanShowTime(Z)Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    .line 161
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    .line 162
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
    .line 188
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowDate_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/majel/proto/ModularActionLayoutProtos$DateTimeArgumentLayoutInformation;->canShowTime_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 194
    :cond_1
    return-void
.end method
