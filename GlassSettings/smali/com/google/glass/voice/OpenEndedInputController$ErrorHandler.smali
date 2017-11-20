.class public interface abstract Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorHandler"
.end annotation


# virtual methods
.method public abstract getErrorUi(Lcom/google/glass/voice/network/SpeechException;)Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
.end method

.method public abstract shouldPreemptVoiceMenu()Z
.end method

.method public abstract shouldShowError()Z
.end method

.method public abstract shouldShowNoSpeechDetected()Z
.end method
