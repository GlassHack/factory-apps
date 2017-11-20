.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;


# instance fields
.field private bitField0_:I

.field public blacklistedDevices:[Ljava/lang/String;

.field private enableMusicDetector_:Z

.field private enableMusicHotworder_:Z

.field private enablePreemptiveDetection_:Z

.field private musicDetectorThreshold_:F

.field private stopMusicDetectionOnStartOfSpeech_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5230
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5231
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5232
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 2

    .prologue
    .line 5119
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-nez v0, :cond_1

    .line 5120
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5122
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-nez v0, :cond_0

    .line 5123
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5127
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    return-object v0

    .line 5125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5384
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5378
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5235
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5236
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 5237
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5239
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    .line 5240
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5241
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    .line 5243
    return-object p0
.end method

.method public clearEnableMusicDetector()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 5147
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5148
    return-object p0
.end method

.method public clearEnableMusicHotworder()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5207
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5208
    return-object p0
.end method

.method public clearEnablePreemptiveDetection()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5226
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5227
    return-object p0
.end method

.method public clearMusicDetectorThreshold()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5165
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5166
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5167
    return-object p0
.end method

.method public clearStopMusicDetectionOnStartOfSpeech()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5185
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5186
    return-object p0
.end method

.method public getEnableMusicDetector()Z
    .locals 1

    .prologue
    .line 5135
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    return v0
.end method

.method public getEnableMusicHotworder()Z
    .locals 1

    .prologue
    .line 5195
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    return v0
.end method

.method public getEnablePreemptiveDetection()Z
    .locals 1

    .prologue
    .line 5214
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    return v0
.end method

.method public getMusicDetectorThreshold()F
    .locals 1

    .prologue
    .line 5154
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 5276
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 5277
    .local v4, "size":I
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 5278
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5281
    :cond_0
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 5282
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 5285
    :cond_1
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 5286
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5289
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 5290
    const/4 v0, 0x0

    .line 5291
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 5292
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 5293
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 5294
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 5295
    add-int/lit8 v0, v0, 0x1

    .line 5296
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 5292
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5300
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 5301
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 5303
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 5304
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5307
    :cond_6
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    .line 5308
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5311
    :cond_7
    iput v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    .line 5312
    return v4
.end method

.method public getStopMusicDetectionOnStartOfSpeech()Z
    .locals 1

    .prologue
    .line 5173
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    return v0
.end method

.method public hasEnableMusicDetector()Z
    .locals 1

    .prologue
    .line 5143
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableMusicHotworder()Z
    .locals 1

    .prologue
    .line 5203
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnablePreemptiveDetection()Z
    .locals 1

    .prologue
    .line 5222
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMusicDetectorThreshold()Z
    .locals 1

    .prologue
    .line 5162
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStopMusicDetectionOnStartOfSpeech()Z
    .locals 1

    .prologue
    .line 5181
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

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
    .line 5113
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5321
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5325
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5326
    :sswitch_0
    return-object p0

    .line 5331
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 5332
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    goto :goto_0

    .line 5336
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5337
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    goto :goto_0

    .line 5341
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5342
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    goto :goto_0

    .line 5346
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5348
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 5349
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 5350
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5351
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5353
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5354
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 5355
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5353
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5348
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 5358
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 5359
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    goto :goto_0

    .line 5363
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5364
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    goto :goto_0

    .line 5368
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5369
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    goto/16 :goto_0

    .line 5321
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setEnableMusicDetector(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5138
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 5139
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5140
    return-object p0
.end method

.method public setEnableMusicHotworder(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5198
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5199
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5200
    return-object p0
.end method

.method public setEnablePreemptiveDetection(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5217
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5218
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5219
    return-object p0
.end method

.method public setMusicDetectorThreshold(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 5157
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5158
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5159
    return-object p0
.end method

.method public setStopMusicDetectionOnStartOfSpeech(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5176
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5177
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    .line 5178
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
    .line 5249
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5250
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5252
    :cond_0
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5253
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 5255
    :cond_1
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5256
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5258
    :cond_2
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 5259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 5260
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 5261
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 5262
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5259
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5266
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 5267
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5269
    :cond_5
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 5270
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5272
    :cond_6
    return-void
.end method
