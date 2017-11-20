.class public interface abstract Lcom/google/android/speech/audio/AudioStore;
.super Ljava/lang/Object;
.source "AudioStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    }
.end annotation


# virtual methods
.method public abstract getAudio(Ljava/lang/String;)Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasAudio(Ljava/lang/String;)Z
.end method

.method public abstract put(Ljava/lang/String;Lcom/google/android/speech/audio/AudioStore$AudioRecording;)V
.end method
