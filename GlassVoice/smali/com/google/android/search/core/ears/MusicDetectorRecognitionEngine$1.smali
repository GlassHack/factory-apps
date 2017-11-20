.class Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "MusicDetectorRecognitionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

.field final synthetic val$callback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field final synthetic val$input:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field final synthetic val$sessionParams:Lcom/google/android/speech/params/SessionParams;


# direct methods
.method varargs constructor <init>(Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;Ljava/lang/String;[ILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

    iput-object p4, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$input:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    iput-object p5, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$callback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    iput-object p6, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 63
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

    iget-object v3, v3, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$input:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    .local v0, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    .line 75
    .local v2, "sampleRateHz":I
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

    invoke-virtual {v3, v2}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->initMusicDetector(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "sampleRateHz":I
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$callback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v4, Lcom/google/android/shared/speech/exception/MusicRecognizeException;

    const-string v5, "Unable to create input stream."

    invoke-direct {v4, v5, v1}, Lcom/google/android/shared/speech/exception/MusicRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 79
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "sampleRateHz":I
    :cond_0
    iget-object v3, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->this$0:Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;

    iget-object v4, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$callback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    iget-object v5, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;->val$sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->processInputStream(Ljava/io/InputStream;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V

    goto :goto_0
.end method
