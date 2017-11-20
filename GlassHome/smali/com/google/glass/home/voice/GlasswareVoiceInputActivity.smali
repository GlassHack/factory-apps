.class public Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;
.super Lcom/google/glass/voice/VoiceInputActionActivity;
.source "GlasswareVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/VoiceInputActionActivity",
        "<",
        "Lcom/google/glass/voice/MirrorInvocationController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createController()Lcom/google/glass/voice/MirrorInvocationController;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/MirrorInvocationController;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected bridge synthetic createController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createController()Lcom/google/glass/voice/MirrorInvocationController;

    move-result-object v0

    return-object v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->getController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/MirrorInvocationController;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
