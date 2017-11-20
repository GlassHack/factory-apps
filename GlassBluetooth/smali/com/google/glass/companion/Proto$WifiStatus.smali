.class public final Lcom/google/glass/companion/Proto$WifiStatus;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiStatus"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WifiStatus;


# instance fields
.field private bitField0_:I

.field private isConnected_:Z

.field private ssid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7075
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$WifiStatus;

    sput-object v0, Lcom/google/glass/companion/Proto$WifiStatus;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WifiStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7076
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 7103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    .line 7076
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7209
    new-instance v0, Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WifiStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$WifiStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7203
    new-instance v0, Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WifiStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$WifiStatus;

    return-object v0
.end method


# virtual methods
.method public clearIsConnected()Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1

    .prologue
    .line 7116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    .line 7117
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    .line 7118
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1

    .prologue
    .line 7097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 7098
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    .line 7099
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7123
    if-ne p1, p0, :cond_1

    .line 7128
    :cond_0
    :goto_0
    return v1

    .line 7124
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$WifiStatus;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7125
    check-cast v0, Lcom/google/glass/companion/Proto$WifiStatus;

    .line 7126
    .local v0, "other":Lcom/google/glass/companion/Proto$WifiStatus;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7128
    goto :goto_0

    .line 7126
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    .line 7128
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getIsConnected()Z
    .locals 1

    .prologue
    .line 7105
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7153
    const/4 v0, 0x0

    .line 7154
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7155
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 7156
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7158
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7159
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    .line 7160
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7162
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7163
    iput v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->cachedSize:I

    .line 7164
    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7083
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIsConnected()Z
    .locals 1

    .prologue
    .line 7113
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 7094
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

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

    .line 7132
    const/16 v0, 0x11

    .line 7133
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 7134
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v3, v1

    .line 7135
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 7136
    return v0

    .line 7133
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 7134
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 7135
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7173
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7177
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    .line 7181
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7183
    :sswitch_0
    return-object p0

    .line 7188
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 7189
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    goto :goto_0

    .line 7193
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    .line 7194
    iget v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    goto :goto_0

    .line 7173
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 7072
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$WifiStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WifiStatus;

    move-result-object v0

    return-object v0
.end method

.method public setIsConnected(Z)Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7108
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    .line 7109
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    .line 7110
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7086
    if-nez p1, :cond_0

    .line 7087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7089
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 7090
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    .line 7091
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
    .line 7141
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7144
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7145
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$WifiStatus;->isConnected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7147
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WifiStatus;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7149
    return-void
.end method
