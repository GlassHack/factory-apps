.class Lcom/google/android/speech/RecognitionState$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "RecognitionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/RecognitionState;->maybeStartWaitingForPrimaryEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/RecognitionState;


# direct methods
.method varargs constructor <init>(Lcom/google/android/speech/RecognitionState;Ljava/lang/String;[I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/speech/RecognitionState$1;->this$0:Lcom/google/android/speech/RecognitionState;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState$1;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-object v0, v0, Lcom/google/android/speech/RecognitionState;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/speech/RecognitionState$1$1;

    const-string v2, "Primary engine timeout"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/speech/RecognitionState$1$1;-><init>(Lcom/google/android/speech/RecognitionState$1;Ljava/lang/String;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method
