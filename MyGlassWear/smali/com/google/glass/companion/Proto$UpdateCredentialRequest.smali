.class public final Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateCredentialRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$UpdateCredentialRequest;


# instance fields
.field private accountName_:Ljava/lang/String;

.field private accountType_:Ljava/lang/String;

.field private bitField0_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6996
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6997
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7002
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 6997
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7133
    new-instance v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7127
    new-instance v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-object v0
.end method


# virtual methods
.method public clearAccountName()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 7018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7019
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7020
    return-object p0
.end method

.method public clearAccountType()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 7040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7041
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7042
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7047
    if-ne p1, p0, :cond_1

    .line 7052
    :cond_0
    :goto_0
    return v1

    .line 7048
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7049
    check-cast v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 7050
    .local v0, "other":Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7051
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7052
    goto :goto_0

    .line 7050
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7051
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    .line 7052
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7004
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7026
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7077
    const/4 v0, 0x0

    .line 7078
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7079
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7080
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7082
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7083
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7084
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7086
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7087
    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->cachedSize:I

    .line 7088
    return v0
.end method

.method public hasAccountName()Z
    .locals 1

    .prologue
    .line 7015
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 7037
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 7056
    const/16 v0, 0x11

    .line 7057
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 7058
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 7059
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 7060
    return v0

    .line 7057
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 7058
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 7059
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7096
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7097
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7101
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    .line 7105
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7107
    :sswitch_0
    return-object p0

    .line 7112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7113
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 7117
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7118
    iget v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 7097
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 6993
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7007
    if-nez p1, :cond_0

    .line 7008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7010
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 7011
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7012
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7029
    if-nez p1, :cond_0

    .line 7030
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7032
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 7033
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 7034
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
    .line 7065
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7066
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7068
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7069
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7071
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7073
    return-void
.end method
