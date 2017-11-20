.class public Lcom/google/glass/home/voice/RecognitionAdapter;
.super Ljava/lang/Object;
.source "RecognitionAdapter.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 18
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 28
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 33
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 38
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 48
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "rmsdB"    # F

    .prologue
    .line 53
    return-void
.end method
