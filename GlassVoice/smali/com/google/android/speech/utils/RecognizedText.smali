.class public Lcom/google/android/speech/utils/RecognizedText;
.super Ljava/lang/Object;
.source "RecognizedText.java"


# static fields
.field private static final HIGH_CONFIDENCE_PARTIAL_THRESHOLD:D = 0.9

.field private static final TAG:Ljava/lang/String; = "RecognizedText"


# instance fields
.field private mAllHypotheses:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mStable:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private extractHypotheses(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "result"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 124
    .local v2, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/speech/alternates/Hypothesis;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 125
    iget-object v3, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/speech/utils/RecognizedText;->extractHypothesis(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/android/speech/alternates/Hypothesis;

    move-result-object v0

    .line 126
    .local v0, "hypothesis":Lcom/google/android/speech/alternates/Hypothesis;
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 128
    const-string v3, "RecognizedText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#extractHypotheses() primary hypothesis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "hypothesis":Lcom/google/android/speech/alternates/Hypothesis;
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method private extractHypothesis(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/android/speech/alternates/Hypothesis;
    .locals 3
    .param p1, "hypothesis"    # Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    iget-object v0, v2, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span:[Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 139
    .local v0, "spans":[Lcom/google/speech/common/Alternates$AlternateSpan;
    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/speech/alternates/Hypothesis;->fromAlternateSpanProtos(Ljava/lang/CharSequence;[Lcom/google/speech/common/Alternates$AlternateSpan;)Lcom/google/android/speech/alternates/Hypothesis;

    move-result-object v2

    return-object v2

    .line 137
    .end local v0    # "spans":[Lcom/google/speech/common/Alternates$AlternateSpan;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 138
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateStableResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 144
    iget-object v2, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v2, :cond_0

    .line 145
    iget-object v1, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 146
    .local v1, "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    iget-object v2, v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 147
    iget-object v2, v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 148
    .local v0, "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v0    # "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public getStableForErrorReporting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletedRecognition()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mAllHypotheses:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "result"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/speech/alternates/Hypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 108
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/speech/utils/RecognizedText;->extractHypotheses(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mAllHypotheses:Lcom/google/common/collect/ImmutableList;

    .line 111
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mAllHypotheses:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mAllHypotheses:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/alternates/Hypothesis;

    invoke-virtual {v0}, Lcom/google/android/speech/alternates/Hypothesis;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mAllHypotheses:Lcom/google/common/collect/ImmutableList;

    goto :goto_0
.end method

.method public updateInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Landroid/util/Pair;
    .locals 11
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateStableResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, "lowConfidence":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 68
    .local v1, "highConfidence":Ljava/lang/StringBuilder;
    iget-object v7, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v7, :cond_4

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "foundUnstable":Z
    iget-object v6, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 71
    .local v6, "partialResult":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    iget-object v7, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v4, v7

    .line 72
    .local v4, "partCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 73
    iget-object v7, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v5, v7, v2

    .line 74
    .local v5, "partialPart":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 76
    const-string v7, "RecognizedText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "partial: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", stability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 79
    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v7

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 81
    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "highConfidence":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    .restart local v1    # "highConfidence":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_2
    if-nez v3, :cond_3

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "lowConfidence":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .restart local v3    # "lowConfidence":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/4 v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "foundUnstable":Z
    .end local v2    # "i":I
    .end local v4    # "partCount":I
    .end local v5    # "partialPart":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .end local v6    # "partialResult":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    :cond_4
    if-nez v1, :cond_5

    iget-object v7, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    :goto_2
    if-nez v3, :cond_6

    const-string v7, ""

    :goto_3
    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method
