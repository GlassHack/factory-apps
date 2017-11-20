.class public Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;
.super Ljava/lang/Object;
.source "GoogleHotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/micro/GoogleHotwordRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptSpeakerModelResult"
.end annotation


# instance fields
.field private acceptableQuality:Z

.field private modelScore:F

.field private speakerModel:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelScore()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;->modelScore:F

    return v0
.end method

.method public getSpeakerModel()[B
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;->speakerModel:[B

    return-object v0
.end method

.method public isAcceptableQuality()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;->acceptableQuality:Z

    return v0
.end method
