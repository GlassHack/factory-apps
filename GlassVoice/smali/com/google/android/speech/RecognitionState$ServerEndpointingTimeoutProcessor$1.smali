.class Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "RecognitionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;

.field final synthetic val$timeout:Lcom/google/android/shared/speech/exception/RecognizeException;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;Ljava/lang/String;[ILcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;->this$1:Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;

    iput-object p4, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;->val$timeout:Lcom/google/android/shared/speech/exception/RecognizeException;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;->this$1:Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;

    iget-object v0, v0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    invoke-static {v0}, Lcom/google/android/speech/RecognitionState;->access$000(Lcom/google/android/speech/RecognitionState;)Lcom/google/android/speech/callback/RecognitionEngineCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;->val$timeout:Lcom/google/android/shared/speech/exception/RecognizeException;

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 382
    return-void
.end method
