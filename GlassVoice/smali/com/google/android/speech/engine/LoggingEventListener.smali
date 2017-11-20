.class public final Lcom/google/android/speech/engine/LoggingEventListener;
.super Ljava/lang/Object;
.source "LoggingEventListener.java"

# interfaces
.implements Lcom/google/android/s3/NetworkEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public onConnectionFinished()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 24
    return-void
.end method

.method public onConnectionStarted()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 18
    return-void
.end method

.method public onDataComplete()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 35
    return-void
.end method

.method public onDataReceived()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onDataSent()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    .line 29
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 0
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 45
    return-void
.end method
