.class public final Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "InstalledGlassware.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;


# instance fields
.field public apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

.field private bitField0_:I

.field private brandColor_:Ljava/lang/String;

.field private colorIconUrl_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private glasswareId_:J

.field private iconUrl_:Ljava/lang/String;

.field private isEnabled_:Z

.field private isHiddenFromUi_:Z

.field private lastModifiedTimestampUs_:J

.field public mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

.field private speakableName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->clear()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 221
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 225
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 231
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 232
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    .line 233
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    .line 234
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    .line 235
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 236
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->cachedSize:I

    .line 238
    return-object p0
.end method

.method public clearBrandColor()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 142
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 143
    return-object p0
.end method

.method public clearColorIconUrl()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 120
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 121
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearGlasswareId()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearIconUrl()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 98
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 99
    return-object p0
.end method

.method public clearIsEnabled()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    .line 170
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 171
    return-object p0
.end method

.method public clearIsHiddenFromUi()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    .line 189
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 190
    return-object p0
.end method

.method public clearLastModifiedTimestampUs()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 208
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 209
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 77
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 374
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 375
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    .line 377
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v1, :cond_1

    .line 380
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 381
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    .line 384
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    .line 385
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 388
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 389
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 392
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 393
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 396
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 397
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 400
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 401
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 404
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 405
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-eqz v1, :cond_8

    .line 408
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    .line 409
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 412
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    .line 413
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 416
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 417
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 249
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 250
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 254
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v3, :cond_6

    .line 275
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v3, :cond_0

    .line 283
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-nez v3, :cond_7

    .line 284
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-nez v3, :cond_0

    .line 292
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 296
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    if-ne v3, v4, :cond_0

    .line 300
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 305
    :cond_4
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 279
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 288
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getBrandColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    return-object v0
.end method

.method public getColorIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlasswareId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    return v0
.end method

.method public getIsHiddenFromUi()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    return v0
.end method

.method public getLastModifiedTimestampUs()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    return-wide v0
.end method

.method public getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBrandColor()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasColorIconUrl()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsHiddenFromUi()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastModifiedTimestampUs()Z
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 312
    const/16 v0, 0x11

    .line 313
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 314
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 315
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 316
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 317
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 318
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 319
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 320
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v1, :cond_1

    move v1, v2

    .line 321
    :goto_0
    add-int v0, v5, v1

    .line 322
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-nez v1, :cond_2

    move v1, v2

    .line 323
    :goto_1
    add-int v0, v5, v1

    .line 324
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    add-int v0, v5, v1

    .line 325
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    if-eqz v5, :cond_4

    :goto_3
    add-int v0, v1, v3

    .line 326
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    ushr-long/2addr v6, v10

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 327
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 328
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 329
    :cond_0
    :goto_4
    add-int v0, v1, v2

    .line 330
    return v0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;->hashCode()I

    move-result v1

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 324
    goto :goto_2

    :cond_4
    move v3, v4

    .line 325
    goto :goto_3

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 428
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 432
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    :sswitch_0
    return-object p0

    .line 438
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    .line 439
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 443
    :sswitch_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-nez v1, :cond_1

    .line 444
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 450
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    .line 451
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 455
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 456
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 460
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 461
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 465
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 466
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 470
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 471
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 475
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 476
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 480
    :sswitch_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-nez v1, :cond_2

    .line 481
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 487
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    .line 488
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto/16 :goto_0

    .line 492
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 493
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    goto/16 :goto_0

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public setBrandColor(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public setColorIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    .line 128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 129
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setGlasswareId(J)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    .line 40
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public setIsEnabled(Z)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    .line 175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 176
    return-object p0
.end method

.method public setIsHiddenFromUi(Z)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    .line 194
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 195
    return-object p0
.end method

.method public setLastModifiedTimestampUs(J)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 213
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    .line 85
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
    .line 336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->glasswareId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->apkMetadata:Lcom/google/googlex/glass/common/proto/nano/ApkMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 342
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 343
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 345
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 346
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 348
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 349
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 351
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 352
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 354
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 355
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->brandColor_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 357
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 358
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->lastModifiedTimestampUs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    if-eqz v0, :cond_8

    .line 361
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->mirrorMetadata:Lcom/google/googlex/glass/common/proto/nano/MirrorMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 363
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 364
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->isHiddenFromUi_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 366
    :cond_9
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 367
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->colorIconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 369
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 370
    return-void
.end method
