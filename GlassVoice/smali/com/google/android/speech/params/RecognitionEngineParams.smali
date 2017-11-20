.class public Lcom/google/android/speech/params/RecognitionEngineParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    }
.end annotation


# instance fields
.field private final mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

.field private final mMicroHotwordParams:Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;

.field private final mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

.field private final mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;)V
    .locals 0
    .param p1, "embeddedParams"    # Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .param p2, "networkParams"    # Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .param p3, "musicDetectorParams"    # Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    .param p4, "microHotwordParams"    # Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    .line 30
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    .line 31
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    .line 32
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMicroHotwordParams:Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;

    .line 33
    return-void
.end method


# virtual methods
.method public getEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    return-object v0
.end method

.method public getMicroHotwordParams()Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMicroHotwordParams:Lcom/google/android/speech/params/RecognitionEngineParams$MicroHotwordParams;

    return-object v0
.end method

.method public getMusicDetectorParams()Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    return-object v0
.end method

.method public getNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    return-object v0
.end method
