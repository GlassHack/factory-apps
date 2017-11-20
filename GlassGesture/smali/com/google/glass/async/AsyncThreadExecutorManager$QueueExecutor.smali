.class public interface abstract Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;
.super Ljava/lang/Object;
.source "AsyncThreadExecutorManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/AsyncThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueueExecutor"
.end annotation


# virtual methods
.method public abstract executeIfNotQueued(Ljava/lang/Runnable;)Z
.end method

.method public abstract isQueued(Ljava/lang/Runnable;)Z
.end method
