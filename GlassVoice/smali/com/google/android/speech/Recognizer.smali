.class public interface abstract Lcom/google/android/speech/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation runtime Lcom/google/android/shared/util/SingleThreadedOnly;
    nameOfThread = "main"
.end annotation


# static fields
.field public static final LOCALE_EN_US_BCP47:Ljava/lang/String; = "en-US"


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/android/speech/audio/AudioStore;)V
    .param p4    # Lcom/google/android/speech/audio/AudioStore;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract stopListening(Ljava/lang/String;)V
.end method
