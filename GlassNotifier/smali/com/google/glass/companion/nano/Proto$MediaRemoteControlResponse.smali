.class public final Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaRemoteControlResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;


# instance fields
.field public albumArt:Lcom/google/glass/companion/nano/Proto$Media;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10861
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10862
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->clear()Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 10863
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    .locals 2

    .prologue
    .line 10845
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v0, :cond_1

    .line 10846
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10848
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v0, :cond_0

    .line 10849
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 10851
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10853
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    return-object v0

    .line 10851
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10961
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10955
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10866
    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10867
    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10868
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->cachedSize:I

    .line 10869
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 10919
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10920
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-eqz v1, :cond_0

    .line 10921
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10922
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10924
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10874
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 10893
    :cond_0
    :goto_0
    return v1

    .line 10877
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 10880
    check-cast v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 10881
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v3, :cond_5

    .line 10882
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v3, :cond_0

    .line 10890
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10891
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 10886
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10893
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 10898
    const/16 v0, 0x11

    .line 10899
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 10900
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v1, :cond_1

    move v1, v2

    .line 10901
    :goto_0
    add-int v0, v3, v1

    .line 10902
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10903
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10904
    :cond_0
    :goto_1
    add-int v0, v1, v2

    .line 10905
    return v0

    .line 10901
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Media;->hashCode()I

    move-result v1

    goto :goto_0

    .line 10904
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10932
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10933
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10937
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10938
    :sswitch_0
    return-object p0

    .line 10943
    :sswitch_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v1, :cond_1

    .line 10944
    new-instance v1, Lcom/google/glass/companion/nano/Proto$Media;

    invoke-direct {v1}, Lcom/google/glass/companion/nano/Proto$Media;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    .line 10946
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10933
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
    .line 10839
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

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
    .line 10911
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    if-eqz v0, :cond_0

    .line 10912
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->albumArt:Lcom/google/glass/companion/nano/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10914
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10915
    return-void
.end method
