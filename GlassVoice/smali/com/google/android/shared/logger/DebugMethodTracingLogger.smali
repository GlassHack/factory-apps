.class public Lcom/google/android/shared/logger/DebugMethodTracingLogger;
.super Lcom/google/android/shared/logger/EventLoggerStoreWrapper;
.source "DebugMethodTracingLogger.java"


# instance fields
.field private final mBaseFilename:Ljava/lang/String;

.field private final mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mEnd:I

.field private final mStart:I


# direct methods
.method public constructor <init>(Lcom/google/android/shared/logger/EventLoggerStore;IILjava/lang/String;)V
    .locals 2
    .param p1, "delegate"    # Lcom/google/android/shared/logger/EventLoggerStore;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "baseFilename"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;-><init>(Lcom/google/android/shared/logger/EventLoggerStore;)V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    iput p2, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mStart:I

    .line 19
    iput p3, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mEnd:I

    .line 20
    iput-object p4, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mBaseFilename:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized recordEvent(ILjava/lang/Object;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;->recordEvent(ILjava/lang/Object;)V

    .line 26
    iget v0, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mStart:I

    if-ne p1, v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mBaseFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/shared/logger/DebugMethodTracingLogger;->mEnd:I

    if-ne p1, v0, :cond_0

    .line 29
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
