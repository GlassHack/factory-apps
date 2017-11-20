.class Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;
.super Ljava/lang/Object;
.source "Greco3Recognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/RecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecognizerCallbackWrapper"
.end annotation


# instance fields
.field private mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;Lcom/google/android/speech/embedded/Greco3Callback;)Lcom/google/android/speech/embedded/Greco3Callback;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;
    .param p1, "x1"    # Lcom/google/android/speech/embedded/Greco3Callback;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    return-object p1
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    .line 173
    :cond_0
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    .line 166
    :cond_0
    return-void
.end method

.method public handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 159
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    .line 152
    return-void
.end method

.method public notifyError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 185
    :cond_0
    return-void
.end method

.method public updateProgress(J)V
    .locals 1
    .param p1, "progressMs"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/embedded/Greco3Callback;->handleProgressUpdate(J)V

    .line 179
    :cond_0
    return-void
.end method
