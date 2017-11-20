.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguagePack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;


# instance fields
.field private bcp47Locale_:Ljava/lang/String;

.field private bitField0_:I

.field public compatibleBcp47Locales:[Ljava/lang/String;

.field private downloadUrl_:Ljava/lang/String;

.field private hotwordQuality_:I

.field public languagePackFormatVersion:[I

.field private languagePackId_:Ljava/lang/String;

.field public manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

.field private manifestUrl_:Ljava/lang/String;

.field private minimumDeviceClass_:I

.field private sizeKb_:I

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4416
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4417
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 2

    .prologue
    .line 4229
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-nez v0, :cond_1

    .line 4230
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4232
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-nez v0, :cond_0

    .line 4233
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4235
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4237
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0

    .line 4235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4702
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4696
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4420
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4422
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    .line 4423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4424
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4425
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4427
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    .line 4428
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    .line 4430
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    .line 4431
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    .line 4432
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    .line 4433
    return-object p0
.end method

.method public clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4260
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4261
    return-object p0
.end method

.method public clearDownloadUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4285
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4286
    return-object p0
.end method

.method public clearHotwordQuality()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4407
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    .line 4408
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4409
    return-object p0
.end method

.method public clearLanguagePackId()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4345
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4346
    return-object p0
.end method

.method public clearManifestUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    .line 4389
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4390
    return-object p0
.end method

.method public clearMinimumDeviceClass()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4367
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4368
    return-object p0
.end method

.method public clearSizeKb()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4323
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4324
    return-object p0
.end method

.method public clearVersion()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4304
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4305
    return-object p0
.end method

.method public getBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getHotwordQuality()I
    .locals 1

    .prologue
    .line 4396
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    return v0
.end method

.method public getLanguagePackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumDeviceClass()I
    .locals 1

    .prologue
    .line 4355
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 4488
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 4489
    .local v4, "size":I
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 4490
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4493
    :cond_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 4494
    const/4 v0, 0x0

    .line 4495
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 4496
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 4497
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 4498
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 4499
    add-int/lit8 v0, v0, 0x1

    .line 4500
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 4496
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4504
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 4505
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 4507
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 4508
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4511
    :cond_4
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 4512
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4515
    :cond_5
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 4516
    const/4 v5, 0x5

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4519
    :cond_6
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    .line 4520
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4523
    :cond_7
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v5, v5

    if-lez v5, :cond_9

    .line 4524
    const/4 v1, 0x0

    .line 4525
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 4526
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    aget v2, v5, v3

    .line 4527
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 4525
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4530
    .end local v2    # "element":I
    :cond_8
    add-int/2addr v4, v1

    .line 4531
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 4533
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_9
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_a

    .line 4534
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4537
    :cond_a
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_b

    .line 4538
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4541
    :cond_b
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_c

    .line 4542
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4545
    :cond_c
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    array-length v5, v5

    if-lez v5, :cond_e

    .line 4546
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 4547
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    aget-object v2, v5, v3

    .line 4548
    .local v2, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    if-eqz v2, :cond_d

    .line 4549
    const/16 v5, 0xb

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4546
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4554
    .end local v2    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .end local v3    # "i":I
    :cond_e
    iput v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    .line 4555
    return v4
.end method

.method public getSizeKb()I
    .locals 1

    .prologue
    .line 4311
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 4292
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    return v0
.end method

.method public hasBcp47Locale()Z
    .locals 1

    .prologue
    .line 4256
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 4281
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordQuality()Z
    .locals 1

    .prologue
    .line 4404
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguagePackId()Z
    .locals 1

    .prologue
    .line 4341
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManifestUrl()Z
    .locals 1

    .prologue
    .line 4385
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimumDeviceClass()Z
    .locals 1

    .prologue
    .line 4363
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSizeKb()Z
    .locals 1

    .prologue
    .line 4319
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 4300
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

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
    .line 4017
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 4564
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 4568
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4569
    :sswitch_0
    return-object p0

    .line 4574
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4575
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto :goto_0

    .line 4579
    :sswitch_2
    const/16 v8, 0x12

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4581
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 4582
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 4583
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 4584
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4586
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 4587
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 4588
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4586
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4581
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 4591
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 4592
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    goto :goto_0

    .line 4596
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4597
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto :goto_0

    .line 4601
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4602
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto :goto_0

    .line 4606
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4607
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto :goto_0

    .line 4611
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4612
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto/16 :goto_0

    .line 4616
    :sswitch_7
    const/16 v8, 0x38

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4618
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    if-nez v8, :cond_5

    move v1, v7

    .line 4619
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 4620
    .local v4, "newArray":[I
    if-eqz v1, :cond_4

    .line 4621
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4623
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 4624
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 4625
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4623
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4618
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_5
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v1, v8

    goto :goto_3

    .line 4628
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 4629
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    goto/16 :goto_0

    .line 4633
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4634
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4636
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 4637
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 4638
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 4639
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 4640
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4642
    :cond_7
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4643
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 4644
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 4645
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 4646
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4648
    :cond_8
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_a

    .line 4649
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 4648
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4643
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v1, v8

    goto :goto_6

    .line 4651
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    .line 4652
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4656
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4657
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto/16 :goto_0

    .line 4661
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    .line 4662
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto/16 :goto_0

    .line 4666
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    .line 4667
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    goto/16 :goto_0

    .line 4671
    :sswitch_c
    const/16 v8, 0x5a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4673
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    if-nez v8, :cond_c

    move v1, v7

    .line 4674
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    .line 4676
    .local v4, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    if-eqz v1, :cond_b

    .line 4677
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4679
    :cond_b
    :goto_9
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_d

    .line 4680
    new-instance v8, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    invoke-direct {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;-><init>()V

    aput-object v8, v4, v1

    .line 4681
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4682
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4679
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4673
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    :cond_c
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    array-length v1, v8

    goto :goto_8

    .line 4685
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    :cond_d
    new-instance v8, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    invoke-direct {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;-><init>()V

    aput-object v8, v4, v1

    .line 4686
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4687
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    goto/16 :goto_0

    .line 4564
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method public setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4248
    if-nez p1, :cond_0

    .line 4249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4251
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4252
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4253
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4273
    if-nez p1, :cond_0

    .line 4274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4276
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4277
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4278
    return-object p0
.end method

.method public setHotwordQuality(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4399
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    .line 4400
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4401
    return-object p0
.end method

.method public setLanguagePackId(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4333
    if-nez p1, :cond_0

    .line 4334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4336
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4337
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4338
    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4377
    if-nez p1, :cond_0

    .line 4378
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4380
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    .line 4381
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4382
    return-object p0
.end method

.method public setMinimumDeviceClass(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4358
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4359
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4360
    return-object p0
.end method

.method public setSizeKb(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4314
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4315
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4316
    return-object p0
.end method

.method public setVersion(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4295
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4296
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    .line 4297
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
    .line 4439
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4440
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4442
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 4443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4444
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 4445
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4446
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4450
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 4451
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4453
    :cond_3
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 4454
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4456
    :cond_4
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 4457
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4459
    :cond_5
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 4460
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4462
    :cond_6
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v2, v2

    if-lez v2, :cond_7

    .line 4463
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 4464
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4467
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 4468
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4470
    :cond_8
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 4471
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifestUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4473
    :cond_9
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    .line 4474
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hotwordQuality_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4476
    :cond_a
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 4477
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 4478
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->manifest:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    aget-object v0, v2, v1

    .line 4479
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    if-eqz v0, :cond_b

    .line 4480
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4477
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4484
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .end local v1    # "i":I
    :cond_c
    return-void
.end method
