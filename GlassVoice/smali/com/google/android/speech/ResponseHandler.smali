.class public Lcom/google/android/speech/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"


# instance fields
.field private final mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private mInvalid:Z

.field private final mProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/shared/speech/RecognitionResponse;",
            ">;",
            "Lcom/google/android/speech/RecognitionResponseProcessor",
            "<+",
            "Lcom/google/android/shared/speech/RecognitionResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 1
    .param p1, "errorProcessor"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 46
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mProcessors:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/google/android/speech/ResponseHandler;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 48
    return-void
.end method

.method private handleResponse(Ljava/lang/Class;Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 4
    .param p2, "result"    # Lcom/google/android/shared/speech/RecognitionResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/shared/speech/RecognitionResponse;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/shared/speech/RecognitionResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/google/android/speech/ResponseHandler;->mProcessors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/RecognitionResponseProcessor;

    .line 83
    .local v0, "processor":Lcom/google/android/speech/RecognitionResponseProcessor;, "Lcom/google/android/speech/RecognitionResponseProcessor<TT;>;"
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/shared/speech/RecognitionResponse;

    invoke-interface {v0, v1}, Lcom/google/android/speech/RecognitionResponseProcessor;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v1, "ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RecognitionResponseProcessor found to handle response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/google/android/speech/ResponseHandler;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/speech/ResponseHandler;->mInvalid:Z

    .line 114
    iget-object v2, p0, Lcom/google/android/speech/ResponseHandler;->mProcessors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/RecognitionResponseProcessor;

    .line 117
    .local v1, "processor":Lcom/google/android/speech/RecognitionResponseProcessor;, "Lcom/google/android/speech/RecognitionResponseProcessor<+Lcom/google/android/shared/speech/RecognitionResponse;>;"
    invoke-interface {v1}, Lcom/google/android/speech/RecognitionResponseProcessor;->invalidate()V

    goto :goto_0

    .line 119
    .end local v1    # "processor":Lcom/google/android/speech/RecognitionResponseProcessor;, "Lcom/google/android/speech/RecognitionResponseProcessor<+Lcom/google/android/shared/speech/RecognitionResponse;>;"
    :cond_0
    return-void
.end method

.method public onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 4
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v0, "ResponseHandler"

    const-string v1, "onFatalError"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 100
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseHandler;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "ResponseHandler"

    const-string v1, "Ignoring onError for abandoned recognition"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 94
    return-void
.end method

.method public onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string v0, "ResponseHandler"

    const-string v1, "onResult"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 70
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseHandler;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ResponseHandler"

    const-string v1, "Ignoring onResult for abandoned recognition"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/speech/ResponseHandler;->handleResponse(Ljava/lang/Class;Lcom/google/android/shared/speech/RecognitionResponse;)V

    goto :goto_0
.end method

.method public onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    .line 127
    return-void
.end method

.method public register(Ljava/lang/Class;Lcom/google/android/speech/RecognitionResponseProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/shared/speech/RecognitionResponse;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/speech/RecognitionResponseProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "processor":Lcom/google/android/speech/RecognitionResponseProcessor;, "Lcom/google/android/speech/RecognitionResponseProcessor<TT;>;"
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mProcessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already have a RecognitionResponseProcessor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseHandler;->mProcessors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
