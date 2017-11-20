.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialect"
.end annotation


# static fields
.field public static final HELP_ACTIONS_CALL:I = 0x1

.field public static final HELP_ACTIONS_DIRECTIONS_TO:I = 0x3

.field public static final HELP_ACTIONS_MAP_OF:I = 0x4

.field public static final HELP_ACTIONS_NAVIGATE_TO:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;


# instance fields
.field private bcp47Locale_:Ljava/lang/String;

.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field public helpActions:[I

.field private imeSupported_:Z

.field public javaLocales:[Ljava/lang/String;

.field private mainJavaLocale_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3325
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3326
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3327
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 2

    .prologue
    .line 3221
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    if-nez v0, :cond_1

    .line 3222
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3224
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    if-nez v0, :cond_0

    .line 3225
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3227
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3229
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    return-object v0

    .line 3227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3522
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3516
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3330
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3333
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    .line 3334
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    .line 3335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3336
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3337
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    .line 3338
    return-object p0
.end method

.method public clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3274
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3275
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3252
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3253
    return-object p0
.end method

.method public clearImeSupported()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3321
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3322
    return-object p0
.end method

.method public clearMainJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3302
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3303
    return-object p0
.end method

.method public getBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeSupported()Z
    .locals 1

    .prologue
    .line 3309
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    return v0
.end method

.method public getMainJavaLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3373
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3374
    .local v4, "size":I
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3375
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3378
    :cond_0
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 3379
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3382
    :cond_1
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 3383
    const/4 v0, 0x0

    .line 3384
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3385
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 3386
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3387
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3388
    add-int/lit8 v0, v0, 0x1

    .line 3389
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3385
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3393
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 3394
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3396
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v5, v5

    if-lez v5, :cond_6

    .line 3397
    const/4 v1, 0x0

    .line 3398
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 3399
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    aget v2, v5, v3

    .line 3400
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 3398
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3403
    .end local v2    # "element":I
    :cond_5
    add-int/2addr v4, v1

    .line 3404
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 3406
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    .line 3407
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3410
    :cond_7
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    .line 3411
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3414
    :cond_8
    iput v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    .line 3415
    return v4
.end method

.method public hasBcp47Locale()Z
    .locals 1

    .prologue
    .line 3270
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 3248
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeSupported()Z
    .locals 1

    .prologue
    .line 3317
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMainJavaLocale()Z
    .locals 1

    .prologue
    .line 3298
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 3209
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 3424
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 3428
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3429
    :sswitch_0
    return-object p0

    .line 3434
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3435
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    goto :goto_0

    .line 3439
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3440
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    goto :goto_0

    .line 3444
    :sswitch_3
    const/16 v8, 0x22

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3446
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 3447
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 3448
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3449
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3451
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 3452
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 3453
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3451
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3446
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 3456
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 3457
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    goto :goto_0

    .line 3461
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0x28

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3463
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    if-nez v8, :cond_5

    move v1, v7

    .line 3464
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 3465
    .local v4, "newArray":[I
    if-eqz v1, :cond_4

    .line 3466
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3468
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 3469
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3470
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3468
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3463
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_5
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v1, v8

    goto :goto_3

    .line 3473
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3474
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    goto/16 :goto_0

    .line 3478
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 3479
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 3481
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 3482
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 3483
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 3484
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 3485
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3487
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3488
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 3489
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 3490
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 3491
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3493
    :cond_8
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_a

    .line 3494
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 3493
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3488
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v1, v8

    goto :goto_6

    .line 3496
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    .line 3497
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 3501
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3502
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    goto/16 :goto_0

    .line 3506
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3507
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    goto/16 :goto_0

    .line 3424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3262
    if-nez p1, :cond_0

    .line 3263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3265
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3266
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3267
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3240
    if-nez p1, :cond_0

    .line 3241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3243
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3244
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3245
    return-object p0
.end method

.method public setImeSupported(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3312
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3313
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3314
    return-object p0
.end method

.method public setMainJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3290
    if-nez p1, :cond_0

    .line 3291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3293
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3294
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    .line 3295
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
    .line 3344
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3345
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3347
    :cond_0
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3348
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3350
    :cond_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 3351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3352
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3353
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3354
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3351
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3358
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3359
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3360
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3363
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 3364
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3366
    :cond_5
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 3367
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3369
    :cond_6
    return-void
.end method
