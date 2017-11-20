.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;


# instance fields
.field public actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

.field public auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

.field public bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

.field public debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

.field public dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

.field public embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field public embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

.field public endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field public help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

.field public id:Ljava/lang/String;

.field public intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

.field public languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

.field public localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

.field public networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

.field public pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field public personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

.field public platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

.field public serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

.field public singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

.field public soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

.field public tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

.field public voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 93
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 98
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 99
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 100
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 101
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 102
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 103
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 104
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 105
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 106
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 107
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 108
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 109
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 110
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 111
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 112
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 113
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 114
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 115
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 116
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 117
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    .line 119
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 209
    .local v2, "size":I
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 211
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v0, v3, v1

    .line 214
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    if-eqz v0, :cond_0

    .line 215
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 221
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    aget-object v0, v3, v1

    .line 223
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    if-eqz v0, :cond_2

    .line 224
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    if-eqz v3, :cond_4

    .line 230
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 233
    :cond_4
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 234
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 235
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    aget-object v0, v3, v1

    .line 236
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v0, :cond_5

    .line 237
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 234
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    if-eqz v3, :cond_7

    .line 243
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 246
    :cond_7
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    if-eqz v3, :cond_8

    .line 247
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 250
    :cond_8
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-eqz v3, :cond_9

    .line 251
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 254
    :cond_9
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    if-eqz v3, :cond_a

    .line 255
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 258
    :cond_a
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v3, :cond_b

    .line 259
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 262
    :cond_b
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    if-eqz v3, :cond_c

    .line 263
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 266
    :cond_c
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    if-eqz v3, :cond_d

    .line 267
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 270
    :cond_d
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    if-eqz v3, :cond_e

    .line 271
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 274
    :cond_e
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    if-eqz v3, :cond_f

    .line 275
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 278
    :cond_f
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-eqz v3, :cond_10

    .line 279
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 282
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    if-eqz v3, :cond_11

    .line 283
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 286
    :cond_11
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    if-eqz v3, :cond_12

    .line 287
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 290
    :cond_12
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    if-eqz v3, :cond_13

    .line 291
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    :cond_13
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-eqz v3, :cond_14

    .line 295
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 298
    :cond_14
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    if-eqz v3, :cond_15

    .line 299
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 302
    :cond_15
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    if-eqz v3, :cond_16

    .line 303
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 306
    :cond_16
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-eqz v3, :cond_17

    .line 307
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 310
    :cond_17
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    .line 311
    return v2
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
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 320
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 324
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    :sswitch_0
    return-object p0

    .line 330
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id:Ljava/lang/String;

    goto :goto_0

    .line 334
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 336
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    if-nez v5, :cond_2

    move v1, v4

    .line 337
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 339
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    if-eqz v1, :cond_1

    .line 340
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 343
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    aput-object v5, v2, v1

    .line 344
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 345
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v1, v5

    goto :goto_1

    .line 348
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_3
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    aput-object v5, v2, v1

    .line 349
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 350
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    goto :goto_0

    .line 354
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :sswitch_3
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 356
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    if-nez v5, :cond_5

    move v1, v4

    .line 357
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 359
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    if-eqz v1, :cond_4

    .line 360
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 363
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    aput-object v5, v2, v1

    .line 364
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 365
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 356
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :cond_5
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    array-length v1, v5

    goto :goto_3

    .line 368
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :cond_6
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    aput-object v5, v2, v1

    .line 369
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 370
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    goto/16 :goto_0

    .line 374
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :sswitch_4
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    if-nez v5, :cond_7

    .line 375
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 377
    :cond_7
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 381
    :sswitch_5
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 383
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-nez v5, :cond_9

    move v1, v4

    .line 384
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 386
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v1, :cond_8

    .line 387
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 390
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    aput-object v5, v2, v1

    .line 391
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 383
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_9
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    array-length v1, v5

    goto :goto_5

    .line 395
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_a
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    aput-object v5, v2, v1

    .line 396
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 397
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto/16 :goto_0

    .line 401
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :sswitch_6
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    if-nez v5, :cond_b

    .line 402
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 404
    :cond_b
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 408
    :sswitch_7
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    if-nez v5, :cond_c

    .line 409
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 411
    :cond_c
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 415
    :sswitch_8
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-nez v5, :cond_d

    .line 416
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 418
    :cond_d
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 422
    :sswitch_9
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    if-nez v5, :cond_e

    .line 423
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 425
    :cond_e
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 429
    :sswitch_a
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v5, :cond_f

    .line 430
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 432
    :cond_f
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 436
    :sswitch_b
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    if-nez v5, :cond_10

    .line 437
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 439
    :cond_10
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 443
    :sswitch_c
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    if-nez v5, :cond_11

    .line 444
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 446
    :cond_11
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 450
    :sswitch_d
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    if-nez v5, :cond_12

    .line 451
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 453
    :cond_12
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 457
    :sswitch_e
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    if-nez v5, :cond_13

    .line 458
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 460
    :cond_13
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 464
    :sswitch_f
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-nez v5, :cond_14

    .line 465
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 467
    :cond_14
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 471
    :sswitch_10
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    if-nez v5, :cond_15

    .line 472
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 474
    :cond_15
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 478
    :sswitch_11
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    if-nez v5, :cond_16

    .line 479
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 481
    :cond_16
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 485
    :sswitch_12
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    if-nez v5, :cond_17

    .line 486
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 488
    :cond_17
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 492
    :sswitch_13
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-nez v5, :cond_18

    .line 493
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 495
    :cond_18
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 499
    :sswitch_14
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    if-nez v5, :cond_19

    .line 500
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 502
    :cond_19
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 506
    :sswitch_15
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    if-nez v5, :cond_1a

    .line 507
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 509
    :cond_1a
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 513
    :sswitch_16
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-nez v5, :cond_1b

    .line 514
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 516
    :cond_1b
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa2 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb2 -> :sswitch_15
        0xba -> :sswitch_16
    .end sparse-switch
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
    .line 125
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v0, v2, v1

    .line 129
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    if-eqz v0, :cond_0

    .line 130
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 135
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    aget-object v0, v2, v1

    .line 137
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    if-eqz v0, :cond_2

    .line 138
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    if-eqz v2, :cond_4

    .line 143
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 146
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 147
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    aget-object v0, v2, v1

    .line 148
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v0, :cond_5

    .line 149
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 146
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    if-eqz v2, :cond_7

    .line 154
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    if-eqz v2, :cond_8

    .line 157
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 159
    :cond_8
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-eqz v2, :cond_9

    .line 160
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 162
    :cond_9
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    if-eqz v2, :cond_a

    .line 163
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 165
    :cond_a
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v2, :cond_b

    .line 166
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 168
    :cond_b
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    if-eqz v2, :cond_c

    .line 169
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 171
    :cond_c
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    if-eqz v2, :cond_d

    .line 172
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 174
    :cond_d
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    if-eqz v2, :cond_e

    .line 175
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 177
    :cond_e
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    if-eqz v2, :cond_f

    .line 178
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_f
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    if-eqz v2, :cond_10

    .line 181
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 183
    :cond_10
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    if-eqz v2, :cond_11

    .line 184
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 186
    :cond_11
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    if-eqz v2, :cond_12

    .line 187
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 189
    :cond_12
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    if-eqz v2, :cond_13

    .line 190
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 192
    :cond_13
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-eqz v2, :cond_14

    .line 193
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 195
    :cond_14
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    if-eqz v2, :cond_15

    .line 196
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 198
    :cond_15
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    if-eqz v2, :cond_16

    .line 199
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 201
    :cond_16
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-eqz v2, :cond_17

    .line 202
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 204
    :cond_17
    return-void
.end method
