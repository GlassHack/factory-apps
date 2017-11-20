.class Lcom/google/glass/voice/embedded/MultiRecognizerController$1;
.super Ljava/lang/Thread;
.source "MultiRecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/MultiRecognizerController;->startRecognition(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

.field final synthetic val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/MultiRecognizerController;Ljava/lang/String;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/embedded/MultiRecognizerController;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    iput-object p3, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;->val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 406
    iget-object v1, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;->this$0:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-static {v1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$000(Lcom/google/glass/voice/embedded/MultiRecognizerController;)Lcom/google/speech/recognizer/MultiRecognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/embedded/MultiRecognizerController$1;->val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/MultiRecognizer;->run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    .line 407
    .local v0, "result":Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GlassMultiRecognizer exited with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "run() finished"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    return-void
.end method
