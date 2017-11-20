.class public Lcom/google/android/s3/DefaultNetworkEventListener;
.super Ljava/lang/Object;
.source "DefaultNetworkEventListener.java"

# interfaces
.implements Lcom/google/android/s3/NetworkEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFinished()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onConnectionStarted()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public onDataComplete()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onDataReceived()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onDataSent()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 0
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 38
    return-void
.end method
