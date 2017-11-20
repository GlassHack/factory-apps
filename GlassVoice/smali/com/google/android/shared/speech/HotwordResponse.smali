.class public Lcom/google/android/shared/speech/HotwordResponse;
.super Lcom/google/android/shared/speech/RecognitionResponse;
.source "HotwordResponse.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "engine"    # I

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/RecognitionResponse;-><init>(I)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getPayloadString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Hotword detected"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x4

    return v0
.end method
