.class public final Lcom/google/common/logging/nano/GlasswareUsage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/GlasswareUsage$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/GlasswareUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/GlasswareUsage;


# instance fields
.field private bitField0_:I

.field public bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

.field private cardType_:I

.field private eventDurationMs_:J

.field private gdkPackageName_:Ljava/lang/String;

.field public itemViewed:Lcom/google/common/logging/nano/ItemViewed;

.field public menuSelected:Lcom/google/common/logging/nano/MenuSelected;

.field public menuViewed:Lcom/google/common/logging/nano/MenuViewed;

.field private obfuscatedBundleId_:Ljava/lang/String;

.field private obfuscatedTimelineItemId_:Ljava/lang/String;

.field private oneof_identifier_:I

.field private oneof_usage_type_:I

.field private sourceId_:Ljava/lang/String;

.field private type_:I

.field private userActionDelayMs_:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 214
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->oneof_identifier_:I

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->oneof_usage_type_:I

    .line 215
    invoke-virtual {p0}, Lcom/google/common/logging/nano/GlasswareUsage;->clear()Lcom/google/common/logging/nano/GlasswareUsage;

    .line 216
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/google/common/logging/nano/GlasswareUsage;->_emptyArray:[Lcom/google/common/logging/nano/GlasswareUsage;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/GlasswareUsage;->_emptyArray:[Lcom/google/common/logging/nano/GlasswareUsage;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/GlasswareUsage;

    sput-object v0, Lcom/google/common/logging/nano/GlasswareUsage;->_emptyArray:[Lcom/google/common/logging/nano/GlasswareUsage;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/GlasswareUsage;->_emptyArray:[Lcom/google/common/logging/nano/GlasswareUsage;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlasswareUsage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/GlasswareUsage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlasswareUsage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlasswareUsage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/GlasswareUsage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    iput v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 220
    iput v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 225
    iput v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    .line 226
    iput-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    .line 227
    iput-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    .line 228
    iput-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    .line 229
    iput-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    .line 230
    iput-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    .line 231
    iput-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    .line 232
    iput-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cachedSize:I

    .line 234
    return-object p0
.end method

.method public clearCardType()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    .line 153
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 154
    return-object p0
.end method

.method public clearEventDurationMs()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 2

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    .line 172
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public clearGdkPackageName()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public clearObfuscatedBundleId()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 132
    return-object p0
.end method

.method public clearObfuscatedTimelineItemId()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public clearSourceId()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public clearType()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    .line 52
    return-object p0
.end method

.method public clearUserActionDelayMs()Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 2

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    .line 191
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 192
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 390
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 391
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    .line 393
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 396
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 397
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 400
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 401
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 404
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 405
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 408
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    .line 409
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 412
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    .line 413
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-eqz v1, :cond_6

    .line 416
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    .line 417
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-eqz v1, :cond_7

    .line 420
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    .line 421
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-eqz v1, :cond_8

    .line 424
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    .line 425
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-eqz v1, :cond_9

    .line 428
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    .line 429
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 432
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 433
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_a
    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 436
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    .line 437
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/GlasswareUsage;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 245
    check-cast v0, Lcom/google/common/logging/nano/GlasswareUsage;

    .line 246
    .local v0, "other":Lcom/google/common/logging/nano/GlasswareUsage;
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    if-ne v3, v4, :cond_0

    .line 250
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    if-ne v3, v4, :cond_0

    .line 270
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 274
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-nez v3, :cond_8

    .line 279
    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-nez v3, :cond_0

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-nez v3, :cond_9

    .line 288
    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-nez v3, :cond_0

    .line 296
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-nez v3, :cond_a

    .line 297
    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-nez v3, :cond_0

    .line 305
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-nez v3, :cond_b

    .line 306
    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-nez v3, :cond_0

    .line 314
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 315
    :cond_6
    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .line 283
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/ItemViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 292
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/BundleViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 301
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/MenuViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 310
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/MenuSelected;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 317
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getCardType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    return v0
.end method

.method public getEventDurationMs()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    return-wide v0
.end method

.method public getGdkPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    return v0
.end method

.method public getUserActionDelayMs()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    return-wide v0
.end method

.method public hasCardType()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventDurationMs()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGdkPackageName()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedBundleId()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedTimelineItemId()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceId()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

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
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserActionDelayMs()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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

    const/4 v2, 0x0

    .line 322
    const/16 v0, 0x11

    .line 323
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 324
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    add-int v0, v1, v3

    .line 325
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 326
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 327
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 328
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 329
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    add-int v0, v1, v3

    .line 330
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 331
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 332
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-nez v1, :cond_1

    move v1, v2

    .line 333
    :goto_0
    add-int v0, v3, v1

    .line 334
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-nez v1, :cond_2

    move v1, v2

    .line 335
    :goto_1
    add-int v0, v3, v1

    .line 336
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-nez v1, :cond_3

    move v1, v2

    .line 337
    :goto_2
    add-int v0, v3, v1

    .line 338
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-nez v1, :cond_4

    move v1, v2

    .line 339
    :goto_3
    add-int v0, v3, v1

    .line 340
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 341
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    :cond_0
    :goto_4
    add-int v0, v1, v2

    .line 343
    return v0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/ItemViewed;->hashCode()I

    move-result v1

    goto :goto_0

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/BundleViewed;->hashCode()I

    move-result v1

    goto :goto_1

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/MenuViewed;->hashCode()I

    move-result v1

    goto :goto_2

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/MenuSelected;->hashCode()I

    move-result v1

    goto :goto_3

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 448
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 452
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    :sswitch_0
    return-object p0

    .line 458
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 459
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 460
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 470
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 471
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/GlasswareUsage;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 466
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    .line 467
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 477
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 478
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 482
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 483
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 487
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 488
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 492
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    .line 493
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 497
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    .line 498
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 502
    :sswitch_7
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-nez v3, :cond_1

    .line 503
    new-instance v3, Lcom/google/common/logging/nano/ItemViewed;

    invoke-direct {v3}, Lcom/google/common/logging/nano/ItemViewed;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 509
    :sswitch_8
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-nez v3, :cond_2

    .line 510
    new-instance v3, Lcom/google/common/logging/nano/BundleViewed;

    invoke-direct {v3}, Lcom/google/common/logging/nano/BundleViewed;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    .line 512
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 516
    :sswitch_9
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-nez v3, :cond_3

    .line 517
    new-instance v3, Lcom/google/common/logging/nano/MenuViewed;

    invoke-direct {v3}, Lcom/google/common/logging/nano/MenuViewed;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    .line 519
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 523
    :sswitch_a
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-nez v3, :cond_4

    .line 524
    new-instance v3, Lcom/google/common/logging/nano/MenuSelected;

    invoke-direct {v3}, Lcom/google/common/logging/nano/MenuSelected;-><init>()V

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    .line 526
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 530
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 531
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto/16 :goto_0

    .line 535
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    .line 536
    iget v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    goto/16 :goto_0

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/GlasswareUsage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlasswareUsage;

    move-result-object v0

    return-object v0
.end method

.method public setCardType(I)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    .line 158
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 159
    return-object p0
.end method

.method public setEventDurationMs(J)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    .line 177
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 178
    return-object p0
.end method

.method public setGdkPackageName(Ljava/lang/String;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public setObfuscatedBundleId(Ljava/lang/String;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 139
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 140
    return-object p0
.end method

.method public setObfuscatedTimelineItemId(Ljava/lang/String;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 73
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public setType(I)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setUserActionDelayMs(J)Lcom/google/common/logging/nano/GlasswareUsage;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    .line 196
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    .line 197
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
    .line 349
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 352
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 353
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->sourceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 355
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 358
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 359
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 361
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 362
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->cardType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 364
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 365
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->eventDurationMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    if-eqz v0, :cond_6

    .line 368
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->itemViewed:Lcom/google/common/logging/nano/ItemViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    if-eqz v0, :cond_7

    .line 371
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bundleViewed:Lcom/google/common/logging/nano/BundleViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    if-eqz v0, :cond_8

    .line 374
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuViewed:Lcom/google/common/logging/nano/MenuViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 376
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    if-eqz v0, :cond_9

    .line 377
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->menuSelected:Lcom/google/common/logging/nano/MenuSelected;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 379
    :cond_9
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 380
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 382
    :cond_a
    iget v0, p0, Lcom/google/common/logging/nano/GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 383
    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlasswareUsage;->userActionDelayMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 385
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 386
    return-void
.end method
