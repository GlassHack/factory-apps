.class public final Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ApkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;


# instance fields
.field private bitField0_:I

.field private downloadUrl_:Ljava/lang/String;

.field private isUninstalledByUser_:Z

.field private packageName_:Ljava/lang/String;

.field public permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

.field public registeredVoiceTrigger:[Ljava/lang/String;

.field public unregisteredVoiceTrigger:[Ljava/lang/String;

.field private versionNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->clear()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 120
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 124
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Permission;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Permission;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 128
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->cachedSize:I

    .line 133
    return-object p0
.end method

.method public clearDownloadUrl()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearIsUninstalledByUser()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    .line 107
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 108
    return-object p0
.end method

.method public clearPackageName()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearVersionNumber()Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 244
    .local v4, "size":I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 245
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    .line 246
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 248
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 249
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 250
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 252
    :cond_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 253
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 254
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 256
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 257
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 258
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    aget-object v2, v5, v3

    .line 259
    .local v2, "element":Lcom/google/googlex/glass/common/proto/nano/Permission;
    if-eqz v2, :cond_3

    .line 260
    const/4 v5, 0x4

    .line 261
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 257
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "element":Lcom/google/googlex/glass/common/proto/nano/Permission;
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 268
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 269
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 270
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 273
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 268
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    .end local v2    # "element":Ljava/lang/String;
    :cond_6
    add-int/2addr v4, v1

    .line 277
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 279
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 280
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 282
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 283
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 284
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 285
    add-int/lit8 v0, v0, 0x1

    .line 287
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 282
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 290
    .end local v2    # "element":Ljava/lang/String;
    :cond_9
    add-int/2addr v4, v1

    .line 291
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 293
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_a
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_b

    .line 294
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    .line 295
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 297
    :cond_b
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 145
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    if-ne v3, v4, :cond_0

    .line 149
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    if-ne v3, v4, :cond_0

    .line 173
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUninstalledByUser()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsUninstalledByUser()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersionNumber()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

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
    .line 181
    const/16 v0, 0x11

    .line 182
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    add-int v0, v1, v2

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 187
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 188
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    .line 189
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    .line 191
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 194
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 195
    :goto_1
    add-int v0, v2, v1

    .line 196
    return v0

    .line 192
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 306
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 310
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    :sswitch_0
    return-object p0

    .line 316
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    .line 317
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 321
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 322
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 326
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 327
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    goto :goto_0

    .line 331
    :sswitch_4
    const/16 v5, 0x22

    .line 332
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 333
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-nez v5, :cond_2

    move v1, v4

    .line 334
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 336
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Permission;
    if-eqz v1, :cond_1

    .line 337
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 340
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Permission;-><init>()V

    aput-object v5, v2, v1

    .line 341
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 342
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Permission;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    array-length v1, v5

    goto :goto_1

    .line 345
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Permission;
    :cond_3
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/Permission;-><init>()V

    aput-object v5, v2, v1

    .line 346
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 347
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    goto :goto_0

    .line 351
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Permission;
    :sswitch_5
    const/16 v5, 0x2a

    .line 352
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 353
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 354
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 355
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 356
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 359
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 360
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 353
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 363
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 364
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    goto/16 :goto_0

    .line 368
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_6
    const/16 v5, 0x32

    .line 369
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 370
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    .line 371
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 372
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 373
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 376
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 377
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 370
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 380
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 381
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    .line 386
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    goto/16 :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public setIsUninstalledByUser(Z)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    .line 112
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 113
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setVersionNumber(I)Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    .line 40
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    .line 41
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
    .line 202
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 203
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->versionNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 205
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 206
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 208
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 209
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->downloadUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    aget-object v0, v2, v1

    .line 214
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Permission;
    if-eqz v0, :cond_3

    .line 215
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 212
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Permission;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 220
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 221
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->registeredVoiceTrigger:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 222
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 223
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 220
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 228
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 229
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->unregisteredVoiceTrigger:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 230
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 231
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 228
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 236
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->isUninstalledByUser_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 238
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 239
    return-void
.end method
