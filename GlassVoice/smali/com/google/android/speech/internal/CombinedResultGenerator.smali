.class public Lcom/google/android/speech/internal/CombinedResultGenerator;
.super Ljava/lang/Object;
.source "CombinedResultGenerator.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CombinedResultGenerator"


# instance fields
.field private final mRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    .line 41
    return-void
.end method

.method private handleMultipleRecognitionEvents()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v9, "result":Ljava/lang/StringBuilder;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 71
    .local v2, "confidence":F
    iget-object v11, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 72
    .local v5, "evt":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    iget-object v11, v5, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v11, :cond_0

    .line 73
    iget-object v10, v5, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 75
    .local v10, "resultProto":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    iget-object v11, v10, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 76
    iget-object v11, v10, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v6, v11, v14

    .line 77
    .local v6, "h":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    .line 83
    .end local v5    # "evt":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .end local v6    # "h":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v10    # "resultProto":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :cond_1
    iget-object v11, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    iget-object v12, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 84
    .local v8, "lastReceived":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    new-instance v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 86
    .local v4, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :try_start_0
    invoke-static {v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v11

    invoke-static {v4, v11}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "combinedResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 96
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    .line 97
    .local v0, "combined":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    const/4 v11, 0x1

    new-array v11, v11, [Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    new-instance v12, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    invoke-virtual {v12, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v12

    aput-object v12, v11, v14

    iput-object v11, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 100
    iput-object v0, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 103
    .end local v0    # "combined":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .end local v1    # "combinedResult":Ljava/lang/String;
    .end local v4    # "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :cond_2
    :goto_1
    return-object v4

    .line 87
    .restart local v4    # "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :catch_0
    move-exception v3

    .local v3, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    move-object v4, v8

    .line 88
    goto :goto_1
.end method

.method private handleSingleRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 108
    .local v0, "evt":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    iget-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iput-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 113
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCombinedResultEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/google/android/speech/internal/CombinedResultGenerator;->handleSingleRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/google/android/speech/internal/CombinedResultGenerator;->handleMultipleRecognitionEvents()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/speech/internal/CombinedResultGenerator;->mRecognitionEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
