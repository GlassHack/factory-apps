.class Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;
.super Ljava/lang/Object;
.source "RecognitionState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/RecognitionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerEndpointingTimeoutProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/RecognitionState;


# direct methods
.method constructor <init>(Lcom/google/android/speech/RecognitionState;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 364
    iget-object v5, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-boolean v5, v5, Lcom/google/android/speech/RecognitionState;->mInvalid:Z

    if-eqz v5, :cond_0

    .line 366
    const-string v5, "RecognitionState"

    const-string v6, "Ignoring server activity timeout for abandoned recognition."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v5, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-object v5, v5, Lcom/google/android/speech/RecognitionState;->mClock:Lcom/google/android/shared/util/Clock;

    invoke-interface {v5}, Lcom/google/android/shared/util/Clock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-wide v7, v7, Lcom/google/android/speech/RecognitionState;->mLastNetworkActivityMs:J

    sub-long v0, v5, v7

    .line 371
    .local v0, "elapsedMs":J
    iget-object v5, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-wide v5, v5, Lcom/google/android/speech/RecognitionState;->mServerEndpointingActivityTimeoutMs:J

    sub-long v2, v5, v0

    .line 372
    .local v2, "remainingMs":J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 373
    const-string v5, "RecognitionState"

    const-string v6, "Timed out waiting for server activity"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v4, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using the network for endpointing and have had no network response in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-wide v6, v6, Lcom/google/android/speech/RecognitionState;->mServerEndpointingActivityTimeoutMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10018

    invoke-direct {v4, v5, v6}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v4, "timeout":Lcom/google/android/shared/speech/exception/RecognizeException;
    iget-object v5, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-object v5, v5, Lcom/google/android/speech/RecognitionState;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;

    const-string v7, "Timed out waiting for server"

    const/4 v8, 0x0

    new-array v8, v8, [I

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor$1;-><init>(Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;Ljava/lang/String;[ILcom/google/android/shared/speech/exception/RecognizeException;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 385
    .end local v4    # "timeout":Lcom/google/android/shared/speech/exception/RecognizeException;
    :cond_1
    const-string v5, "RecognitionState"

    const-string v6, "Scheduling server endpointer timeout check"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v5, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-object v6, p0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->this$0:Lcom/google/android/speech/RecognitionState;

    iget-object v6, v6, Lcom/google/android/speech/RecognitionState;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v7, 0xa

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, p0, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/speech/RecognitionState;->mScheduledNetworkActivityTimeout:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
