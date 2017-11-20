.class public final Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$AndroidDeviceInfo;


# instance fields
.field private bitField0_:I

.field private sdkVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7141
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7142
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7142
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 7239
    new-instance v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 7233
    new-instance v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-object v0
.end method


# virtual methods
.method public final clearSdkVersion()Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 7160
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7161
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 7162
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7167
    if-ne p1, p0, :cond_1

    .line 7171
    :cond_0
    :goto_0
    return v0

    .line 7168
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7169
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 7170
    iget v2, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 7171
    goto :goto_0

    .line 7170
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 7171
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSdkVersion()I
    .locals 1

    .prologue
    .line 7149
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7192
    const/4 v0, 0x0

    .line 7193
    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7194
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7197
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7198
    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->cachedSize:I

    .line 7199
    return v0
.end method

.method public final hasSdkVersion()Z
    .locals 1

    .prologue
    .line 7157
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 7175
    .line 7176
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    add-int/lit16 v0, v0, 0x20f

    .line 7177
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 7178
    return v0

    .line 7177
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 2

    .prologue
    .line 7207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7208
    sparse-switch v0, :sswitch_data_0

    .line 7212
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    .line 7216
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7218
    :sswitch_0
    return-object p0

    .line 7223
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7224
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    goto :goto_0

    .line 7208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7138
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setSdkVersion(I)Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 7152
    iput p1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    .line 7153
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    .line 7154
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7183
    iget v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7184
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->sdkVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7186
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7188
    return-void
.end method
