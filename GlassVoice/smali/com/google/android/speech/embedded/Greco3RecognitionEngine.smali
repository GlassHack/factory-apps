.class public Lcom/google/android/speech/embedded/Greco3RecognitionEngine;
.super Ljava/lang/Object;
.source "Greco3RecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "Greco3RecognitionEngine"


# instance fields
.field private final mBytesPerSample:I

.field private final mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

.field private mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

.field private final mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mInput:Ljava/io/InputStream;

.field private final mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mSamplingRate:I

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3EngineManager;IILcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;)V
    .locals 0
    .param p1, "engineManager"    # Lcom/google/android/speech/embedded/Greco3EngineManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "samplingRate"    # I
    .param p3, "bytesPerSample"    # I
    .param p4, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "callbackFactory"    # Lcom/google/android/speech/embedded/Greco3CallbackFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6, "modeSelector"    # Lcom/google/android/speech/embedded/Greco3ModeSelector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7, "grecoEventLoggerFactory"    # Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 64
    iput p2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSamplingRate:I

    .line 65
    iput p3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mBytesPerSample:I

    .line 66
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 67
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    .line 68
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    .line 69
    iput-object p7, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;

    .line 70
    return-void
.end method

.method private cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/android/speech/embedded/Greco3Callback;
    .param p2, "error"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v0, "Greco3RecognitionEngine"

    const-string v1, "cleanupAndDispatchError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 145
    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 146
    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 147
    invoke-interface {p1, p2}, Lcom/google/android/speech/embedded/Greco3Callback;->handleError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 148
    return-void
.end method

.method private getEmbeddedRecognizerParams(Lcom/google/android/speech/params/SessionParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 6
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->isPartialResultsEnabled()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->isAlternatesEnabled()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->isProfanityFilterEnabled()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;-><init>(Lcom/google/android/speech/SpeechSettings;IZZZ)V

    .line 138
    .local v0, "rspb":Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;
    invoke-virtual {v0}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "Greco3RecognitionEngine"

    const-string v1, "close: manager.release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3EngineManager;->release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V

    .line 122
    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    .line 127
    return-void
.end method

.method createRecognizer(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;)Lcom/google/android/speech/embedded/Greco3Recognizer;
    .locals 3
    .param p1, "resources"    # Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    iget v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSamplingRate:I

    iget v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mBytesPerSample:I

    invoke-static {p1, v1, v2}, Lcom/google/android/speech/embedded/Greco3Recognizer;->create(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;II)Lcom/google/android/speech/embedded/Greco3Recognizer;

    move-result-object v0

    .line 220
    .local v0, "g3Recognizer":Lcom/google/android/speech/embedded/Greco3Recognizer;
    if-nez v0, :cond_0

    .line 221
    const v1, 0x8a5c0e

    invoke-static {v1}, Lcom/google/android/voicesearch/logger/BugLogger;->record(I)V

    .line 224
    :cond_0
    return-object v0
.end method

.method createRecognizerFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 9
    .param p1, "bcp47Locale"    # Ljava/lang/String;
    .param p2, "requested"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p3, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 153
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5}, Lcom/google/android/speech/embedded/Greco3EngineManager;->maybeInitialize()V

    .line 155
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    invoke-interface {v5, p2, p3}, Lcom/google/android/speech/embedded/Greco3ModeSelector;->getMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v1

    .line 156
    .local v1, "primary":Lcom/google/android/speech/embedded/Greco3Mode;
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    invoke-interface {v5, p2, p3}, Lcom/google/android/speech/embedded/Greco3ModeSelector;->getFallbackMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v0

    .line 157
    .local v0, "fallback":Lcom/google/android/speech/embedded/Greco3Mode;
    const/4 v3, 0x0

    .line 159
    .local v3, "selected":Lcom/google/android/speech/embedded/Greco3Mode;
    const-string v5, "Greco3RecognitionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected modes: primary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fallback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 160
    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v4

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5, p1, v1, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v2

    .line 170
    .local v2, "resources":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    if-nez v2, :cond_2

    sget-object v5, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v1, v5, :cond_2

    const-string v5, "en-US"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    const-string v6, "en-US"

    invoke-virtual {v5, v6, v1, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v2

    .line 177
    :cond_2
    if-nez v2, :cond_4

    .line 178
    const-string v5, "Greco3RecognitionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No resources for primary, l="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 180
    if-eqz v0, :cond_0

    .line 187
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5, p1, v0, v4}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v2

    .line 190
    if-nez v2, :cond_3

    .line 191
    const-string v5, "Greco3RecognitionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No resources for fallback, l="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_3
    move-object v3, v0

    .line 200
    :goto_1
    const-string v5, "Greco3RecognitionEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create_rec: m="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",l="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->createRecognizer(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;)Lcom/google/android/speech/embedded/Greco3Recognizer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 203
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-nez v5, :cond_5

    .line 207
    iput-object v4, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    goto/16 :goto_0

    .line 197
    :cond_4
    move-object v3, v1

    goto :goto_1

    .line 211
    :cond_5
    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-object v4, v3

    .line 212
    goto/16 :goto_0
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
    .locals 10
    .param p1, "inputFactory"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 80
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 82
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 84
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v8

    .line 87
    .local v8, "requestedMode":Lcom/google/android/speech/embedded/Greco3Mode;
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getSpokenBcp47Locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getGreco3Grammar()Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v1

    invoke-virtual {p0, v0, v8, v1}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->createRecognizerFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v9

    .line 90
    .local v9, "selected":Lcom/google/android/speech/embedded/Greco3Mode;
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    invoke-interface {v0, p2, v9}, Lcom/google/android/speech/embedded/Greco3CallbackFactory;->create(Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/Greco3Callback;

    move-result-object v3

    .line 91
    .local v3, "g3Callback":Lcom/google/android/speech/embedded/Greco3Callback;
    if-nez v9, :cond_1

    .line 92
    new-instance v0, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerUnavailableException;

    invoke-direct {v0}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerUnavailableException;-><init>()V

    invoke-direct {p0, v3, v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v0, "Greco3RecognitionEngine"

    const-string v1, "startRecognition: manager.startRecognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    invoke-direct {p0, p3}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->getEmbeddedRecognizerParams(Lcom/google/android/speech/params/SessionParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;

    invoke-interface {v5, v9}, Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;->getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    iget-object v6, v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3EngineManager;->startRecognition(Lcom/google/android/speech/embedded/Greco3Recognizer;Ljava/io/InputStream;Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    .line 111
    invoke-virtual {v9}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;

    invoke-direct {v0}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;-><init>()V

    invoke-interface {p2, v0}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v7

    .line 100
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v0, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;

    const-string v1, "Unable to create stream"

    invoke-direct {v0, v1, v7}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3, v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method
