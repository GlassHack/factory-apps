.class public Lcom/google/android/speech/ErrorProcessor;
.super Ljava/lang/Object;
.source "ErrorProcessor.java"

# interfaces
.implements Lcom/google/android/speech/callback/RecognitionEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/ErrorProcessor$Fallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorProcessor"


# instance fields
.field private final mFallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/ErrorProcessor$Fallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryException:Lcom/google/android/shared/speech/exception/RecognizeException;

.field private final mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

.field private final mRecognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final mRecognitionState:Lcom/google/android/speech/RecognitionState;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/RecognitionState;)V
    .locals 1
    .param p1, "recognitionDispatcher"    # Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .param p2, "recognitionEngineCallback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "recognitionState"    # Lcom/google/android/speech/RecognitionState;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 42
    iput-object p2, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 43
    iput-object p3, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionState:Lcom/google/android/speech/RecognitionState;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/ErrorProcessor;->mFallbacks:Ljava/util/List;

    .line 45
    return-void
.end method

.method private cancelRecognition(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 88
    const-string v0, "ErrorProcessor"

    const-string v1, "cancelRecognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 91
    return-void
.end method

.method private handleFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;Z)V
    .locals 9
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;
    .param p2, "stopEngine"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->getEngine()I

    move-result v0

    .line 54
    .local v0, "engine":I
    const-string v4, "ErrorProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFatalError Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", engine="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 56
    invoke-static {p1}, Lcom/google/android/shared/logger/EventLogger;->recordGsaError(Lcom/google/android/shared/exception/GsaError;)V

    .line 57
    if-eqz p2, :cond_0

    .line 59
    iget-object v4, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v4, v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->stopEngine(I)V

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/google/android/speech/ErrorProcessor;->mRecognitionState:Lcom/google/android/speech/RecognitionState;

    invoke-virtual {v4, v0}, Lcom/google/android/speech/RecognitionState;->onError(I)I

    move-result v3

    .line 63
    .local v3, "result":I
    packed-switch v3, :pswitch_data_0

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/speech/ErrorProcessor;->mPrimaryException:Lcom/google/android/shared/speech/exception/RecognizeException;

    if-eqz v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/google/android/speech/ErrorProcessor;->mPrimaryException:Lcom/google/android/shared/speech/exception/RecognizeException;

    invoke-direct {p0, v4}, Lcom/google/android/speech/ErrorProcessor;->cancelRecognition(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/speech/ErrorProcessor;->cancelRecognition(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v4, "ErrorProcessor"

    const-string v5, "Primary engine error from %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lcom/google/android/speech/ErrorProcessor;->mPrimaryException:Lcom/google/android/shared/speech/exception/RecognizeException;

    .line 74
    iget-object v4, p0, Lcom/google/android/speech/ErrorProcessor;->mFallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/ErrorProcessor$Fallback;

    .line 75
    .local v1, "entry":Lcom/google/android/speech/ErrorProcessor$Fallback;
    invoke-interface {v1}, Lcom/google/android/speech/ErrorProcessor$Fallback;->fallback()V

    goto :goto_1

    .line 79
    .end local v1    # "entry":Lcom/google/android/speech/ErrorProcessor$Fallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2
    const-string v4, "ErrorProcessor"

    const-string v5, "Ignoring error from %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/speech/ErrorProcessor;->handleFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;Z)V

    .line 50
    return-void
.end method

.method public onNonFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v2, 0x0

    .line 95
    instance-of v0, p1, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1, v2}, Lcom/google/android/speech/ErrorProcessor;->handleFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;Z)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "ErrorProcessor"

    const-string v1, "onNonFatalError"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 103
    invoke-static {p1}, Lcom/google/android/shared/logger/EventLogger;->recordGsaError(Lcom/google/android/shared/exception/GsaError;)V

    goto :goto_0
.end method

.method public onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 0
    .param p1, "result"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    .line 128
    return-void
.end method

.method public onResultForUi(Lcom/google/android/shared/speech/RecognitionResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/google/android/shared/speech/RecognitionResponse;

    .prologue
    .line 133
    return-void
.end method

.method public registerFallback(Lcom/google/android/speech/ErrorProcessor$Fallback;)V
    .locals 1
    .param p1, "processor"    # Lcom/google/android/speech/ErrorProcessor$Fallback;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/speech/ErrorProcessor;->mFallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
