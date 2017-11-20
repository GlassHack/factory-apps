.class public Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
.super Ljava/lang/Object;
.source "GoogleHotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/micro/GoogleHotwordRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleHotwordResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;,
        Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;
    }
.end annotation


# instance fields
.field private bytesConsumed:I

.field private hotwordDetected:Z

.field private hotwordResults:[Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;

.field private speakerResult:Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;

.field private speechDetected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method


# virtual methods
.method public getBytesConsumed()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->bytesConsumed:I

    return v0
.end method

.method public getHotwordResults()[Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->hotwordResults:[Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;

    return-object v0
.end method

.method public getSpeakerResult()Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->speakerResult:Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$SpeakerResult;

    return-object v0
.end method

.method public hotwordDetected()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->hotwordDetected:Z

    return v0
.end method

.method public speechDetected()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;->speechDetected:Z

    return v0
.end method
