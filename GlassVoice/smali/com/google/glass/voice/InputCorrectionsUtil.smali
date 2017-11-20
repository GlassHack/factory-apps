.class public final Lcom/google/glass/voice/InputCorrectionsUtil;
.super Ljava/lang/Object;
.source "InputCorrectionsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLowestConfidenceSpan(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p0, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .param p1, "combinedResult"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/StringBuilder;
    .param p3, "lowConf"    # Ljava/lang/StringBuilder;
    .param p4, "postfix"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x0

    .line 35
    iget-object v7, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v7, v7, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v7, v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v7, v7, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v7, :cond_3

    .line 38
    iget-object v7, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v7, v7, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v7, v7, v10

    iget-object v0, v7, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 40
    .local v0, "alternates":Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    const/4 v5, 0x0

    .line 41
    .local v5, "lowestConfidence":Lcom/google/speech/common/Alternates$AlternateSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 42
    iget-object v7, v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    aget-object v1, v7, v2

    .line 43
    .local v1, "currentSpan":Lcom/google/speech/common/Alternates$AlternateSpan;
    if-eqz v5, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/google/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v7

    invoke-virtual {v5}, Lcom/google/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 45
    :cond_0
    iget-object v7, v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    aget-object v5, v7, v2

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "currentSpan":Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_2
    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getUnit()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 50
    iget v4, v5, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    .line 51
    .local v4, "lowConfStart":I
    iget v7, v5, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    add-int v3, v4, v7

    .line 52
    .local v3, "lowConfEnd":I
    sget-object v7, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 53
    .local v6, "resultBytes":[B
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    new-instance v8, Ljava/lang/String;

    .line 54
    invoke-static {v6, v10, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 53
    invoke-virtual {p2, v10, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    new-instance v8, Ljava/lang/String;

    .line 56
    invoke-static {v6, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 55
    invoke-virtual {p3, v10, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    new-instance v8, Ljava/lang/String;

    array-length v9, v6

    .line 58
    invoke-static {v6, v3, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 57
    invoke-virtual {p4, v10, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 61
    .end local v0    # "alternates":Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .end local v2    # "i":I
    .end local v3    # "lowConfEnd":I
    .end local v4    # "lowConfStart":I
    .end local v5    # "lowestConfidence":Lcom/google/speech/common/Alternates$AlternateSpan;
    .end local v6    # "resultBytes":[B
    :cond_3
    return-void
.end method
