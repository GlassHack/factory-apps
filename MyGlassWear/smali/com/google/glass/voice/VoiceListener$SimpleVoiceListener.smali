.class public abstract Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.super Ljava/lang/Object;
.source "VoiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleVoiceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResampledAudioData([BII)Z
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "expected"    # Z

    .prologue
    .line 68
    return-void
.end method
