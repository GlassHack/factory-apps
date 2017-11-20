.class Lcom/google/glass/sync/SyncStats;
.super Ljava/lang/Object;
.source "SyncStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/SyncStats$1;,
        Lcom/google/glass/sync/SyncStats$StatsInfo;
    }
.end annotation


# instance fields
.field private final downloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/sync/SyncStats$StatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final stopwatch:Lcom/google/glass/time/Stopwatch;

.field private final syncVersion:I

.field private final uploads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/sync/SyncStats$StatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(ILcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "syncVersion"    # I
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "glass_sync"

    .line 19
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/SyncStats;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    iput-object p2, p0, Lcom/google/glass/sync/SyncStats;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/SyncStats;->uploads:Ljava/util/Map;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/SyncStats;->downloads:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/SyncStats;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 32
    iput p1, p0, Lcom/google/glass/sync/SyncStats;->syncVersion:I

    .line 33
    return-void
.end method

.method private durationString(J)Ljava/lang/String;
    .locals 4
    .param p1, "durationMs"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuilder;
    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 140
    div-long v1, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "secs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method log()V
    .locals 12

    .prologue
    .line 79
    iget-object v5, p0, Lcom/google/glass/sync/SyncStats;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 81
    iget-object v5, p0, Lcom/google/glass/sync/SyncStats;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    const-string v7, "l"

    iget-object v8, p0, Lcom/google/glass/sync/SyncStats;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 82
    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "v"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/google/glass/sync/SyncStats;->syncVersion:I

    .line 83
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 81
    invoke-static {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/glass/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "dataDescription":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .line 89
    .local v4, "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    const-string v6, "Upload "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v6, " [numFiles="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$100(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, ", totalBytes="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    const-string v6, "kB, totalDuration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/glass/sync/SyncStats;->durationString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, "].\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    .end local v1    # "dataDescription":Ljava/lang/String;
    .end local v4    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    :cond_0
    iget-object v5, p0, Lcom/google/glass/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .line 103
    .restart local v4    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    const-string v6, "Download "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v6, " [numFiles="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$100(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v6, ", totalBytes="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v6, "kB, totalDuration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/glass/sync/SyncStats;->durationString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v6, "].\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v6, "is"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "n"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 116
    invoke-static {v4}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$100(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 114
    invoke-static {v6, v3, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "data":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/sync/SyncStats;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_ITEM:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v7, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 121
    iget-object v5, p0, Lcom/google/glass/sync/SyncStats;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_2
    return-void
.end method

.method trackDownload(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "durationMs"    # J

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/glass/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .line 65
    .local v0, "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .end local v0    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/sync/SyncStats$StatsInfo;-><init>(Lcom/google/glass/sync/SyncStats$1;)V

    .line 69
    .restart local v0    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$108(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    .line 70
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$202(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J

    .line 71
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v1

    add-long/2addr v1, p4

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$302(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J

    .line 72
    iget-object v1, p0, Lcom/google/glass/sync/SyncStats;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method trackUpload(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "dataDescription"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "durationMs"    # J

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/glass/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .line 45
    .local v0, "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/glass/sync/SyncStats$StatsInfo;

    .end local v0    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/sync/SyncStats$StatsInfo;-><init>(Lcom/google/glass/sync/SyncStats$1;)V

    .line 49
    .restart local v0    # "statsInfo":Lcom/google/glass/sync/SyncStats$StatsInfo;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$108(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    .line 50
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$200(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$202(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J

    .line 51
    invoke-static {v0}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$300(Lcom/google/glass/sync/SyncStats$StatsInfo;)J

    move-result-wide v1

    add-long/2addr v1, p4

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncStats$StatsInfo;->access$302(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J

    .line 52
    iget-object v1, p0, Lcom/google/glass/sync/SyncStats;->uploads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
