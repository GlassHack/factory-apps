.class public Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;
.super Ljava/lang/Object;
.source "GoogleHotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotwordResult"
.end annotation


# instance fields
.field private hotwordEndTime:J

.field private hotwordFired:Z

.field private hotwordScore:F

.field private hotwordStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotwordEndTime()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->hotwordEndTime:J

    return-wide v0
.end method

.method public getHotwordScore()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->hotwordScore:F

    return v0
.end method

.method public getHotwordStartTime()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->hotwordStartTime:J

    return-wide v0
.end method

.method public hotwordFired()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult$HotwordResult;->hotwordFired:Z

    return v0
.end method
