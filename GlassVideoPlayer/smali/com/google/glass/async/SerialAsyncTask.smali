.class public abstract Lcom/google/glass/async/SerialAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/async/SerialAsyncTask$1;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/async/SerialAsyncTask$1;-><init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/async/SerialAsyncTask;->serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/glass/async/SerialAsyncTask$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/glass/async/SerialAsyncTask$2;-><init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-object v2, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during serialOnPreExecute()."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    sget-object v2, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during serialOnPostExecute()."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 86
    return-void
.end method

.method protected varargs abstract serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
