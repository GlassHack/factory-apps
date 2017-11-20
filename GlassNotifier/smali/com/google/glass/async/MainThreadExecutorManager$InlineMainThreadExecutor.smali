.class public Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;
.super Ljava/lang/Object;
.source "MainThreadExecutorManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/MainThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineMainThreadExecutor"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/async/MainThreadExecutorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/async/MainThreadExecutorManager$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;-><init>()V

    return-void
.end method

.method private static getIsUiThread()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method public executeInlineIfPossible(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->getIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
