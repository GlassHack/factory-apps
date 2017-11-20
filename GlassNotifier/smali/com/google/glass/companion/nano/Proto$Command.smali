.class public final Lcom/google/glass/companion/nano/Proto$Command;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$Command$CommandType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Command;


# instance fields
.field public command:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5980
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5981
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Command;->clear()Lcom/google/glass/companion/nano/Proto$Command;

    .line 5982
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Command;
    .locals 2

    .prologue
    .line 5964
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Command;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v0, :cond_1

    .line 5965
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5967
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Command;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v0, :cond_0

    .line 5968
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Command;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Command;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Command;

    .line 5970
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5972
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Command;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Command;

    return-object v0

    .line 5970
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Command;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6078
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Command;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Command;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6072
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Command;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Command;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Command;
    .locals 1

    .prologue
    .line 5985
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    .line 5986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5987
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Command;->cachedSize:I

    .line 5988
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 6029
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6030
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    .line 6031
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6032
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5993
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 6006
    :cond_0
    :goto_0
    return v1

    .line 5996
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Command;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 5999
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Command;

    .line 6000
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Command;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    if-ne v3, v4, :cond_0

    .line 6003
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6004
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 6006
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 6011
    const/16 v0, 0x11

    .line 6012
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 6013
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    add-int v0, v1, v2

    .line 6014
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6015
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 6016
    :goto_0
    add-int v0, v2, v1

    .line 6017
    return v0

    .line 6016
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Command;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Command;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6040
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 6041
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 6045
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6046
    :sswitch_0
    return-object p0

    .line 6051
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 6052
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 6053
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 6060
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6061
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$Command;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 6057
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    goto :goto_0

    .line 6041
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 6053
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5951
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Command;

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
    .line 6023
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Command;->command:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6024
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6025
    return-void
.end method
