.class public Lcom/google/android/shared/speech/EndpointerResponse;
.super Lcom/google/android/shared/speech/RecognitionResponse;
.source "EndpointerResponse.java"


# instance fields
.field private final mEndpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;


# direct methods
.method public constructor <init>(ILcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 0
    .param p1, "engine"    # I
    .param p2, "endpointerEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/shared/speech/RecognitionResponse;-><init>(I)V

    .line 15
    iput-object p2, p0, Lcom/google/android/shared/speech/EndpointerResponse;->mEndpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 16
    return-void
.end method


# virtual methods
.method public getEndpointerEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/shared/speech/EndpointerResponse;->mEndpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    return-object v0
.end method

.method protected getPayloadString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/shared/speech/EndpointerResponse;->mEndpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-static {v0}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    return v0
.end method
