.class Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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
    .line 39
    iput-object p1, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/deferredcontent/LoadingTask;Lcom/google/glass/deferredcontent/LoadingTask$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;-><init>(Lcom/google/glass/deferredcontent/LoadingTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 59
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

    .line 61
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

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 98
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/LoadingTask;->access$200(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 99
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 67
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/LoadingTask;->access$200(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 70
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/LoadingTask;->access$000(Lcom/google/glass/deferredcontent/LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/Condition;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 73
    :cond_0
    if-eqz p1, :cond_2

    .line 74
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 77
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v2

    .line 78
    iget-object v4, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v4}, Lcom/google/glass/deferredcontent/LoadingTask;->getUserEventTag()Ljava/lang/String;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_1

    const-wide/16 v5, 0x32

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1

    .line 83
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

    aput-object v9, v8, v1

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v0

    const/4 v2, 0x2

    const-string v3, "g"

    aput-object v3, v8, v2

    const/4 v2, 0x3

    iget-wide v9, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->startLag:J

    .line 87
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    .line 84
    invoke-static {v7, v4, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v5, v6, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v2, p1}, Lcom/google/glass/deferredcontent/LoadingTask;->bindContent(Ljava/lang/Object;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/google/glass/deferredcontent/LoadingTask$LoadingAsyncTask;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
