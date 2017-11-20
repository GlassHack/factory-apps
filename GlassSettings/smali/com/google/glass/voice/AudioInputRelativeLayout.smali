.class public abstract Lcom/google/glass/voice/AudioInputRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AudioInputRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/AudioInputRelativeLayout$State;
    }
.end annotation


# instance fields
.field private state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    return-object v0
.end method

.method protected abstract onStateChanged()V
.end method

.method public abstract setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->onStateChanged()V

    .line 56
    return-void
.end method

.method public showNotListening()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->onStateChanged()V

    .line 62
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECOGNIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->onStateChanged()V

    .line 68
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECORDING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->onStateChanged()V

    .line 50
    return-void
.end method

.method public showUsingKeyboard()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->USING_KEYBOARD:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->state:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->onStateChanged()V

    .line 74
    return-void
.end method
