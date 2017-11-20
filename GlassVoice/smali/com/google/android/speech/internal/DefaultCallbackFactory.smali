.class public Lcom/google/android/speech/internal/DefaultCallbackFactory;
.super Ljava/lang/Object;
.source "DefaultCallbackFactory.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3CallbackFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/Greco3Callback;
    .locals 1
    .param p1, "wrapped"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p2, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/speech/internal/Greco3CallbackImpl;

    invoke-direct {v0, p2, p1}, Lcom/google/android/speech/internal/Greco3CallbackImpl;-><init>(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    return-object v0
.end method
