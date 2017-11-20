.class public Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;
.super Lcom/google/android/shared/speech/exception/RecognizeException;
.source "EmbeddedRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$GrammarCompilationException;,
        Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EndpointerFallbackException;,
        Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerUnavailableException;,
        Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$NoMatchesFromEmbeddedRecognizerException;,
        Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerTimeoutException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x134d07fb4947f61bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/shared/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 19
    return-void
.end method
