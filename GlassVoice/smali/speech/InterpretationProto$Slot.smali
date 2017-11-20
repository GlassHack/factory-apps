.class public final Lspeech/InterpretationProto$Slot;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "InterpretationProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/InterpretationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lspeech/InterpretationProto$Slot;


# instance fields
.field public alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private confidence_:F

.field public decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

.field private literal_:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

.field private pretextnormValue_:Ljava/lang/String;

.field public subslot:[Lspeech/InterpretationProto$Slot;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 109
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clear()Lspeech/InterpretationProto$Slot;

    .line 110
    return-void
.end method

.method public static emptyArray()[Lspeech/InterpretationProto$Slot;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lspeech/InterpretationProto$Slot;->_emptyArray:[Lspeech/InterpretationProto$Slot;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lspeech/InterpretationProto$Slot;->_emptyArray:[Lspeech/InterpretationProto$Slot;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lspeech/InterpretationProto$Slot;

    sput-object v0, Lspeech/InterpretationProto$Slot;->_emptyArray:[Lspeech/InterpretationProto$Slot;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lspeech/InterpretationProto$Slot;->_emptyArray:[Lspeech/InterpretationProto$Slot;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lspeech/InterpretationProto$Slot;

    invoke-direct {v0}, Lspeech/InterpretationProto$Slot;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Slot;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Slot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/InterpretationProto$Slot;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lspeech/InterpretationProto$Slot;

    invoke-direct {v0}, Lspeech/InterpretationProto$Slot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    return-object v0
.end method


# virtual methods
.method public clear()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->name:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 118
    invoke-static {}, Lspeech/InterpretationProto$Slot;->emptyArray()[Lspeech/InterpretationProto$Slot;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    .line 119
    invoke-static {}, Lspeech/DecodedWordProto$DecodedWord;->emptyArray()[Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 121
    invoke-static {}, Lspeech/DecodedWordProto$DecodedWord;->emptyArray()[Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    .line 124
    return-object p0
.end method

.method public clearConfidence()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 70
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public clearLiteral()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 51
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearPretextnormValue()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 98
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 99
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    return v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    return-object v0
.end method

.method public getPretextnormValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 173
    .local v2, "size":I
    const/4 v3, 0x1

    iget-object v4, p0, Lspeech/InterpretationProto$Slot;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 175
    const/4 v3, 0x2

    iget-object v4, p0, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    iget v3, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 178
    const/4 v3, 0x3

    iget v4, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    :cond_0
    iget v3, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 182
    const/4 v3, 0x4

    iget-object v4, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 185
    :cond_1
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 187
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    aget-object v0, v3, v1

    .line 188
    .local v0, "element":Lspeech/InterpretationProto$Slot;
    if-eqz v0, :cond_2

    .line 189
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 186
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "element":Lspeech/InterpretationProto$Slot;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 195
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 196
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    aget-object v0, v3, v1

    .line 197
    .local v0, "element":Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v0, :cond_4

    .line 198
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 204
    const/16 v3, 0x8

    iget-object v4, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 207
    :cond_6
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 208
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 209
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    aget-object v0, v3, v1

    .line 210
    .restart local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v0, :cond_7

    .line 211
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 208
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    .end local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    .end local v1    # "i":I
    :cond_8
    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v3, :cond_9

    .line 217
    const/16 v3, 0x12

    iget-object v4, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 220
    :cond_9
    iput v2, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    .line 221
    return v2
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLiteral()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPretextnormValue()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lspeech/InterpretationProto$Slot;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Slot;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lspeech/InterpretationProto$Slot;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 230
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 234
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 235
    :sswitch_0
    return-object p0

    .line 240
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lspeech/InterpretationProto$Slot;->name:Ljava/lang/String;

    goto :goto_0

    .line 244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    goto :goto_0

    .line 248
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 249
    iget v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    goto :goto_0

    .line 253
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 254
    iget v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    goto :goto_0

    .line 258
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 260
    .local v0, "arrayLength":I
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    if-nez v5, :cond_2

    move v1, v4

    .line 261
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lspeech/InterpretationProto$Slot;

    .line 263
    .local v2, "newArray":[Lspeech/InterpretationProto$Slot;
    if-eqz v1, :cond_1

    .line 264
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 267
    new-instance v5, Lspeech/InterpretationProto$Slot;

    invoke-direct {v5}, Lspeech/InterpretationProto$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 268
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 269
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 260
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :cond_2
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    array-length v1, v5

    goto :goto_1

    .line 272
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :cond_3
    new-instance v5, Lspeech/InterpretationProto$Slot;

    invoke-direct {v5}, Lspeech/InterpretationProto$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 273
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 274
    iput-object v2, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 278
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/InterpretationProto$Slot;
    :sswitch_6
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 280
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-nez v5, :cond_5

    move v1, v4

    .line 281
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lspeech/DecodedWordProto$DecodedWord;

    .line 283
    .local v2, "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v1, :cond_4

    .line 284
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 287
    new-instance v5, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v5}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    aput-object v5, v2, v1

    .line 288
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 289
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 280
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :cond_5
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v1, v5

    goto :goto_3

    .line 292
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :cond_6
    new-instance v5, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v5}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    aput-object v5, v2, v1

    .line 293
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 294
    iput-object v2, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    goto/16 :goto_0

    .line 298
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 299
    iget v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    goto/16 :goto_0

    .line 303
    :sswitch_8
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 305
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-nez v5, :cond_8

    move v1, v4

    .line 306
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lspeech/DecodedWordProto$DecodedWord;

    .line 308
    .restart local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v1, :cond_7

    .line 309
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 312
    new-instance v5, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v5}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    aput-object v5, v2, v1

    .line 313
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 314
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 305
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :cond_8
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v1, v5

    goto :goto_5

    .line 317
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :cond_9
    new-instance v5, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v5}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    aput-object v5, v2, v1

    .line 318
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 319
    iput-object v2, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    goto/16 :goto_0

    .line 323
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lspeech/DecodedWordProto$DecodedWord;
    :sswitch_9
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-nez v5, :cond_a

    .line 324
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    iput-object v5, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 326
    :cond_a
    iget-object v5, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x92 -> :sswitch_9
    .end sparse-switch
.end method

.method public setConfidence(F)Lspeech/InterpretationProto$Slot;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 61
    iput p1, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 62
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setLiteral(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
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
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setPretextnormValue(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 90
    iget v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    .line 91
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
    .line 130
    const/4 v2, 0x1

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 131
    const/4 v2, 0x2

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->value:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    iget v2, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x3

    iget v3, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    :cond_0
    iget v2, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 136
    const/4 v2, 0x4

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_1
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 140
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->subslot:[Lspeech/InterpretationProto$Slot;

    aget-object v0, v2, v1

    .line 141
    .local v0, "element":Lspeech/InterpretationProto$Slot;
    if-eqz v0, :cond_2

    .line 142
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "element":Lspeech/InterpretationProto$Slot;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 147
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 148
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->decodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    aget-object v0, v2, v1

    .line 149
    .local v0, "element":Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v0, :cond_4

    .line 150
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 147
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lspeech/InterpretationProto$Slot;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 155
    const/16 v2, 0x8

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 157
    :cond_6
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 158
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 159
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords:[Lspeech/DecodedWordProto$DecodedWord;

    aget-object v0, v2, v1

    .line 160
    .restart local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    if-eqz v0, :cond_7

    .line 161
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 158
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    .end local v0    # "element":Lspeech/DecodedWordProto$DecodedWord;
    .end local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v2, :cond_9

    .line 166
    const/16 v2, 0x12

    iget-object v3, p0, Lspeech/InterpretationProto$Slot;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 168
    :cond_9
    return-void
.end method
