.class Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Lcom/google/android/s3/NetworkRecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/s3/NetworkRecognitionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/google/android/s3/NetworkRecognizerCallback;

.field private volatile mInvalid:Z

.field private final mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p2, "networkEventListener"    # Lcom/google/android/s3/NetworkEventListener;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/s3/NetworkRecognizerCallback;

    .line 267
    iput-object p2, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    .line 268
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    .line 272
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V
    .locals 1
    .param p1, "error"    # Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/s3/NetworkRecognizerCallback;->onError(Ljava/lang/Object;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/s3/NetworkEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 281
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->onError(Lcom/google/android/shared/speech/exception/NetworkRecognizeException;)V

    return-void
.end method

.method public onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 1
    .param p1, "result"    # Lcom/google/speech/s3/S3$S3Response;

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/s3/NetworkRecognizerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/s3/NetworkRecognizerCallback;->onResult(Ljava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    invoke-interface {v0}, Lcom/google/android/s3/NetworkEventListener;->onDataReceived()V

    .line 290
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/s3/NetworkRecognitionRunner$WrapperCallback;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method
