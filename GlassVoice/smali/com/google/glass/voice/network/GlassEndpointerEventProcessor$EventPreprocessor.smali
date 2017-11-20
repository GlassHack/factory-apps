.class public abstract Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
.super Ljava/lang/Object;
.source "GlassEndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventPreprocessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public updateProgress(J)Z
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
