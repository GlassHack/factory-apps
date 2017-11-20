.class public Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;
.super Ljava/lang/Object;
.source "GoogleHotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerResult"
.end annotation


# instance fields
.field private speakerDetected:I

.field private speakerScores:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeakerDetected()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;->speakerDetected:I

    return v0
.end method

.method public getSpeakerScores()[F
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;->speakerScores:[F

    return-object v0
.end method
