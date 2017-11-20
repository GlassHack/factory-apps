.class interface abstract Lcom/google/android/speech/audio/AudioRecorder$RecordingThread;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RecordingThread"
.end annotation


# virtual methods
.method public abstract getBuffer()[B
.end method

.method public abstract getTotalLength()I
.end method

.method public abstract isGood()Z
.end method

.method public abstract isOverflown()Z
.end method

.method public abstract join()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract requestStop()V
.end method

.method public abstract start()V
.end method
