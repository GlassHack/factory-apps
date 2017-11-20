.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DictionaryResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;


# instance fields
.field public attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

.field private bitField0_:I

.field private dictionaryWord_:Ljava/lang/String;

.field public externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

.field public googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

.field private normalForm_:Ljava/lang/String;

.field public partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

.field private partOfSpeech_:Ljava/lang/String;

.field private pronunciation_:Ljava/lang/String;

.field private sound_:Ljava/lang/String;

.field public synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

.field private synonymsHeader_:Ljava/lang/String;

.field private variationType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7204
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7205
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 7206
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 2

    .prologue
    .line 7022
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    if-nez v0, :cond_1

    .line 7023
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7025
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    if-nez v0, :cond_0

    .line 7026
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 7028
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7030
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    return-object v0

    .line 7028
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7488
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7482
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7209
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 7211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 7212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 7213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 7214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 7215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 7216
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 7217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 7218
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 7219
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7220
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7221
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    .line 7223
    return-object p0
.end method

.method public clearDictionaryWord()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 7053
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7054
    return-object p0
.end method

.method public clearNormalForm()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 7097
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7098
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 7119
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7120
    return-object p0
.end method

.method public clearPronunciation()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 7141
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7142
    return-object p0
.end method

.method public clearSound()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 7163
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7164
    return-object p0
.end method

.method public clearSynonymsHeader()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 7188
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7189
    return-object p0
.end method

.method public clearVariationType()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 7074
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 7075
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7076
    return-object p0
.end method

.method public getDictionaryWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7038
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7082
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7104
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7126
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7284
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 7285
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 7286
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7289
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 7290
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7293
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 7294
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7297
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 7298
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7301
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 7302
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7305
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 7306
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7309
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 7310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 7311
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    aget-object v0, v3, v1

    .line 7312
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    if-eqz v0, :cond_6

    .line 7313
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7310
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7318
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_8

    .line 7319
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7322
    :cond_8
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    array-length v3, v3

    if-lez v3, :cond_a

    .line 7323
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 7324
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    aget-object v0, v3, v1

    .line 7325
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    if-eqz v0, :cond_9

    .line 7326
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7323
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7331
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .end local v1    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v3, :cond_b

    .line 7332
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7335
    :cond_b
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v3, :cond_c

    .line 7336
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7339
    :cond_c
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    array-length v3, v3

    if-lez v3, :cond_e

    .line 7340
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 7341
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    aget-object v0, v3, v1

    .line 7342
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    if-eqz v0, :cond_d

    .line 7343
    const/16 v3, 0xc

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7340
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7348
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .end local v1    # "i":I
    :cond_e
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    .line 7349
    return v2
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7148
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynonymsHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7173
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7060
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDictionaryWord()Z
    .locals 1

    .prologue
    .line 7049
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNormalForm()Z
    .locals 1

    .prologue
    .line 7093
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 7115
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPronunciation()Z
    .locals 1

    .prologue
    .line 7137
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 7159
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynonymsHeader()Z
    .locals 1

    .prologue
    .line 7184
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVariationType()Z
    .locals 1

    .prologue
    .line 7071
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

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
    .line 7016
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 7357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 7358
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 7362
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7363
    :sswitch_0
    return-object p0

    .line 7368
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 7369
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 7374
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7378
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 7379
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7383
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 7384
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7388
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 7389
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7393
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 7394
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto :goto_0

    .line 7398
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7400
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    if-nez v5, :cond_2

    move v1, v4

    .line 7401
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 7403
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    if-eqz v1, :cond_1

    .line 7404
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7406
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 7407
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    aput-object v5, v2, v1

    .line 7408
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7409
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7400
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    array-length v1, v5

    goto :goto_1

    .line 7412
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    aput-object v5, v2, v1

    .line 7413
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7414
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    goto/16 :goto_0

    .line 7418
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 7419
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    goto/16 :goto_0

    .line 7423
    :sswitch_9
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7425
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    if-nez v5, :cond_5

    move v1, v4

    .line 7426
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 7428
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    if-eqz v1, :cond_4

    .line 7429
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7431
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 7432
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    aput-object v5, v2, v1

    .line 7433
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7434
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7431
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7425
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    array-length v1, v5

    goto :goto_3

    .line 7437
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    aput-object v5, v2, v1

    .line 7438
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7439
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    goto/16 :goto_0

    .line 7443
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :sswitch_a
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-nez v5, :cond_7

    .line 7444
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7446
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7450
    :sswitch_b
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-nez v5, :cond_8

    .line 7451
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7453
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7457
    :sswitch_c
    const/16 v5, 0x62

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7459
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-nez v5, :cond_a

    move v1, v4

    .line 7460
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 7462
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    if-eqz v1, :cond_9

    .line 7463
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7465
    :cond_9
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_b

    .line 7466
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    aput-object v5, v2, v1

    .line 7467
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7468
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7465
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7459
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :cond_a
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    array-length v1, v5

    goto :goto_5

    .line 7471
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :cond_b
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    aput-object v5, v2, v1

    .line 7472
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7473
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    goto/16 :goto_0

    .line 7358
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public setDictionaryWord(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7041
    if-nez p1, :cond_0

    .line 7042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7044
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 7045
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7046
    return-object p0
.end method

.method public setNormalForm(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7085
    if-nez p1, :cond_0

    .line 7086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7088
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 7089
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7090
    return-object p0
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7107
    if-nez p1, :cond_0

    .line 7108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7110
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 7111
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7112
    return-object p0
.end method

.method public setPronunciation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7129
    if-nez p1, :cond_0

    .line 7130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7132
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 7133
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7134
    return-object p0
.end method

.method public setSound(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7151
    if-nez p1, :cond_0

    .line 7152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7154
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 7155
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7156
    return-object p0
.end method

.method public setSynonymsHeader(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7176
    if-nez p1, :cond_0

    .line 7177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7179
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 7180
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7181
    return-object p0
.end method

.method public setVariationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7063
    if-nez p1, :cond_0

    .line 7064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7066
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 7067
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    .line 7068
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
    .line 7229
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 7230
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7232
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7233
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7235
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 7236
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7238
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 7239
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7241
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 7242
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7244
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 7245
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7247
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 7248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 7249
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning:[Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    aget-object v0, v2, v1

    .line 7250
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    if-eqz v0, :cond_6

    .line 7251
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7248
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7255
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 7256
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7258
    :cond_8
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 7259
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 7260
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym:[Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    aget-object v0, v2, v1

    .line 7261
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    if-eqz v0, :cond_9

    .line 7262
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7259
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7266
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v2, :cond_b

    .line 7267
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7269
    :cond_b
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v2, :cond_c

    .line 7270
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7272
    :cond_c
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 7273
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 7274
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    aget-object v0, v2, v1

    .line 7275
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    if-eqz v0, :cond_d

    .line 7276
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7273
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7280
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .end local v1    # "i":I
    :cond_e
    return-void
.end method
