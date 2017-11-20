.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Example"
.end annotation


# static fields
.field public static final CAPABILITY_FRONT_FACING_CAMERA:I = 0x2

.field public static final CAPABILITY_REAR_FACING_CAMERA:I = 0x1

.field public static final CAPABILITY_TELEPHONY:I = 0x0

.field public static final SUBSTITUTION_DATE_DAY:I = 0x0

.field public static final SUBSTITUTION_DATE_DAY_OF_WEEK:I = 0x2

.field public static final SUBSTITUTION_DATE_MONTH:I = 0x1

.field public static final SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_EMAIL:I = 0x4

.field public static final SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_PHONE:I = 0x3

.field public static final SUBSTITUTION_LOCAL_CONTACT_PHONE_NUMBER:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/String;

.field public localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

.field public localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

.field private minVersion_:I

.field private query_:Ljava/lang/String;

.field private relativeDays_:I

.field private relativeSeconds_:I

.field public requiredCapability:[I

.field private retireVersion_:I

.field public substitution:[I

.field public time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

.field public unusedLocale:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10285
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10286
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 10287
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 2

    .prologue
    .line 10134
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    if-nez v0, :cond_1

    .line 10135
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10137
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    if-nez v0, :cond_0

    .line 10138
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 10140
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10142
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    return-object v0

    .line 10140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10632
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10626
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10290
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10291
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 10292
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 10293
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    .line 10294
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    .line 10295
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 10296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 10297
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    .line 10298
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 10299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 10300
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 10301
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 10302
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 10303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    .line 10304
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 10240
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10241
    return-object p0
.end method

.method public clearMinVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 10162
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10163
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 10212
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10213
    return-object p0
.end method

.method public clearRelativeDays()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10280
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 10281
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10282
    return-object p0
.end method

.method public clearRelativeSeconds()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10261
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 10262
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10263
    return-object p0
.end method

.method public clearRetireVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 10180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 10181
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10182
    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10225
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 10150
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10197
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeDays()I
    .locals 1

    .prologue
    .line 10269
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    return v0
.end method

.method public getRelativeSeconds()I
    .locals 1

    .prologue
    .line 10250
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    return v0
.end method

.method public getRetireVersion()I
    .locals 1

    .prologue
    .line 10169
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 10364
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 10365
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 10366
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 10369
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 10370
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 10373
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 10374
    const/4 v0, 0x0

    .line 10375
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 10376
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 10377
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 10378
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 10379
    add-int/lit8 v0, v0, 0x1

    .line 10380
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 10376
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10384
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 10385
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 10387
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v5, v5

    if-lez v5, :cond_6

    .line 10388
    const/4 v1, 0x0

    .line 10389
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 10390
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    aget v2, v5, v3

    .line 10391
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 10389
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10394
    .end local v2    # "element":I
    :cond_5
    add-int/2addr v4, v1

    .line 10395
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 10397
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v5, v5

    if-lez v5, :cond_8

    .line 10398
    const/4 v1, 0x0

    .line 10399
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 10400
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    aget v2, v5, v3

    .line 10401
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 10399
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10404
    .end local v2    # "element":I
    :cond_7
    add-int/2addr v4, v1

    .line 10405
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 10407
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_9

    .line 10408
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10411
    :cond_9
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v5, :cond_a

    .line 10412
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10415
    :cond_a
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    .line 10416
    const/16 v5, 0x9

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 10419
    :cond_b
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_c

    .line 10420
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 10423
    :cond_c
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    if-eqz v5, :cond_d

    .line 10424
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10427
    :cond_d
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v5, v5

    if-lez v5, :cond_f

    .line 10428
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v5, v5

    if-ge v3, v5, :cond_f

    .line 10429
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    aget-object v2, v5, v3

    .line 10430
    .local v2, "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v2, :cond_e

    .line 10431
    const/16 v5, 0xc

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10428
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10436
    .end local v2    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .end local v3    # "i":I
    :cond_f
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_10

    .line 10437
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 10440
    :cond_10
    iput v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    .line 10441
    return v4
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 10236
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinVersion()Z
    .locals 1

    .prologue
    .line 10158
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 10208
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelativeDays()Z
    .locals 1

    .prologue
    .line 10277
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelativeSeconds()Z
    .locals 1

    .prologue
    .line 10258
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRetireVersion()Z
    .locals 1

    .prologue
    .line 10177
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10115
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 10449
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 10450
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 10454
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 10455
    :sswitch_0
    return-object p0

    .line 10460
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 10461
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto :goto_0

    .line 10465
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 10466
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto :goto_0

    .line 10470
    :sswitch_3
    const/16 v8, 0x1a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10472
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 10473
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 10474
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 10475
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10477
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 10478
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 10479
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10477
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10472
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 10482
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 10483
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    goto :goto_0

    .line 10487
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0x20

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10489
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    if-nez v8, :cond_5

    move v1, v7

    .line 10490
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 10491
    .local v4, "newArray":[I
    if-eqz v1, :cond_4

    .line 10492
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10494
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 10495
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10496
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10494
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10489
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_5
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v1, v8

    goto :goto_3

    .line 10499
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10500
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    goto/16 :goto_0

    .line 10504
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 10505
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 10507
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 10508
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 10509
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 10510
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 10511
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 10513
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10514
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 10515
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 10516
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 10517
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10519
    :cond_8
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_a

    .line 10520
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10519
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 10514
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v1, v8

    goto :goto_6

    .line 10522
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    .line 10523
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 10527
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    const/16 v8, 0x30

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10529
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    if-nez v8, :cond_c

    move v1, v7

    .line 10530
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 10531
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_b

    .line 10532
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10534
    :cond_b
    :goto_9
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_d

    .line 10535
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10536
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10534
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 10529
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_c
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v1, v8

    goto :goto_8

    .line 10539
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10540
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    goto/16 :goto_0

    .line 10544
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 10545
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 10547
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 10548
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 10549
    .restart local v5    # "startPos":I
    :goto_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_e

    .line 10550
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 10551
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 10553
    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10554
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    if-nez v8, :cond_10

    move v1, v7

    .line 10555
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 10556
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_f

    .line 10557
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10559
    :cond_f
    :goto_c
    array-length v8, v4

    if-ge v1, v8, :cond_11

    .line 10560
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 10559
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 10554
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_10
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v1, v8

    goto :goto_b

    .line 10562
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_11
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    .line 10563
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 10567
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 10568
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto/16 :goto_0

    .line 10572
    :sswitch_9
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-nez v8, :cond_12

    .line 10573
    new-instance v8, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 10575
    :cond_12
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10579
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 10580
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto/16 :goto_0

    .line 10584
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 10585
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto/16 :goto_0

    .line 10589
    :sswitch_c
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    if-nez v8, :cond_13

    .line 10590
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 10592
    :cond_13
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10596
    :sswitch_d
    const/16 v8, 0x62

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10598
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-nez v8, :cond_15

    move v1, v7

    .line 10599
    .restart local v1    # "i":I
    :goto_d
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 10601
    .local v4, "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v1, :cond_14

    .line 10602
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10604
    :cond_14
    :goto_e
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_16

    .line 10605
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    aput-object v8, v4, v1

    .line 10606
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10607
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10604
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 10598
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_15
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v1, v8

    goto :goto_d

    .line 10610
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_16
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    aput-object v8, v4, v1

    .line 10611
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10612
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    goto/16 :goto_0

    .line 10616
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 10617
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    goto/16 :goto_0

    .line 10450
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x30 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
    .end sparse-switch
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10228
    if-nez p1, :cond_0

    .line 10229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10231
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 10232
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10233
    return-object p0
.end method

.method public setMinVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10153
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 10154
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10155
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10200
    if-nez p1, :cond_0

    .line 10201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10203
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 10204
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10205
    return-object p0
.end method

.method public setRelativeDays(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10272
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 10273
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10274
    return-object p0
.end method

.method public setRelativeSeconds(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10253
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 10254
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10255
    return-object p0
.end method

.method public setRetireVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10172
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 10173
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    .line 10174
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10310
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 10311
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10313
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 10314
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10316
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 10317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 10318
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 10319
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 10320
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10324
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v2, v2

    if-lez v2, :cond_4

    .line 10325
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 10326
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10329
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v2, v2

    if-lez v2, :cond_5

    .line 10330
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 10331
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10334
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 10335
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10337
    :cond_6
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v2, :cond_7

    .line 10338
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10340
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 10341
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10343
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 10344
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10346
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    if-eqz v2, :cond_a

    .line 10347
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10349
    :cond_a
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 10350
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 10351
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    aget-object v0, v2, v1

    .line 10352
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v0, :cond_b

    .line 10353
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10350
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10357
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .end local v1    # "i":I
    :cond_c
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d

    .line 10358
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10360
    :cond_d
    return-void
.end method
