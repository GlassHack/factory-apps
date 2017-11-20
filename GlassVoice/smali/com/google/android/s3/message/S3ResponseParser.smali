.class public Lcom/google/android/s3/message/S3ResponseParser;
.super Ljava/lang/Object;
.source "S3ResponseParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecognizerEvent(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .param p0, "response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v0, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0
.end method

.method public static hasRecognitionEvent(Lcom/google/speech/s3/S3$S3Response;)Z
    .locals 1
    .param p0, "response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    iget-object v0, v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toShortString(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Ljava/lang/String;
    .locals 9
    .param p0, "majel"    # Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .prologue
    .line 111
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v7, "Majel["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v7, "peanuts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v7, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    iget-object v1, p0, Lcom/google/majel/proto/MajelProtos$MajelResponse;->peanut:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    .local v1, "arr$":[Lcom/google/majel/proto/PeanutProtos$Peanut;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_e

    aget-object v5, v1, v2

    .line 116
    .local v5, "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/4 v3, 0x1

    .line 118
    .local v3, "isFirst":Z
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 119
    if-nez v3, :cond_6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :goto_1
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    const/4 v8, 0x0

    aget-object v0, v7, v8

    .line 122
    .local v0, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    iget-object v7, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->phoneActionExtension:Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-eqz v7, :cond_7

    .line 123
    const-string v7, "phoneAction"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .end local v0    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_0
    :goto_2
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    if-eqz v7, :cond_1

    .line 131
    if-nez v3, :cond_9

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_3
    const-string v7, "text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-virtual {v7}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_1
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v7, v7

    if-lez v7, :cond_2

    .line 137
    if-nez v3, :cond_a

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_4
    const-string/jumbo v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    :cond_2
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v7, v7

    if-lez v7, :cond_3

    .line 143
    if-nez v3, :cond_b

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :goto_5
    const-string v7, "image="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_3
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v7, v7

    if-lez v7, :cond_4

    .line 149
    if-nez v3, :cond_c

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :goto_6
    const-string v7, "place="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    :cond_4
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v7, v7

    if-lez v7, :cond_5

    .line 155
    if-nez v3, :cond_d

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :goto_7
    const-string/jumbo v7, "video="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget-object v7, v5, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    :cond_5
    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 120
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 124
    .restart local v0    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_7
    iget-object v7, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->sMSActionExtension:Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    if-eqz v7, :cond_8

    .line 125
    const-string v7, "smsAction"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 127
    :cond_8
    const-string v7, "someAction"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 132
    .end local v0    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 138
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 144
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 150
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 156
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 162
    .end local v3    # "isFirst":Z
    .end local v5    # "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_e
    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static toShortString(Lcom/google/speech/s3/S3$S3Response;)Ljava/lang/String;
    .locals 14
    .param p0, "response"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 30
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v8, "sb":Ljava/lang/StringBuffer;
    const-string v12, "S3Response["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",errorCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",errorDescription="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_0
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    iget-object v12, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    if-eqz v12, :cond_1

    .line 40
    iget-object v11, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension:Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;

    .line 41
    .local v11, "ttsEvent":Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    const-string v12, "TtsServiceEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v12, "audio size:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;->getAudio()[B

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 43
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .end local v11    # "ttsEvent":Lcom/google/speech/speech/s3/Synthesizer$TtsServiceEvent;
    :cond_1
    iget-object v12, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-eqz v12, :cond_7

    .line 46
    iget-object v7, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 47
    .local v7, "recognizerEvent":Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    const-string v12, "RecognitionEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    iget-object v12, v7, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v12, :cond_6

    .line 49
    iget-object v6, v7, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 50
    .local v6, "recognitionEvent":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    const-wide/16 v9, 0x0

    .local v9, "start":J
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "end":J
    const-string v12, "RecognitionEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v12, "status="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getStatus()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v12, "event_type="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v12, :cond_3

    .line 59
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    iget-object v12, v12, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v5, v12

    .line 60
    .local v5, "partCount":I
    const-string v12, "partialResult[#"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 64
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    iget-object v12, v12, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v9

    .line 69
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getEndTimeUsec()J

    move-result-wide v0

    .line 71
    .end local v2    # "i":I
    .end local v5    # "partCount":I
    :cond_3
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v12, :cond_5

    .line 72
    const-string v12, "result[#"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v12, v12, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v12, v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v12, v12, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v12, v12

    if-lez v12, :cond_4

    .line 76
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v12, v12, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_4
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v9

    .line 81
    iget-object v12, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v0

    .line 84
    :cond_5
    const-string/jumbo v12, "{"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "}{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .end local v0    # "end":J
    .end local v6    # "recognitionEvent":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .end local v9    # "start":J
    :cond_6
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .end local v7    # "recognizerEvent":Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    :cond_7
    iget-object v12, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    if-eqz v12, :cond_9

    .line 91
    iget-object v4, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 92
    .local v4, "majelEvent":Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    const-string v12, "MajelEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v12, v4, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    if-eqz v12, :cond_a

    .line 94
    iget-object v3, v4, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;

    .line 95
    .local v3, "majel":Lcom/google/majel/proto/MajelProtos$MajelResponse;
    invoke-static {v3}, Lcom/google/android/s3/message/S3ResponseParser;->toShortString(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .end local v3    # "majel":Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :cond_8
    :goto_1
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .end local v4    # "majelEvent":Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    :cond_9
    const-string v12, "]\n"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 96
    .restart local v4    # "majelEvent":Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    :cond_a
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 97
    const-string v12, "CompressedMajel["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v12, "bytes="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
