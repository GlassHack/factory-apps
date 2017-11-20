.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use Futures.immediate*Future or SettableFuture"
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 67
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 69
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 112
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 124
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 152
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 247
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void

    .line 125
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catch_0
    move-exception v6

    .line 130
    .local v6, "unsafeFailure":Ljava/lang/Throwable;
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    .line 132
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v4, "next"

    .line 133
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v5, "waiters"

    .line 134
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v7, "listeners"

    .line 135
    invoke-static {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v7, Ljava/lang/Object;

    const-string v8, "value"

    .line 136
    invoke-static {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_0

    .line 137
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catch_1
    move-exception v12

    .line 142
    .local v12, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AbstractFuture"

    const-string v4, "<clinit>"

    const-string v5, "UnsafeAtomicHelper is broken!"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v9, "com.google.common.util.concurrent.AbstractFuture"

    const-string v10, "<clinit>"

    const-string v11, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v0, v13}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 326
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1123
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1125
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 5
    .param p1, "onto"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 893
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 894
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    move-object v1, p1

    .line 896
    .local v1, "reversedList":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    if-eqz v0, :cond_1

    .line 897
    move-object v2, v0

    .line 898
    .local v2, "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 899
    iput-object v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 900
    move-object v1, v2

    .line 901
    goto :goto_0

    .line 902
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1
    return-object v1
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    const/4 v1, 0x0

    .line 793
    .local v1, "next":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 798
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 800
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v1

    .line 801
    const/4 p0, 0x0

    .line 802
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 803
    move-object v0, v1

    .line 804
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 805
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 806
    .local v3, "task":Ljava/lang/Runnable;
    instance-of v5, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 807
    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 813
    .local v2, "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    iget-object p0, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 814
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v5, v2, :cond_0

    .line 815
    iget-object v5, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 816
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 822
    .end local v2    # "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_1
    iget-object v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 827
    .end local v0    # "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 911
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v5

    .line 916
    .local v5, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x39

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "RuntimeException while executing runnable "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " with executor "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_0

    .line 501
    const-string v1, "Task was cancelled."

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 502
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_1

    .line 503
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 504
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    .line 505
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    .line 508
    :cond_2
    move-object v0, p1

    .line 509
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v5, p0, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v5, :cond_0

    .line 772
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    .end local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 786
    .restart local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_0
    return-object v4

    .line 776
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    .line 777
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_1

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .local v4, "valueToSet":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    goto :goto_1

    .line 778
    .end local v3    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 779
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 784
    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_0

    .line 780
    .end local v1    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_1
    move-exception v0

    .line 781
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 784
    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    goto :goto_0

    .line 782
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    .end local v4    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :catch_2
    move-exception v2

    .line 783
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v4, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 4

    .prologue
    .line 871
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 872
    .local v1, "head":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v2, p0, v1, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    move-object v0, v1

    .line 874
    .local v0, "currentWaiter":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :goto_0
    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 875
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_0

    .line 878
    :cond_1
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 4
    .param p1, "node"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 207
    :goto_0
    const/4 v1, 0x0

    .line 208
    .local v1, "pred":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 209
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v3, :cond_1

    .line 229
    :cond_0
    return-void

    .line 213
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 215
    .local v2, "succ":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 216
    move-object v1, v0

    .line 225
    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 217
    :cond_3
    if-eqz v1, :cond_4

    .line 218
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 219
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_2

    goto :goto_0

    .line 222
    :cond_4
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 630
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const-string v2, "Runnable was null."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "Executor was null."

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 633
    .local v1, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v1, v2, :cond_2

    .line 634
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 636
    .local v0, "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_0
    iput-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 637
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    return-void

    .line 640
    .restart local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 641
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v1, v2, :cond_0

    .line 645
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method protected afterDone()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 842
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public cancel(Z)Z
    .locals 11
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 541
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 542
    .local v3, "localValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 543
    .local v4, "rValue":Z
    if-nez v3, :cond_2

    move v7, v8

    :goto_0
    instance-of v10, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v7, v10

    if-eqz v7, :cond_6

    .line 546
    sget-boolean v7, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v7, :cond_3

    .line 548
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v7, "Future.cancel() was called."

    invoke-direct {v1, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    new-instance v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {v6, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 551
    .local v6, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    move-object v0, p0

    .line 553
    .local v0, "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_0
    :goto_2
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, v0, v3, v6}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 554
    const/4 v4, 0x1

    .line 557
    if-eqz p1, :cond_1

    .line 558
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 560
    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 561
    instance-of v7, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v7, :cond_6

    move-object v7, v3

    .line 564
    check-cast v7, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v2, v7, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 565
    .local v2, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v2, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 573
    check-cast v5, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 574
    .local v5, "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v3, v5, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 575
    if-nez v3, :cond_4

    move v7, v8

    :goto_3
    instance-of v10, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v7, v10

    if-eqz v7, :cond_6

    .line 576
    move-object v0, v5

    .line 577
    goto :goto_2

    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_2
    move v7, v9

    .line 543
    goto :goto_0

    .line 549
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .restart local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_4
    move v7, v9

    .line 575
    goto :goto_3

    .line 581
    .end local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_5
    invoke-interface {v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 596
    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_6
    :goto_4
    return v4

    .line 587
    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_7
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 588
    instance-of v7, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v7, :cond_0

    goto :goto_4
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 457
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 461
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_2

    move v6, v4

    :goto_1
    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    .line 462
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 491
    :goto_2
    return-object v3

    :cond_1
    move v3, v5

    .line 461
    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    .line 464
    :cond_3
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 465
    .local v2, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v2, v3, :cond_a

    .line 466
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 468
    .local v1, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_4
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 469
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 472
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 474
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 476
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 481
    if-eqz v0, :cond_7

    move v3, v4

    :goto_3
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_8

    move v6, v4

    :goto_4
    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 482
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v3, v5

    .line 481
    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    .line 486
    :cond_9
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 487
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v2, v3, :cond_4

    .line 491
    .end local v1    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_a
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 375
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 379
    .local v2, "localValue":Ljava/lang/Object;
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    :goto_0
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    and-int/2addr v5, v8

    if-eqz v5, :cond_3

    .line 380
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 428
    :goto_2
    return-object v5

    .line 379
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 383
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v6

    .line 385
    .local v0, "endNanos":J
    :goto_3
    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_b

    .line 386
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 387
    .local v4, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v4, v5, :cond_d

    .line 388
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 390
    .local v3, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_4
    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 391
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 393
    :cond_5
    invoke-static {p0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 395
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 396
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 397
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 383
    .end local v0    # "endNanos":J
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 402
    .restart local v0    # "endNanos":J
    .restart local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_7
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 403
    if-eqz v2, :cond_8

    const/4 v5, 0x1

    :goto_4
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    and-int/2addr v5, v8

    if-eqz v5, :cond_a

    .line 404
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 403
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 408
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    .line 409
    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 411
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 425
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_b
    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_12

    .line 426
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 427
    if-eqz v2, :cond_e

    const/4 v5, 0x1

    :goto_7
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_8
    and-int/2addr v5, v8

    if-eqz v5, :cond_10

    .line 428
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 416
    .restart local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_c
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 417
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v4, v5, :cond_4

    .line 421
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_d
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .line 427
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    goto :goto_8

    .line 430
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 431
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 433
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    goto :goto_6

    .line 435
    :cond_12
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v5
.end method

.method protected interruptTask()V
    .locals 0

    .prologue
    .line 610
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 521
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 522
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v1
.end method

.method public isDone()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 515
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 516
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final maybePropagateCancellation(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 865
    :cond_0
    return-void

    .line 862
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 663
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 665
    const/4 v1, 0x1

    .line 667
    :goto_1
    return v1

    .end local v0    # "valueToSet":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    .line 662
    goto :goto_0

    .line 667
    .restart local v0    # "valueToSet":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 685
    .local v0, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 687
    const/4 v1, 0x1

    .line 689
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 10
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 716
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 718
    .local v1, "localValue":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 719
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 720
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 721
    .local v4, "value":Ljava/lang/Object;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 722
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 756
    .end local v4    # "value":Ljava/lang/Object;
    :goto_0
    return v6

    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    move v6, v7

    .line 725
    goto :goto_0

    .line 727
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v5, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 728
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v5}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 732
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v3

    .line 739
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    .local v0, "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :goto_1
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, p0, v5, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_1
    move-exception v2

    .line 741
    .local v2, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .restart local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_1

    .line 748
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    .end local v2    # "oomMostLikely":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 752
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    :cond_3
    instance-of v6, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v6, :cond_4

    move-object v6, v1

    .line 754
    check-cast v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v6, v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_4
    move v6, v7

    .line 756
    goto :goto_0
.end method

.method final trustedGetException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 851
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .prologue
    .line 619
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 620
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local v0    # "localValue":Ljava/lang/Object;
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
