.class public final Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceSet"
.end annotation


# static fields
.field public static final INTERACTION_CANCEL:I = 0x2

.field public static final INTERACTION_OPEN_MIC:I = 0x1

.field public static final INTERACTION_STOP:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;


# instance fields
.field private bitField0_:I

.field public displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

.field private interaction_:I

.field private minimumNumberOfItems_:I

.field private numberOfAttempts_:I

.field public vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4144
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4145
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->clear()Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4146
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 2

    .prologue
    .line 4068
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v0, :cond_1

    .line 4069
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4071
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v0, :cond_0

    .line 4072
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 4074
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4076
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    return-object v0

    .line 4074
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4262
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4256
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4149
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4150
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 4151
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 4152
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    .line 4153
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    .line 4154
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    .line 4155
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->cachedSize:I

    .line 4156
    return-object p0
.end method

.method public clearInteraction()Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1

    .prologue
    .line 4101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    .line 4102
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4103
    return-object p0
.end method

.method public clearMinimumNumberOfItems()Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1

    .prologue
    .line 4139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    .line 4140
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4141
    return-object p0
.end method

.method public clearNumberOfAttempts()Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1

    .prologue
    .line 4120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    .line 4121
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4122
    return-object p0
.end method

.method public getInteraction()I
    .locals 1

    .prologue
    .line 4090
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    return v0
.end method

.method public getMinimumNumberOfItems()I
    .locals 1

    .prologue
    .line 4128
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    return v0
.end method

.method public getNumberOfAttempts()I
    .locals 1

    .prologue
    .line 4109
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4181
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4182
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v1, :cond_0

    .line 4183
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4186
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v1, :cond_1

    .line 4187
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4190
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4191
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4194
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 4195
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4198
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 4199
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4202
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->cachedSize:I

    .line 4203
    return v0
.end method

.method public hasInteraction()Z
    .locals 1

    .prologue
    .line 4098
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimumNumberOfItems()Z
    .locals 1

    .prologue
    .line 4136
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumberOfAttempts()Z
    .locals 1

    .prologue
    .line 4117
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

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
    .line 4057
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4212
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4216
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4217
    :sswitch_0
    return-object p0

    .line 4222
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v1, :cond_1

    .line 4223
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 4225
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4229
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v1, :cond_2

    .line 4230
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 4232
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4236
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    .line 4237
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    goto :goto_0

    .line 4241
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    .line 4242
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    goto :goto_0

    .line 4246
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    .line 4247
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    goto :goto_0

    .line 4212
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setInteraction(I)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4093
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    .line 4094
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4095
    return-object p0
.end method

.method public setMinimumNumberOfItems(I)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4131
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    .line 4132
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4133
    return-object p0
.end method

.method public setNumberOfAttempts(I)Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4112
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    .line 4113
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    .line 4114
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
    .line 4162
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v0, :cond_0

    .line 4163
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4165
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v0, :cond_1

    .line 4166
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4168
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 4169
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->interaction_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4171
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 4172
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->numberOfAttempts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4174
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 4175
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->minimumNumberOfItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4177
    :cond_4
    return-void
.end method
