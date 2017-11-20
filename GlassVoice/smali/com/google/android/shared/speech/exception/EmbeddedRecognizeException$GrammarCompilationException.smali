.class public final Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$GrammarCompilationException;
.super Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;
.source "EmbeddedRecognizeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarCompilationException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "Grammar compilation error."

    invoke-direct {p0, v0}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method
