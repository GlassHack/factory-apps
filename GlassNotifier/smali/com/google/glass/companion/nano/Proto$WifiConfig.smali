.class public final Lcom/google/glass/companion/nano/Proto$WifiConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$WifiConfig$Encryption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$WifiConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiConfig;


# instance fields
.field private bitField0_:I

.field private encryption_:I

.field private key_:Ljava/lang/String;

.field private ssid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7926
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7927
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$WifiConfig;->clear()Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 7928
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 2

    .prologue
    .line 7848
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-nez v0, :cond_1

    .line 7849
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7851
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-nez v0, :cond_0

    .line 7852
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$WifiConfig;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 7854
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7856
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    return-object v0

    .line 7854
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8068
    new-instance v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$WifiConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$WifiConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8062
    new-instance v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$WifiConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7931
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 7933
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    .line 7934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7936
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->cachedSize:I

    .line 7937
    return-object p0
.end method

.method public clearEncryption()Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 7897
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7898
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    .line 7899
    return-object p0
.end method

.method public clearKey()Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 7911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7912
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7913
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 7870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 7871
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7872
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7997
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7998
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7999
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 8000
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8002
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8003
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    .line 8004
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8006
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8007
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 8008
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8010
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7942
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 7964
    :cond_0
    :goto_0
    return v1

    .line 7945
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 7948
    check-cast v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 7949
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$WifiConfig;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 7950
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7953
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    if-ne v3, v4, :cond_0

    .line 7957
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7958
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7961
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7962
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 7964
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 7886
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7905
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7864
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEncryption()Z
    .locals 1

    .prologue
    .line 7894
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 7908
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSsid()Z
    .locals 1

    .prologue
    .line 7867
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 7969
    const/16 v0, 0x11

    .line 7970
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 7971
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7972
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    add-int v0, v1, v2

    .line 7973
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7974
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7975
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 7976
    :goto_0
    add-int v0, v2, v1

    .line 7977
    return v0

    .line 7976
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8018
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 8019
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 8023
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8024
    :sswitch_0
    return-object p0

    .line 8029
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 8030
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 8034
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 8035
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 8036
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 8045
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8046
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$WifiConfig;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 8041
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    .line 8042
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 8052
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 8053
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 8019
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 8036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 7834
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$WifiConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiConfig;

    move-result-object v0

    return-object v0
.end method

.method public setEncryption(I)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7889
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    .line 7890
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7891
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7916
    if-nez p1, :cond_0

    .line 7917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7919
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7920
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7921
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7875
    if-nez p1, :cond_0

    .line 7876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7878
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 7879
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    .line 7880
    return-object p0
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
    .line 7983
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7984
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7986
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7987
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->encryption_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7989
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7990
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiConfig;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7992
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7993
    return-void
.end method
