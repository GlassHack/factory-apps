.class public interface abstract Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;
.super Ljava/lang/Object;
.source "InputCorrectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/InputCorrectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputCorrectionCallback"
.end annotation


# virtual methods
.method public abstract onGwsError(Lcom/google/glass/voice/network/SpeechException;)V
.end method

.method public abstract onGwsResult(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
.end method
