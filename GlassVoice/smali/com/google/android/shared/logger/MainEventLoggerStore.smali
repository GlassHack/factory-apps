.class public Lcom/google/android/shared/logger/MainEventLoggerStore;
.super Ljava/lang/Object;
.source "MainEventLoggerStore.java"

# interfaces
.implements Lcom/google/android/shared/logger/EventLoggerStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MainEventLoggerStore"


# instance fields
.field private final mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mEvents:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mTime:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mDatas:Ljava/util/ArrayList;

    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized clearResults()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearResults()Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/shared/logger/MainEventLoggerStore;->getResults()Lcom/google/android/shared/logger/MainEventLoggerStore$Results;

    move-result-object v0

    .line 49
    .local v0, "results":Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    invoke-virtual {p0}, Lcom/google/android/shared/logger/MainEventLoggerStore;->clearResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-object v0

    .line 48
    .end local v0    # "results":Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResults()Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    .locals 4

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mEvents:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mTime:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v2, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .local v0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Lcom/google/android/shared/logger/MainEventLoggerStore$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/google/android/shared/logger/MainEventLoggerStore$1;-><init>(Lcom/google/android/shared/logger/MainEventLoggerStore;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 28
    .end local v0    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized recordEvent(ILjava/lang/Object;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mEvents:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mTime:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v2, p0, Lcom/google/android/shared/logger/MainEventLoggerStore;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 21
    .end local v0    # "elapsedRealtime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
