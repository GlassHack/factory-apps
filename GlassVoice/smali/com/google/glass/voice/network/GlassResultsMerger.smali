.class public Lcom/google/glass/voice/network/GlassResultsMerger;
.super Ljava/lang/Object;
.source "GlassResultsMerger.java"

# interfaces
.implements Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private invalid:Z

.field private final recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

.field private final recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 1
    .param p1, "recognitionDispatcher"    # Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .param p2, "recognitionEngineCallback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    .line 37
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 38
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 39
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    .line 113
    return-void
.end method

.method public onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 5
    .param p1, "error"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v4, 0x0

    .line 85
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onFatalError: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 87
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring onResult for abandoned recognition"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 5
    .param p1, "error"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v4, 0x0

    .line 64
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onNonFatalError: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 66
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring onResult for abandoned recognition"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    instance-of v0, p1, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Treating nonFatalError EndpointerFallbackException as FatalError,but not stopping the engine"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 44
    iget-boolean v2, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Ignoring onResult for abandoned recognition"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/shared/speech/RecognitionResponse;->getEngine()I

    move-result v0

    .line 50
    .local v0, "engine":I
    invoke-virtual {p1}, Lcom/google/android/shared/speech/RecognitionResponse;->getType()I

    move-result v1

    .line 52
    .local v1, "type":I
    sget-object v2, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onResult: type=%s, engine=%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-eq v1, v7, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v8, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v2, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    goto :goto_0
.end method

.method public onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    const/4 v4, 0x0

    .line 99
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResultForUi: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/shared/speech/RecognitionResponse;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->threadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 101
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->invalid:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/google/glass/voice/network/GlassResultsMerger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring onResult for abandoned recognition"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassResultsMerger;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V

    goto :goto_0
.end method
