.class public abstract Lcom/google/android/shared/speech/RecognitionResponse;
.super Ljava/lang/Object;
.source "RecognitionResponse.java"


# static fields
.field public static final ENGINE_EMBEDDED:I = 0x1

.field public static final ENGINE_HOTWORD_DETECTOR:I = 0x4

.field public static final ENGINE_MUSIC_DETECTOR:I = 0x3

.field public static final ENGINE_NETWORK:I = 0x2

.field public static final ENGINE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecognitionResponse"

.field public static final TYPE_ENDPOINTING:I = 0x2

.field public static final TYPE_HOTWORD_DETECTION:I = 0x4

.field public static final TYPE_MUSIC_DETECTION:I = 0x3

.field public static final TYPE_PROGRESS:I = 0x5

.field public static final TYPE_RECOGNITION:I = 0x1


# instance fields
.field private final mEngine:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "engine"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/shared/speech/RecognitionResponse;->mEngine:I

    .line 58
    return-void
.end method

.method public static fromS3Response(ILcom/google/speech/s3/S3$S3Response;)Lcom/google/android/shared/speech/RecognitionResponse;
    .locals 5
    .param p0, "engine"    # I
    .param p1, "s3Response"    # Lcom/google/speech/s3/S3$S3Response;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    iget-object v1, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/google/android/shared/speech/S3RecognitionResponse;

    invoke-direct {v1, p0, p1}, Lcom/google/android/shared/speech/S3RecognitionResponse;-><init>(ILcom/google/speech/s3/S3$S3Response;)V

    .line 48
    :goto_0
    return-object v1

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 39
    .local v0, "recognizerEvent":Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    iget-object v1, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-eqz v4, :cond_3

    :goto_2
    if-ne v1, v2, :cond_1

    .line 41
    const-string v1, "RecognitionResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response. Expecting exactly one recognition or endpointer event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/shared/util/ProtoUtils;->toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    iget-object v1, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v1, v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-eqz v1, :cond_4

    .line 45
    new-instance v1, Lcom/google/android/shared/speech/EndpointerResponse;

    iget-object v2, p1, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v2, v2, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v1, p0, v2}, Lcom/google/android/shared/speech/EndpointerResponse;-><init>(ILcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 39
    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 48
    :cond_4
    new-instance v1, Lcom/google/android/shared/speech/S3RecognitionResponse;

    invoke-direct {v1, p0, p1}, Lcom/google/android/shared/speech/S3RecognitionResponse;-><init>(ILcom/google/speech/s3/S3$S3Response;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "responseType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 107
    check-cast p0, Lcom/google/android/shared/speech/S3RecognitionResponse;

    .end local p0    # "this":Lcom/google/android/shared/speech/RecognitionResponse;
    invoke-virtual {p0}, Lcom/google/android/shared/speech/S3RecognitionResponse;->getS3Response()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    .restart local p0    # "this":Lcom/google/android/shared/speech/RecognitionResponse;
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 109
    check-cast p0, Lcom/google/android/shared/speech/EndpointerResponse;

    .end local p0    # "this":Lcom/google/android/shared/speech/RecognitionResponse;
    invoke-virtual {p0}, Lcom/google/android/shared/speech/EndpointerResponse;->getEndpointerEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v0

    goto :goto_0

    .line 113
    .restart local p0    # "this":Lcom/google/android/shared/speech/RecognitionResponse;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEngine()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/shared/speech/RecognitionResponse;->mEngine:I

    return v0
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/shared/speech/RecognitionResponse;->mEngine:I

    packed-switch v0, :pswitch_data_0

    .line 98
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "EMBEDDED"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v0, "NETWORK"

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "MUSIC_DETECTOR"

    goto :goto_0

    .line 96
    :pswitch_3
    const-string v0, "HOTWORD"

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract getPayloadString()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "RECOGNITION"

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "ENDPOINTING"

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "SOUND_SEARCH"

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "HOTWORD"

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecognitionResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/shared/speech/RecognitionResponse;->getPayloadString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
