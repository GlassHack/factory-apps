.class public Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedParams"
.end annotation


# instance fields
.field private final mBytesPerSample:I

.field private final mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

.field private final mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field private final mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

.field private final mSamplingRate:I

.field private final mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;II)V
    .locals 0
    .param p1, "callbackFactory"    # Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    .param p2, "greco3EngineManager"    # Lcom/google/android/speech/embedded/Greco3EngineManager;
    .param p3, "modeSelector"    # Lcom/google/android/speech/embedded/Greco3ModeSelector;
    .param p4, "speechLevelSource"    # Lcom/google/android/shared/util/SpeechLevelSource;
    .param p5, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p6, "bytesPerSample"    # I
    .param p7, "samplingRate"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    .line 66
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 67
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    .line 68
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    .line 69
    iput-object p5, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 70
    iput p6, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mBytesPerSample:I

    .line 71
    iput p7, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSamplingRate:I

    .line 72
    return-void
.end method


# virtual methods
.method public getBytesPerSample()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mBytesPerSample:I

    return v0
.end method

.method public getCallbackFactory()Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    return-object v0
.end method

.method public getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    return-object v0
.end method

.method public getModeSelector()Lcom/google/android/speech/embedded/Greco3ModeSelector;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSamplingRate:I

    return v0
.end method

.method public getSpeechLevelSource()Lcom/google/android/shared/util/SpeechLevelSource;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
