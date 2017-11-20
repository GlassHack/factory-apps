.class Lcom/google/glass/voice/embedded/MultiRecognizerController$2;
.super Ljava/lang/Object;
.source "MultiRecognizerController.java"

# interfaces
.implements Lcom/google/speech/recognizer/RecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/MultiRecognizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/MultiRecognizerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .prologue
    .line 424
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 428
    invoke-static {}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Endpointer Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method public declared-synchronized handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$200(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    invoke-static {}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "A hotword has already been handled. Ignoring handleRecognitionResult."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 438
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$300(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/glass/util/BytePipe;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/util/BytePipe;->size()I

    move-result v5

    .line 439
    .local v5, "unprocessedBytes":I
    invoke-static {p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$400(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v4

    .line 440
    .local v4, "result":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "hotword":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v6, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 446
    .local v0, "command":Lcom/google/glass/voice/VoiceCommand;
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v6, v4, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$500(Lcom/google/glass/voice/embedded/MultiRecognizerController;Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 447
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v1

    .line 448
    .local v1, "confidence":F
    if-eqz v0, :cond_0

    .line 449
    iget-object v6, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    iget-object v7, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$600(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    move-result-object v7

    new-instance v8, Lcom/google/glass/voice/HotwordResult;

    invoke-direct {v8, v0, v1, v3}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V

    invoke-interface {v7, v8, v5}, Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;->onHotword(Lcom/google/glass/voice/HotwordResult;I)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$202(Lcom/google/glass/voice/embedded/MultiRecognizerController;Z)Z

    .line 451
    invoke-static {}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Audio consumed thus far (ms): %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v10}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$700(Lcom/google/glass/voice/embedded/MultiRecognizerController;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v0    # "command":Lcom/google/glass/voice/VoiceCommand;
    .end local v1    # "confidence":F
    .end local v2    # "hotword":Ljava/lang/String;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    .end local v4    # "result":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .end local v5    # "unprocessedBytes":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
