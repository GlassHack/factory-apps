.class public final Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/ResourceRequest$ResourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;


# instance fields
.field private bitField0_:I

.field private fingerprint_:J

.field private languageCode_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->clear()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 120
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->cachedSize:I

    .line 130
    return-object p0
.end method

.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    .line 85
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 86
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1

    .prologue
    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 105
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 63
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    .line 50
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 199
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    .line 201
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 205
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 208
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    .line 209
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 212
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 213
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 142
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    if-ne v3, v4, :cond_0

    .line 146
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 154
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    return-wide v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    return v0
.end method

.method public hasFingerprint()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageCode()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

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
    .locals 7

    .prologue
    .line 166
    const/16 v0, 0x11

    .line 167
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    add-int v0, v1, v2

    .line 169
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 173
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    add-int v0, v2, v1

    .line 175
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 224
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 228
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    :sswitch_0
    return-object p0

    .line 234
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 235
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 236
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 246
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 247
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 242
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    .line 243
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 253
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 254
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 258
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    .line 259
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 263
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 264
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    .line 90
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 91
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 112
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 113
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 72
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    .line 41
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    .line 42
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 184
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 187
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 188
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->fingerprint_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 190
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 191
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->languageCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 193
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 194
    return-void
.end method
