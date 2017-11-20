.class public interface abstract Lcom/google/glass/voice/InputCorrectionController;
.super Ljava/lang/Object;
.source "InputCorrectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;
    }
.end annotation


# virtual methods
.method public abstract deactivate()V
.end method

.method public abstract isReturningFromCorrection()Z
.end method

.method public abstract maybeShowCorrectionHint(Landroid/widget/TextView;F)V
.end method

.method public abstract maybeUnderlineLowConfidenceSegments(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/voice/InputMode;F)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract onConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onSearchCorrectionStarted()V
.end method

.method public abstract onSearchRecognitionDone(Ljava/lang/String;F)V
.end method

.method public abstract onSearchStopped()V
.end method

.method public abstract resetAfterReturningFromCorrection(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
.end method

.method public abstract shouldFinishWhenStopped()Z
.end method

.method public abstract shouldShowSearchResultsNow(Ljava/lang/String;)Z
.end method
