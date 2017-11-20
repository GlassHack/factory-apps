.class public final Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgumentPrompt"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;


# instance fields
.field private bitField0_:I

.field public contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

.field public emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

.field private promptedArgumentId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3961
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3962
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    .line 3963
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 2

    .prologue
    .line 3923
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    if-nez v0, :cond_1

    .line 3924
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3926
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    if-nez v0, :cond_0

    .line 3927
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    .line 3929
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3931
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    return-object v0

    .line 3929
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4053
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4047
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3966
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    .line 3967
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    .line 3968
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    .line 3969
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    .line 3970
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->cachedSize:I

    .line 3971
    return-object p0
.end method

.method public clearPromptedArgumentId()Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 1

    .prologue
    .line 3950
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    .line 3951
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    .line 3952
    return-object p0
.end method

.method public getPromptedArgumentId()I
    .locals 1

    .prologue
    .line 3939
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3990
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3991
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3992
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3995
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    if-eqz v1, :cond_1

    .line 3996
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3999
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    if-eqz v1, :cond_2

    .line 4000
    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4003
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->cachedSize:I

    .line 4004
    return v0
.end method

.method public hasPromptedArgumentId()Z
    .locals 1

    .prologue
    .line 3947
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

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
    .line 3917
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4012
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4013
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4017
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4018
    :sswitch_0
    return-object p0

    .line 4023
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    .line 4024
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    goto :goto_0

    .line 4028
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    if-nez v1, :cond_1

    .line 4029
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    .line 4031
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4035
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    if-nez v1, :cond_2

    .line 4036
    new-instance v1, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    .line 4038
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4013
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1f42 -> :sswitch_2
        0x1f4a -> :sswitch_3
    .end sparse-switch
.end method

.method public setPromptedArgumentId(I)Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3942
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    .line 3943
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    .line 3944
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
    .line 3977
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3978
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->promptedArgumentId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3980
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    if-eqz v0, :cond_1

    .line 3981
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$EmptyArgumentPrompt;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3983
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    if-eqz v0, :cond_2

    .line 3984
    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->contactReferenceArgumentPromptExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgumentPrompt;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3986
    :cond_2
    return-void
.end method
