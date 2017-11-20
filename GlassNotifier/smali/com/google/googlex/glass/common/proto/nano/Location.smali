.class public final Lcom/google/googlex/glass/common/proto/nano/Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Location;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Location;


# instance fields
.field private accuracy_:D

.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private latitude_:D

.field private levelId_:Ljava/lang/String;

.field private levelNumber_:F

.field private longitude_:D

.field private source_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Location;->clear()Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 234
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Location;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Location;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Location;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Location;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Location;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Location;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Location;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Location;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Location;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    .line 241
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 242
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 243
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->cachedSize:I

    .line 250
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 136
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public clearAddress()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 219
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 196
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 197
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 98
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 99
    return-object p0
.end method

.method public clearLevelId()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 155
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public clearLevelNumber()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 177
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 178
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 117
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 80
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 380
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 381
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 383
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 386
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 387
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 390
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 391
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 394
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 395
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 398
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    .line 399
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 402
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 403
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 406
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 407
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 410
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 411
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 414
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 415
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 417
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 418
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 419
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    :cond_9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Location;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 262
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Location;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 274
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 275
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 276
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 279
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 280
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 281
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 284
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 285
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 286
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 289
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 294
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 295
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 298
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAccuracy()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 192
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelId()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 314
    const/16 v0, 0x11

    .line 315
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 316
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 317
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 318
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 320
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 321
    .local v2, "v":J
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 324
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 325
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 328
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 329
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v8

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 331
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 332
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 333
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v0, v1, v4

    .line 334
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 335
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 336
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 337
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 338
    :goto_0
    add-int v0, v4, v1

    .line 339
    return v0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 430
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 434
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    :sswitch_0
    return-object p0

    .line 440
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 441
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 445
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 446
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 450
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 451
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 455
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 456
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 460
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    .line 461
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 465
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 466
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 470
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 471
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 475
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 476
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto :goto_0

    .line 480
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 481
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto/16 :goto_0

    .line 485
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 486
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    goto/16 :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(D)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    .line 141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    .line 226
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 227
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    .line 204
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    .line 103
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    .line 163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public setLevelNumber(F)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    .line 182
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 183
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    .line 122
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

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
    .line 345
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->latitude_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 348
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->longitude_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 351
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    .line 352
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 354
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 355
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 357
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 358
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 360
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 361
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->accuracy_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 363
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 364
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 366
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 367
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 369
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 370
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->levelNumber_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 372
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 373
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Location;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 375
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 376
    return-void
.end method
