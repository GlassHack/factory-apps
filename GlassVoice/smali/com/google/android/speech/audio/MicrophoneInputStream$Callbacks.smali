.class public Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
.super Ljava/lang/Object;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitingRouting(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public cancelPendingAwaitRouting(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public onEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 63
    return-void
.end method

.method public playSpeakNowSound()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
