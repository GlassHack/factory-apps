.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hypothesis"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;


# instance fields
.field private accept_:Z

.field public alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private confidence_:F

.field public phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private prenormText_:Ljava/lang/String;

.field private scrubbedText_:Ljava/lang/String;

.field public semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

.field public stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private text_:Ljava/lang/String;

.field public wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field public wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 268
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-nez v0, :cond_1

    .line 132
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 278
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 279
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 280
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 281
    invoke-static {}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->emptyArray()[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 282
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    .line 284
    return-object p0
.end method

.method public clearAccept()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 247
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 248
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 228
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 229
    return-object p0
.end method

.method public clearPrenormText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 184
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 185
    return-object p0
.end method

.method public clearScrubbedText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 206
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 207
    return-object p0
.end method

.method public clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 162
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 163
    return-object p0
.end method

.method public getAccept()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    return v0
.end method

.method public getPrenormText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    return-object v0
.end method

.method public getScrubbedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 332
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 333
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 334
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 337
    :cond_0
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 338
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_2

    .line 342
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 345
    :cond_2
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_3

    .line 346
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 351
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    aget-object v0, v3, v1

    .line 352
    .local v0, "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v0, :cond_4

    .line 353
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 350
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v3, :cond_6

    .line 359
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 362
    :cond_6
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-eqz v3, :cond_7

    .line 363
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 366
    :cond_7
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_8

    .line 367
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 370
    :cond_8
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 371
    const/16 v3, 0xb

    iget-boolean v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 374
    :cond_9
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 375
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 378
    :cond_a
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_b

    .line 379
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 382
    :cond_b
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    .line 383
    return v2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccept()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrenormText()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScrubbedText()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 125
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 391
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 392
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 396
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 397
    :sswitch_0
    return-object p0

    .line 402
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 403
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    goto :goto_0

    .line 407
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 408
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    goto :goto_0

    .line 412
    :sswitch_3
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_1

    .line 413
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 415
    :cond_1
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 419
    :sswitch_4
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_2

    .line 420
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 422
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 426
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 428
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-nez v5, :cond_4

    move v1, v4

    .line 429
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 431
    .local v2, "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v1, :cond_3

    .line 432
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 435
    new-instance v5, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v5}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    aput-object v5, v2, v1

    .line 436
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 437
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_4
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v1, v5

    goto :goto_1

    .line 440
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_5
    new-instance v5, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v5}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    aput-object v5, v2, v1

    .line 441
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 442
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto/16 :goto_0

    .line 446
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :sswitch_6
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-nez v5, :cond_6

    .line 447
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 449
    :cond_6
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 453
    :sswitch_7
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-nez v5, :cond_7

    .line 454
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 456
    :cond_7
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 460
    :sswitch_8
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_8

    .line 461
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 463
    :cond_8
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 467
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 468
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    goto/16 :goto_0

    .line 472
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 473
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    goto/16 :goto_0

    .line 477
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 478
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    goto/16 :goto_0

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x52 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
    .end sparse-switch
.end method

.method public setAccept(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 239
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 220
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public setPrenormText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 176
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 177
    return-object p0
.end method

.method public setScrubbedText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 198
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 199
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 154
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    .line 155
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
    .line 290
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 291
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_0
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 294
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_2

    .line 297
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_3

    .line 300
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 304
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    aget-object v0, v2, v1

    .line 305
    .local v0, "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v0, :cond_4

    .line 306
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 303
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v2, :cond_6

    .line 311
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 313
    :cond_6
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-eqz v2, :cond_7

    .line 314
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 316
    :cond_7
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_8

    .line 317
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 319
    :cond_8
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 320
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 322
    :cond_9
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 323
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 325
    :cond_a
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 326
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 328
    :cond_b
    return-void
.end method
