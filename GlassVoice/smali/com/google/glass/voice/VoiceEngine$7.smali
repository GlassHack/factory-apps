.class Lcom/google/glass/voice/VoiceEngine$7;
.super Lcom/google/glass/voice/MicrophoneInputStream;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/ConcurrentAudioInterface;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceEngine;
    .param p2, "audioInterface"    # Lcom/google/glass/voice/ConcurrentAudioInterface;
    .param p3, "sampleRate"    # I

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$7;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Lcom/google/glass/voice/ConcurrentAudioInterface;I)V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$7;->this$0:Lcom/google/glass/voice/VoiceEngine;

    new-instance v1, Lcom/google/glass/voice/InterleavingInputStream;

    new-instance v2, Lcom/google/glass/voice/AudioSavingInputStream;

    .line 460
    invoke-super {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->createInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine$7;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceEngine;->access$500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/voice/AudioSavingInputStream;-><init>(Ljava/io/InputStream;Lcom/google/glass/logging/audio/AudioSaver;)V

    invoke-direct {v1, v2}, Lcom/google/glass/voice/InterleavingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 459
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$1202(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/InterleavingInputStream;)Lcom/google/glass/voice/InterleavingInputStream;

    .line 461
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$7;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v0

    return-object v0
.end method
