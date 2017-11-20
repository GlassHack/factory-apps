.class public final Lcom/google/majel/proto/PeanutProtos$Text;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$Text;


# instance fields
.field public attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

.field private bitField0_:I

.field private clientShouldDecideInteraction_:Z

.field private disclaimerText_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private displayDescription_:Ljava/lang/String;

.field private display_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private ttsIsEligibleForBackground_:Z

.field private vocalizedAudio_:[B

.field private vocalized_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clear()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 224
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Text;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Text;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Text;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Text;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$Text;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$Text;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Text;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Text;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Text;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Text;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Text;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    .line 232
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    .line 233
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/google/majel/proto/AttributionProtos$Attribution;->emptyArray()[Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    .line 239
    return-object p0
.end method

.method public clearClientShouldDecideInteraction()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    .line 130
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public clearDisclaimerText()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 193
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 194
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 215
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 216
    return-object p0
.end method

.method public clearDisplay()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public clearDisplayDescription()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearLanguage()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 171
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public clearTtsIsEligibleForBackground()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    .line 149
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 150
    return-object p0
.end method

.method public clearVocalized()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 89
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public clearVocalizedAudio()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    .line 111
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 112
    return-object p0
.end method

.method public getClientShouldDecideInteraction()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    return v0
.end method

.method public getDisclaimerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 285
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 286
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 289
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 290
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    aget-object v0, v3, v1

    .line 296
    .local v0, "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v0, :cond_2

    .line 297
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 303
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 306
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 307
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 310
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 311
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 314
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    .line 315
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 318
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    .line 319
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 322
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 323
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 326
    :cond_9
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    .line 327
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 330
    :cond_a
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    .line 331
    return v2
.end method

.method public getTtsIsEligibleForBackground()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    return v0
.end method

.method public getVocalized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getVocalizedAudio()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    return-object v0
.end method

.method public hasClientShouldDecideInteraction()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerText()Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerUrl()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplay()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayDescription()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsIsEligibleForBackground()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVocalized()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVocalizedAudio()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Text;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 340
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 344
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    :sswitch_0
    return-object p0

    .line 350
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 351
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto :goto_0

    .line 355
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 356
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto :goto_0

    .line 360
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 362
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-nez v5, :cond_2

    move v1, v4

    .line 363
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 365
    .local v2, "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v1, :cond_1

    .line 366
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 369
    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    aput-object v5, v2, v1

    .line 370
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 371
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v1, v5

    goto :goto_1

    .line 374
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v5}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    aput-object v5, v2, v1

    .line 375
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 376
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 380
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AttributionProtos$Attribution;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 381
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    .line 386
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 390
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 391
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 395
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 396
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 400
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 401
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 405
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    .line 406
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 410
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    .line 411
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    goto/16 :goto_0

    .line 340
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
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public setClientShouldDecideInteraction(Z)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    .line 122
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 185
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 186
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 207
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 208
    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public setDisplayDescription(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 163
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public setTtsIsEligibleForBackground(Z)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    .line 141
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public setVocalized(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setVocalizedAudio([B)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    .line 103
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    .line 104
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
    .line 245
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 248
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 249
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    aget-object v0, v2, v1

    .line 254
    .local v0, "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    if-eqz v0, :cond_2

    .line 255
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "element":Lcom/google/majel/proto/AttributionProtos$Attribution;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    .line 260
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 262
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 263
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 265
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 266
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 269
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 272
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 274
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 275
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->clientShouldDecideInteraction_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 277
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 278
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Text;->ttsIsEligibleForBackground_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 280
    :cond_a
    return-void
.end method
