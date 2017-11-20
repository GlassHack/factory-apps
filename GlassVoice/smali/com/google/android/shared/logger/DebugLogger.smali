.class public Lcom/google/android/shared/logger/DebugLogger;
.super Lcom/google/android/shared/logger/EventLoggerStoreWrapper;
.source "DebugLogger.java"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/shared/logger/EventLoggerStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/android/shared/logger/EventLoggerStore;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;-><init>(Lcom/google/android/shared/logger/EventLoggerStore;)V

    .line 12
    iput-object p2, p0, Lcom/google/android/shared/logger/DebugLogger;->mTag:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized recordEvent(ILjava/lang/Object;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;->recordEvent(ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/shared/logger/DebugLogger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/shared/logger/EventUtils;->getEventLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
