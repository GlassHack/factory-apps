.class Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;
.super Ljava/lang/Object;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticCssLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
    }
.end annotation


# static fields
.field public static glassCss:Ljava/lang/String;

.field private static final loadingLock:Ljava/util/concurrent/locks/Lock;

.field static loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static onLoadObservers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/search/results/WebAnswerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 835
    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    .line 840
    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    .line 841
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    return-void
.end method

.method static synthetic access$1300()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    return-object v0
.end method

.method public static refreshAfterLoad(Lcom/google/glass/search/results/WebAnswerView;)V
    .locals 3
    .param p0, "view"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 847
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 849
    :try_start_0
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    .line 853
    :cond_0
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    if-nez v0, :cond_1

    .line 857
    new-instance v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    invoke-static {p0}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    .line 858
    sget-object v1, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    .line 859
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 858
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 861
    :cond_1
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingTask:Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;

    iget-boolean v0, v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z

    if-eqz v0, :cond_2

    .line 862
    invoke-virtual {p0}, Lcom/google/glass/search/results/WebAnswerView;->reloadData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :goto_0
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    return-void

    .line 867
    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->onLoadObservers:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->loadingLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
