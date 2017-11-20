.class public Lcom/google/android/speech/audio/AudioStore$AudioRecording;
.super Ljava/lang/Object;
.source "AudioStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRecording"
.end annotation


# instance fields
.field private final mAudio:[B

.field private final mSampleRate:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "sampleRate"    # I
    .param p2, "audio"    # [B

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 25
    iput p1, p0, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->mSampleRate:I

    .line 26
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->mAudio:[B

    .line 27
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudio()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->mAudio:[B

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->mSampleRate:I

    return v0
.end method
