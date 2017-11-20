.class public interface abstract Lcom/google/android/speech/SpeechLibFactory;
.super Ljava/lang/Object;
.source "SpeechLibFactory.java"


# virtual methods
.method public abstract buildEngineSelector(Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
.end method

.method public abstract buildRecognitionEngineStore()Lcom/google/android/speech/RecognitionEngineStore;
.end method

.method public abstract buildResponseProcessor(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/ResponseProcessor;
.end method

.method public abstract buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
.end method

.method public abstract createGpmAudioInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;Landroid/content/Context;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
.end method
