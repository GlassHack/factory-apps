.class public final Lcom/google/glass/companion/Proto$WifiConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$WifiConfig$Encryption;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WifiConfig;


# instance fields
.field private bitField0_:I

.field private encryption_:I

.field private key_:Ljava/lang/String;

.field private ssid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6882
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$WifiConfig;

    sput-object v0, Lcom/google/glass/companion/Proto$WifiConfig;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WifiConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6883
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 6917
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    .line 6936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 6883
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7067
    new-instance v0, Lcom/google/glass/companion/Proto$WifiConfig;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WifiConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$WifiConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7061
    new-instance v0, Lcom/google/glass/companion/Proto$WifiConfig;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WifiConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$WifiConfig;

    return-object v0
.end method


# virtual methods
.method public clearEncryption()Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 6930
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    .line 6931
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6932
    return-object p0
.end method

.method public clearKey()Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 6952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 6953
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6954
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1

    .prologue
    .line 6911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 6912
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6913
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6959
    if-ne p1, p0, :cond_1

    .line 6965
    :cond_0
    :goto_0
    return v1

    .line 6960
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$WifiConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6961
    check-cast v0, Lcom/google/glass/companion/Proto$WifiConfig;

    .line 6962
    .local v0, "other":Lcom/google/glass/companion/Proto$WifiConfig;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 6964
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6965
    goto :goto_0

    .line 6962
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 6964
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    .line 6965
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 6919
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6994
    const/4 v0, 0x0

    .line 6995
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6996
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 6997
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6999
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7000
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    .line 7001
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7003
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7004
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7005
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7007
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7008
    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->cachedSize:I

    .line 7009
    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6897
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEncryption()Z
    .locals 1

    .prologue
    .line 6927
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

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
    .line 6949
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

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
    .line 6908
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6969
    const/16 v0, 0x11

    .line 6970
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 6971
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    add-int v0, v1, v3

    .line 6972
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 6973
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 6974
    return v0

    .line 6970
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 6972
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 6973
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7017
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7018
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7022
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 7023
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    .line 7026
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7028
    :sswitch_0
    return-object p0

    .line 7033
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 7034
    iget v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 7038
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 7039
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 7043
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    .line 7044
    iget v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 7046
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    goto :goto_0

    .line 7051
    .end local v1    # "temp":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 7052
    iget v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    goto :goto_0

    .line 7018
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 6879
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$WifiConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiConfig;

    move-result-object v0

    return-object v0
.end method

.method public setEncryption(I)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6922
    iput p1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    .line 6923
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6924
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6941
    if-nez p1, :cond_0

    .line 6942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6944
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    .line 6945
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6946
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/Proto$WifiConfig;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6900
    if-nez p1, :cond_0

    .line 6901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6903
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    .line 6904
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    .line 6905
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
    .line 6979
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6980
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6982
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6983
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->encryption_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6985
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6986
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiConfig;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6988
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WifiConfig;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6990
    return-void
.end method
