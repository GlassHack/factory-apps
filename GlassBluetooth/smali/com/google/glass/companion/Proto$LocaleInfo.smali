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
    .line 4096
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocaleInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$LocaleInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocaleInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4097
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4097
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
    .line 4233
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
    .line 4227
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
    .line 4118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4119
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 4120
    return-object p0
.end method

.method public clearSimBasedCountryIso()Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 4140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4141
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 4142
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4147
    if-ne p1, p0, :cond_1

    .line 4152
    :cond_0
    :goto_0
    return v1

    .line 4148
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4149
    check-cast v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 4150
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

    .line 4151
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 4152
    goto :goto_0

    .line 4150
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

    .line 4151
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    .line 4152
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4177
    const/4 v0, 0x0

    .line 4178
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4179
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4180
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4182
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4183
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4184
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4186
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4187
    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->cachedSize:I

    .line 4188
    return v0
.end method

.method public getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNetworkBasedCountryIso()Z
    .locals 1

    .prologue
    .line 4115
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
    .line 4137
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

    .line 4156
    const/16 v0, 0x11

    .line 4157
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 4158
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 4159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 4160
    return v0

    .line 4157
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 4158
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 4159
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
    .line 4196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4197
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4201
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    .line 4205
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4207
    :sswitch_0
    return-object p0

    .line 4212
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4213
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4217
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4218
    iget v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4197
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
    .line 4093
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocaleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public setNetworkBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4107
    if-nez p1, :cond_0

    .line 4108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4110
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4111
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 4112
    return-object p0
.end method

.method public setSimBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4129
    if-nez p1, :cond_0

    .line 4130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4132
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4133
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    .line 4134
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
    .line 4165
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4166
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4168
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4169
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4171
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocaleInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4173
    return-void
.end method
