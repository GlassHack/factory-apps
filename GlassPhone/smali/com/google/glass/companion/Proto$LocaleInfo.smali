.class public final Lcom/google/glass/companion/Proto$LocaleInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocaleInfo;


# instance fields
.field private bitField0_:I

.field private networkBasedCountryIso_:Ljava/lang/String;

.field private simBasedCountryIso_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3948
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocaleInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$LocaleInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocaleInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3949
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 3976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 3949
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4085
    new-instance v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocaleInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocaleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4079
    new-instance v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocaleInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    return-object v0
.end method


# virtual methods
.method public clearNetworkBasedCountryIso()Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 3970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 3971
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 3972
    return-object p0
.end method

.method public clearSimBasedCountryIso()Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 3992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 3993
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 3994
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3999
    if-ne p1, p0, :cond_1

    .line 4004
    :cond_0
    :goto_0
    return v1

    .line 4000
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4001
    check-cast v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 4002
    .local v0, "other":Lcom/google/glass/companion/Proto$LocaleInfo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 4003
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 4004
    goto :goto_0

    .line 4002
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4003
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    .line 4004
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4029
    const/4 v0, 0x0

    .line 4030
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4031
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4032
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4034
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4035
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4036
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4038
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4039
    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->cachedSize:I

    .line 4040
    return v0
.end method

.method public getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3978
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNetworkBasedCountryIso()Z
    .locals 1

    .prologue
    .line 3967
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimBasedCountryIso()Z
    .locals 1

    .prologue
    .line 3989
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

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

    .line 4008
    const/16 v0, 0x11

    .line 4009
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 4010
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 4011
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 4012
    return v0

    .line 4009
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 4010
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 4011
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4048
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4049
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4053
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    .line 4057
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4059
    :sswitch_0
    return-object p0

    .line 4064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4065
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4069
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4070
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4049
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
    .line 3945
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocaleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public setNetworkBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3959
    if-nez p1, :cond_0

    .line 3960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3962
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 3963
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 3964
    return-object p0
.end method

.method public setSimBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3981
    if-nez p1, :cond_0

    .line 3982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3984
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 3985
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 3986
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
    .line 4017
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4018
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4020
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4021
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4023
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4025
    return-void
.end method
