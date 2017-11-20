.class public final Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredResponse"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;


# instance fields
.field private bitField0_:I

.field public calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

.field public currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

.field public dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

.field public ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

.field public financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

.field public flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

.field public gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

.field public knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

.field public publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

.field public recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

.field public recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

.field public relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

.field private replacesType_:I

.field public snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

.field public sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

.field public translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

.field public weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->clear()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 96
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    sput-object v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    .line 100
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 101
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 102
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 103
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 104
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 105
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 106
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 107
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 108
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 109
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 110
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 111
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 112
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 113
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 114
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 115
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 116
    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    .line 118
    return-object p0
.end method

.method public clearReplacesType()Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 42
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public getReplacesType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 180
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    if-eqz v1, :cond_1

    .line 185
    const v1, 0x1a07149

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    if-eqz v1, :cond_2

    .line 189
    const v1, 0x1bd1793

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    if-eqz v1, :cond_3

    .line 193
    const v1, 0x1bd4b0a

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    if-eqz v1, :cond_4

    .line 197
    const v1, 0x1be0d85

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    if-eqz v1, :cond_5

    .line 201
    const v1, 0x1c7f302

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    if-eqz v1, :cond_6

    .line 205
    const v1, 0x1c879ea

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v1, :cond_7

    .line 209
    const v1, 0x1ca484a

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    if-eqz v1, :cond_8

    .line 213
    const v1, 0x1cb332a

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    if-eqz v1, :cond_9

    .line 217
    const v1, 0x1cce67c

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    if-eqz v1, :cond_a

    .line 221
    const v1, 0x1fe4d3a

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_a
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    if-eqz v1, :cond_b

    .line 225
    const v1, 0x207765c

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    if-eqz v1, :cond_c

    .line 229
    const v1, 0x21a00dd

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_c
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    if-eqz v1, :cond_d

    .line 233
    const v1, 0x2466b15

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_d
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    if-eqz v1, :cond_e

    .line 237
    const v1, 0x2588b73

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_e
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    if-eqz v1, :cond_f

    .line 241
    const v1, 0x293d11b

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_f
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    if-eqz v1, :cond_10

    .line 245
    const v1, 0x2cc30a3    # 3.0003022E-37f

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_10
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->cachedSize:I

    .line 249
    return v0
.end method

.method public hasReplacesType()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 258
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 262
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    :sswitch_0
    return-object p0

    .line 268
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 269
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    goto :goto_0

    .line 273
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    if-nez v1, :cond_1

    .line 274
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 280
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    if-nez v1, :cond_2

    .line 281
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 287
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    if-nez v1, :cond_3

    .line 288
    new-instance v1, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 294
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    if-nez v1, :cond_4

    .line 295
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 301
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    if-nez v1, :cond_5

    .line 302
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 304
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 308
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    if-nez v1, :cond_6

    .line 309
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 311
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 315
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v1, :cond_7

    .line 316
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 318
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 322
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    if-nez v1, :cond_8

    .line 323
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 325
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    if-nez v1, :cond_9

    .line 330
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 332
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 336
    :sswitch_b
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    if-nez v1, :cond_a

    .line 337
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 339
    :cond_a
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 343
    :sswitch_c
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    if-nez v1, :cond_b

    .line 344
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 346
    :cond_b
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 350
    :sswitch_d
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    if-nez v1, :cond_c

    .line 351
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 353
    :cond_c
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 357
    :sswitch_e
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    if-nez v1, :cond_d

    .line 358
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 360
    :cond_d
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 364
    :sswitch_f
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    if-nez v1, :cond_e

    .line 365
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    .line 367
    :cond_e
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 371
    :sswitch_10
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    if-nez v1, :cond_f

    .line 372
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 374
    :cond_f
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 378
    :sswitch_11
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    if-nez v1, :cond_10

    .line 379
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    .line 381
    :cond_10
    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xd038a4a -> :sswitch_2
        0xde8bc9a -> :sswitch_3
        0xdea5852 -> :sswitch_4
        0xdf06c2a -> :sswitch_5
        0xe3f9812 -> :sswitch_6
        0xe43cf52 -> :sswitch_7
        0xe524252 -> :sswitch_8
        0xe599952 -> :sswitch_9
        0xe6733e2 -> :sswitch_a
        0xff269d2 -> :sswitch_b
        0x103bb2e2 -> :sswitch_c
        0x10d006ea -> :sswitch_d
        0x123358aa -> :sswitch_e
        0x12c45b9a -> :sswitch_f
        0x149e88da -> :sswitch_10
        0x1661851a -> :sswitch_11
    .end sparse-switch
.end method

.method public setReplacesType(I)Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    .line 34
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    .line 35
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
    .line 124
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->replacesType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    if-eqz v0, :cond_1

    .line 128
    const v0, 0x1a07149

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->translationResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    if-eqz v0, :cond_2

    .line 131
    const v0, 0x1bd1793

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->currencyConversionResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    if-eqz v0, :cond_3

    .line 134
    const v0, 0x1bd4b0a

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->calculatorResultExtension:Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    if-eqz v0, :cond_4

    .line 137
    const v0, 0x1be0d85

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->weatherResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    if-eqz v0, :cond_5

    .line 140
    const v0, 0x1c7f302

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->financeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    if-eqz v0, :cond_6

    .line 143
    const v0, 0x1c879ea

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->flightResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v0, :cond_7

    .line 146
    const v0, 0x1ca484a

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->ecoutezLocalResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    if-eqz v0, :cond_8

    .line 149
    const v0, 0x1cb332a

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->dictionaryResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    if-eqz v0, :cond_9

    .line 152
    const v0, 0x1cce67c

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->sportsResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    if-eqz v0, :cond_a

    .line 155
    const v0, 0x1fe4d3a

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->knowledgeResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    if-eqz v0, :cond_b

    .line 158
    const v0, 0x207765c

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->snippetResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    if-eqz v0, :cond_c

    .line 161
    const v0, 0x21a00dd

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->relatedSearchResultsExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    if-eqz v0, :cond_d

    .line 164
    const v0, 0x2466b15

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->gogglesGenericResultExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 166
    :cond_d
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    if-eqz v0, :cond_e

    .line 167
    const v0, 0x2588b73

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->publicDataResultExtension:Lcom/google/majel/proto/EcoutezStructuredResponse$PublicDataResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 169
    :cond_e
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    if-eqz v0, :cond_f

    .line 170
    const v0, 0x293d11b

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedContactExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    if-eqz v0, :cond_10

    .line 173
    const v0, 0x2cc30a3    # 3.0003022E-37f

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;->recognizedTextExtension:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedText;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 175
    :cond_10
    return-void
.end method
