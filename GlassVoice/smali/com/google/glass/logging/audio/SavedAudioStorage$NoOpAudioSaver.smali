.class Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"

# interfaces
.implements Lcom/google/glass/logging/audio/AudioSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/audio/SavedAudioStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpAudioSaver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSavingAudio()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public isSavingAudio()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onResult(Lcom/google/glass/voice/HotwordResult;)V
    .locals 0
    .param p1, "hotwordResult"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    .line 80
    return-void
.end method

.method public prepareToSaveAudio(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioStorage"    # Lcom/google/glass/logging/audio/SavedAudioStorage;

    .prologue
    .line 77
    return-void
.end method

.method public saveAudio([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "readByteCount"    # I

    .prologue
    .line 66
    return-void
.end method
