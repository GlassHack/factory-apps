.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointerParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;


# instance fields
.field private bitField0_:I

.field private completeSilenceMsec_:I

.field private extraSilenceAfterEndOfSpeechMsec_:I

.field private noSpeechDetectedTimeoutMsec_:I

.field private possiblyCompleteSilenceMsec_:I

.field private speechMinimumLengthMsec_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1274
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1275
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 2

    .prologue
    .line 1165
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v0, :cond_1

    .line 1166
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1168
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v0, :cond_0

    .line 1169
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0

    .line 1171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1387
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1381
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1278
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1279
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1280
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1281
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1282
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1283
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1284
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    .line 1285
    return-object p0
.end method

.method public clearCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1193
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1194
    return-object p0
.end method

.method public clearExtraSilenceAfterEndOfSpeechMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1269
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1270
    return-object p0
.end method

.method public clearNoSpeechDetectedTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1250
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1251
    return-object p0
.end method

.method public clearPossiblyCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1212
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1213
    return-object p0
.end method

.method public clearSpeechMinimumLengthMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1231
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1232
    return-object p0
.end method

.method public getCompleteSilenceMsec()I
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    return v0
.end method

.method public getExtraSilenceAfterEndOfSpeechMsec()I
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    return v0
.end method

.method public getNoSpeechDetectedTimeoutMsec()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    return v0
.end method

.method public getPossiblyCompleteSilenceMsec()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1310
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1311
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1312
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1316
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1320
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_2
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1324
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_3
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1328
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_4
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    .line 1332
    return v0
.end method

.method public getSpeechMinimumLengthMsec()I
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    return v0
.end method

.method public hasCompleteSilenceMsec()Z
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtraSilenceAfterEndOfSpeechMsec()Z
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoSpeechDetectedTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1246
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPossiblyCompleteSilenceMsec()Z
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeechMinimumLengthMsec()Z
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

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
    .line 1159
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1341
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1345
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1346
    :sswitch_0
    return-object p0

    .line 1351
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1352
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    goto :goto_0

    .line 1356
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1357
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    goto :goto_0

    .line 1361
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1362
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    goto :goto_0

    .line 1366
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1367
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    goto :goto_0

    .line 1371
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1372
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    goto :goto_0

    .line 1341
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1184
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1185
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1186
    return-object p0
.end method

.method public setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1260
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1261
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1262
    return-object p0
.end method

.method public setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1241
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1242
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1243
    return-object p0
.end method

.method public setPossiblyCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1203
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1204
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1205
    return-object p0
.end method

.method public setSpeechMinimumLengthMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1223
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    .line 1224
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1292
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1294
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1295
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1297
    :cond_1
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1298
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1300
    :cond_2
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1301
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1303
    :cond_3
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1304
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1306
    :cond_4
    return-void
.end method
