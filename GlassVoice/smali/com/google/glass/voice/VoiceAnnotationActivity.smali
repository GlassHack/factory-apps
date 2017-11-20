.class public Lcom/google/glass/voice/VoiceAnnotationActivity;
.super Lcom/google/glass/voice/VoiceInputActionActivity;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/VoiceInputActionActivity",
        "<",
        "Lcom/google/glass/voice/VoiceAnnotationController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCallback()Lcom/google/glass/voice/ActionController$Callback;
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->createCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    .line 24
    .local v0, "delegate":Lcom/google/glass/voice/ActionController$Callback;
    new-instance v1, Lcom/google/glass/voice/VoiceAnnotationActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity$1;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Lcom/google/glass/voice/ActionController$Callback;)V

    return-object v1
.end method

.method public createController()Lcom/google/glass/voice/VoiceAnnotationController;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->createController()Lcom/google/glass/voice/VoiceAnnotationController;

    move-result-object v0

    return-object v0
.end method

.method onFinalResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "recognitionResult"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->onFinalResult(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationController;->onResampledAudioData([BII)Z

    move-result v0

    return v0
.end method

.method setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recognitionResult"    # Ljava/lang/String;
    .param p3, "audioBytes"    # [B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationController;->setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V

    .line 45
    return-void
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldProvideAudioData()Z

    move-result v0

    return v0
.end method

.method showAddingDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "textToReturn"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->showAddingDialog(Ljava/lang/String;)V

    .line 59
    return-void
.end method
