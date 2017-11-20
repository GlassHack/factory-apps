.class public Lcom/google/glass/util/TtsHelper$NoOpUtteranceProgressListener;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOpUtteranceProgressListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method
