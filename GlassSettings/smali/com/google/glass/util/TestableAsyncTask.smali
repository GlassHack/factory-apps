.class public abstract Lcom/google/glass/util/TestableAsyncTask;
.super Landroid/os/AsyncTask;
.source "TestableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    .local p0, "this":Lcom/google/glass/util/TestableAsyncTask;, "Lcom/google/glass/util/TestableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/util/TestableAsyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/google/glass/util/TestableAsyncTask;, "Lcom/google/glass/util/TestableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/google/glass/util/TestableAsyncTask;->onPostExecuteInternal(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TestableAsyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 19
    return-void
.end method

.method protected abstract onPostExecuteInternal(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public waitForPostExecute()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/google/glass/util/TestableAsyncTask;, "Lcom/google/glass/util/TestableAsyncTask<TParams;TProgress;TResult;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/TestableAsyncTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    goto :goto_0
.end method
