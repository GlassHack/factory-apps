.class public interface abstract Lcom/google/android/speech/embedded/GrecoEventLogger;
.super Ljava/lang/Object;
.source "GrecoEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    }
.end annotation


# virtual methods
.method public abstract recognitionCompleted(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)V
    .param p1    # Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract recognitionStarted()V
.end method
