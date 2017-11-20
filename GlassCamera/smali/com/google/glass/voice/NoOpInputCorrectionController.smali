.class public Lcom/google/glass/voice/NoOpInputCorrectionController;
.super Ljava/lang/Object;
.source "NoOpInputCorrectionController.java"

# interfaces
.implements Lcom/google/glass/voice/InputCorrectionController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deactivate()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public isReturningFromCorrection()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public maybeShowCorrectionHint(Landroid/widget/TextView;F)V
    .locals 0
    .param p1, "tipView"    # Landroid/widget/TextView;
    .param p2, "resultConfidence"    # F

    .prologue
    .line 39
    return-void
.end method

.method public maybeUnderlineLowConfidenceSegments(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/voice/InputMode;F)Z
    .locals 1
    .param p1, "streamingTextView"    # Lcom/google/glass/voice/StreamingTextView;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "lowConf"    # Ljava/lang/String;
    .param p4, "postfix"    # Ljava/lang/String;
    .param p5, "currentMode"    # Lcom/google/glass/voice/InputMode;
    .param p6, "resultConfidence"    # F

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "lowConf"    # Ljava/lang/String;
    .param p3, "postfix"    # Ljava/lang/String;
    .param p4, "isListening"    # Z
    .param p5, "finalRecognitionResult"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onSearchCorrectionStarted()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onSearchRecognitionDone(Ljava/lang/String;F)V
    .locals 0
    .param p1, "recognitionResult"    # Ljava/lang/String;
    .param p2, "resultConfidence"    # F

    .prologue
    .line 61
    return-void
.end method

.method public onSearchStopped()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public resetAfterReturningFromCorrection(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "streamingTextView"    # Lcom/google/glass/voice/StreamingTextView;
    .param p2, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldFinishWhenStopped()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowSearchResultsNow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "htmlResponse"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
