.class public final Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareSyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;


# instance fields
.field public apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private glassBuildFingerprint_:Ljava/lang/String;

.field private glassBuildType_:Ljava/lang/String;

.field private glassVersion_:I

.field private lastSyncedTimestampUs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    .line 136
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 141
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 145
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->cachedSize:I

    .line 148
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearGlassBuildFingerprint()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 98
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 99
    return-object p0
.end method

.method public clearGlassBuildType()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearGlassVersion()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearLastSyncedTimestampUs()Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 2

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 120
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 121
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 238
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 239
    .local v2, "size":I
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 240
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    .line 241
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    aget-object v0, v3, v1

    .line 246
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    if-eqz v0, :cond_1

    .line 247
    const/4 v3, 0x2

    .line 248
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .end local v1    # "i":I
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 253
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 254
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 256
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 257
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 258
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 260
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 261
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 262
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 264
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 265
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 266
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 268
    :cond_6
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    .line 160
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    if-ne v3, v4, :cond_0

    .line 168
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlassBuildFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlassBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlassVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    return v0
.end method

.method public getLastSyncedTimestampUs()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassBuildFingerprint()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassBuildType()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassVersion()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastSyncedTimestampUs()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 192
    const/16 v0, 0x11

    .line 193
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    add-int v0, v1, v2

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 199
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 200
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 202
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    add-int v0, v2, v1

    .line 204
    return v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 277
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 281
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    :sswitch_0
    return-object p0

    .line 287
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    .line 288
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    goto :goto_0

    .line 292
    :sswitch_2
    const/16 v5, 0x12

    .line 293
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 294
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v5, :cond_2

    move v1, v4

    .line 295
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 297
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    if-eqz v1, :cond_1

    .line 298
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 301
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;-><init>()V

    aput-object v5, v2, v1

    .line 302
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    array-length v1, v5

    goto :goto_1

    .line 306
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    :cond_3
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;-><init>()V

    aput-object v5, v2, v1

    .line 307
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 308
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    goto :goto_0

    .line 312
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 313
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    goto :goto_0

    .line 317
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 318
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    goto :goto_0

    .line 322
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 323
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 327
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 328
    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setGlassBuildFingerprint(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public setGlassBuildType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public setGlassVersion(I)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setLastSyncedTimestampUs(J)Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 125
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 211
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    aget-object v0, v2, v1

    .line 216
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    if-eqz v0, :cond_1

    .line 217
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 222
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 224
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 225
    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 227
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 228
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 230
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 231
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 233
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 234
    return-void
.end method
