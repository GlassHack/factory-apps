.class public Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;
.super Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
.source "ExtraPreconditions.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ExtraPreconditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugSameThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugSameThread"


# instance fields
.field private mThread:Ljava/lang/Thread;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 5

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 84
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 85
    iput-object v0, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    .line 86
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThrowable:Ljava/lang/Throwable;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    if-eq v1, v0, :cond_1

    .line 90
    const-string v1, "DebugSameThread"

    iget-object v2, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThrowable:Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 91
    const-string v1, "DebugSameThread"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different threads"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0    # "currentThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 95
    .restart local v0    # "currentThread":Ljava/lang/Thread;
    :cond_1
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
