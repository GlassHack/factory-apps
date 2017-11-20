.class Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/LoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final TIME_SLOW_MS:J = 0x32L


# instance fields
.field startLag:J

.field stopwatch:Lcom/google/glass/time/Stopwatch;

.field final synthetic this$0:Lcom/google/glass/deferredcontent/LoadingTask;


# direct methods
.method private constructor <init>(Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    iput-object p1, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/deferredcontent/LoadingTask;Lcom/google/glass/deferredcontent/LoadingTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/deferredcontent/LoadingTask;
    .param p2, "x1"    # Lcom/google/glass/deferredcontent/LoadingTask$1;

    .prologue
    .line 35
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;-><init>(Lcom/google/glass/deferredcontent/LoadingTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 48
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 55
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/LoadingTask;->access$100(Lcom/google/glass/deferredcontent/LoadingTask;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->startLag:J

    .line 57
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/LoadingTask;->access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->access$200(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 95
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;, "Lcom/google/glass/deferredcontent/LoadingTask<TResult;>.LoadingAsyncTask;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 63
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v5}, Lcom/google/glass/deferredcontent/LoadingTask;->access$200(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 66
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v5}, Lcom/google/glass/deferredcontent/LoadingTask;->access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/util/Condition;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    :goto_0
    return-void

    .line 69
    :cond_0
    if-eqz p1, :cond_2

    .line 70
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 73
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 74
    .local v0, "latency":J
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v5}, Lcom/google/glass/deferredcontent/LoadingTask;->getUserEventTag()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "userEventTag":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-wide/16 v6, 0x32

    cmp-long v5, v0, v6

    if-ltz v5, :cond_1

    .line 79
    new-instance v5, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v6, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v6}, Lcom/google/glass/deferredcontent/LoadingTask;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v7, "t"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "l"

    aput-object v9, v8, v4

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x2

    const-string v10, "g"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-wide v10, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->startLag:J

    .line 83
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 80
    invoke-static {v7, v2, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-virtual {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v5, p1}, Lcom/google/glass/deferredcontent/LoadingTask;->bindContent(Ljava/lang/Object;)V

    .line 88
    .end local v0    # "latency":J
    .end local v2    # "userEventTag":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/google/glass/deferredcontent/LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method
