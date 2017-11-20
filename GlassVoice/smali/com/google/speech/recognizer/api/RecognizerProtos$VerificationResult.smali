.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerificationResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;


# instance fields
.field private bitField0_:I

.field private speakerId_:Ljava/lang/String;

.field private speakerVerified_:Z

.field private verificationScore_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1313
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    .line 1314
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 2

    .prologue
    .line 1239
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    if-nez v0, :cond_1

    .line 1240
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1242
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    if-nez v0, :cond_0

    .line 1243
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    .line 1245
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    return-object v0

    .line 1245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1394
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1317
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1318
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    .line 1319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    .line 1320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    .line 1321
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->cachedSize:I

    .line 1322
    return-object p0
.end method

.method public clearSpeakerId()Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1

    .prologue
    .line 1288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    .line 1289
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1290
    return-object p0
.end method

.method public clearSpeakerVerified()Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    .line 1267
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1268
    return-object p0
.end method

.method public clearVerificationScore()Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1

    .prologue
    .line 1307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    .line 1308
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1309
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1341
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1342
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1343
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1346
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1347
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1350
    :cond_1
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1351
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1354
    :cond_2
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->cachedSize:I

    .line 1355
    return v0
.end method

.method public getSpeakerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakerVerified()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    return v0
.end method

.method public getVerificationScore()F
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    return v0
.end method

.method public hasSpeakerId()Z
    .locals 1

    .prologue
    .line 1285
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakerVerified()Z
    .locals 1

    .prologue
    .line 1263
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVerificationScore()Z
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

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
    .line 1233
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1364
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1368
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    :sswitch_0
    return-object p0

    .line 1374
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    .line 1375
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    goto :goto_0

    .line 1379
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    .line 1380
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    goto :goto_0

    .line 1384
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    .line 1385
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    goto :goto_0

    .line 1364
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public setSpeakerId(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1277
    if-nez p1, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1280
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    .line 1281
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1282
    return-object p0
.end method

.method public setSpeakerVerified(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1258
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    .line 1259
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1260
    return-object p0
.end method

.method public setVerificationScore(F)Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1299
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    .line 1300
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    .line 1301
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
    .line 1328
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1329
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerVerified_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1331
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1332
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->speakerId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1334
    :cond_1
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1335
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->verificationScore_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1337
    :cond_2
    return-void
.end method
