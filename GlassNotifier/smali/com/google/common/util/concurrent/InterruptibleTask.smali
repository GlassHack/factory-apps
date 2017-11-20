.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/lang/Object;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;,
        Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile doneInterrupting:Z

.field private volatile runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 34
    const-class v0, Lcom/google/common/util/concurrent/InterruptibleTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->log:Ljava/util/logging/Logger;

    .line 39
    :try_start_0
    new-instance v6, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;

    const-class v0, Lcom/google/common/util/concurrent/InterruptibleTask;

    const-class v1, Ljava/lang/Thread;

    const-string v2, "runner"

    .line 40
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v6, "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    :goto_0
    sput-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

    .line 50
    return-void

    .line 41
    .end local v6    # "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    :catch_0
    move-exception v5

    .line 46
    .local v5, "reflectionFailure":Ljava/lang/Throwable;
    sget-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.InterruptibleTask"

    const-string v3, "<clinit>"

    const-string v4, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v6, Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    .restart local v6    # "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/InterruptibleTask;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method final interruptTask()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    .line 83
    .local v0, "currentRunner":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    .line 87
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;->compareAndSetRunner(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->wasInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :goto_1
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    if-nez v1, :cond_2

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_2
    throw v0
.end method

.method abstract runInterruptibly()V
.end method

.method abstract wasInterrupted()Z
.end method
