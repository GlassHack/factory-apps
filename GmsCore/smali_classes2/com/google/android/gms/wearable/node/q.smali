.class public final Lcom/google/android/gms/wearable/node/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;
.implements Lcom/google/android/gms/wearable/node/j;
.implements Lcom/google/android/gms/wearable/node/w;


# instance fields
.field public a:Lcom/google/android/gms/wearable/node/ax;

.field public b:Lcom/google/android/gms/wearable/node/m;

.field public c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/q;->a:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/o;

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/node/o;->a(Lcom/google/android/gms/wearable/d/d;ZZ)V

    .line 116
    const-string v0, "======"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 121
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/node/k;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 101
    const-string v0, "datatransport"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "datatransport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataItemChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/o;

    .line 105
    const-string v2, "datatransport"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "datatransport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendDataItemRecord "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/o;->i:Lcom/google/android/gms/wearable/node/x;

    if-nez v3, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    iget-object v4, p1, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v2

    goto :goto_0

    :cond_3
    iget-boolean v4, v0, Lcom/google/android/gms/wearable/node/o;->e:Z

    if-nez v4, :cond_4

    iget-wide v4, p1, Lcom/google/android/gms/wearable/node/k;->f:J

    iget-wide v6, v0, Lcom/google/android/gms/wearable/node/o;->h:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/wearable/node/o;->h:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    monitor-exit v2

    const-string v2, "datatransport"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "datatransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendDataItemToPeer(DataItemRecord): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/wearable/node/l;->a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/c/r;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/wearable/node/o;->a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/c/r;)V

    goto :goto_0

    .line 107
    :cond_6
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/node/x;)V
    .locals 6

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/google/android/gms/wearable/node/x;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/o;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/google/android/gms/wearable/node/o;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/q;->b:Lcom/google/android/gms/wearable/node/m;

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/q;->c:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/node/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/node/m;Landroid/content/SharedPreferences;)V

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/o;->i:Lcom/google/android/gms/wearable/node/x;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/o;->a()V

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/wearable/node/o;->e:Z

    iput-object p1, v0, Lcom/google/android/gms/wearable/node/o;->i:Lcom/google/android/gms/wearable/node/x;

    new-instance v3, Lcom/google/android/gms/wearable/node/p;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/wearable/node/p;-><init>(Lcom/google/android/gms/wearable/node/o;B)V

    iput-object v3, v0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wearable/node/p;->a(Z)V

    new-instance v3, Lcom/google/android/gms/wearable/c/s;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/s;-><init>()V

    iput-object v3, v1, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    iget-object v3, v1, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    iget-wide v4, v0, Lcom/google/android/gms/wearable/node/o;->f:J

    iput-wide v4, v3, Lcom/google/android/gms/wearable/c/s;->a:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/node/x;->a(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_0
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "datatransport"

    const-string v2, "  exception while sending syncStart to peer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "datatransport"

    const-string v2, "  exception while sending syncStart to peer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/o;

    .line 69
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/o;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    .locals 17

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/q;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/wearable/node/o;

    .line 80
    if-nez v10, :cond_1

    .line 82
    const-string v2, "datatransport"

    const-string v3, "Received message from a disconnected node. What?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-eqz v2, :cond_b

    .line 87
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    const-string v3, "datatransport"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "datatransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleSyncStart: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/c/s;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v14, v2, Lcom/google/android/gms/wearable/c/s;->a:J

    iget-object v3, v10, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v11, v10, Lcom/google/android/gms/wearable/node/o;->i:Lcom/google/android/gms/wearable/node/x;

    if-nez v11, :cond_3

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    monitor-exit v3

    const-wide/16 v2, -0x1

    move-wide v12, v2

    :goto_1
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v2, v10, Lcom/google/android/gms/wearable/node/o;->b:Lcom/google/android/gms/wearable/node/m;

    invoke-interface {v11}, Lcom/google/android/gms/wearable/node/x;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v3

    iget-object v7, v3, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    const-string v3, "DataItems"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDataItemsBySeqIdAndNonMatchingSourceNodeId: seqIdLimit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", limit=-1, sourceNodeIdFilter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v2, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "dataItemsAndAssets"

    sget-object v4, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const-string v5, "seqId >? AND sourceNode !=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v16

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "seqId"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v2, "datatransport"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "datatransport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  found "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " total dataItems"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v2, v12

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v2

    const-string v3, "datatransport"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "datatransport"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendDataItemToPeerAndConsumeCursor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v2}, Lcom/google/android/gms/wearable/node/l;->a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/c/r;

    move-result-object v3

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/wearable/node/o;->a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/c/r;)V

    iget-wide v2, v2, Lcom/google/android/gms/wearable/node/k;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    iget-object v4, v10, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    const-string v5, "datatransport"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "datatransport"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSeqIdOfLastdModification: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v10, Lcom/google/android/gms/wearable/node/o;->h:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-wide v6, v10, Lcom/google/android/gms/wearable/node/o;->h:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/google/android/gms/wearable/node/o;->e:Z

    const-string v2, "datatransport"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "datatransport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  reached the last modification: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v10, Lcom/google/android/gms/wearable/node/o;->h:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :catchall_2
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_a
    monitor-exit v4

    move-wide v12, v2

    goto/16 :goto_1

    .line 88
    :cond_b
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v2, :cond_0

    .line 89
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    const-string v3, "datatransport"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "datatransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleSetDataItem: from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", seqId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/google/android/gms/wearable/c/r;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/gms/wearable/c/r;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authoring nodeId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, v10, Lcom/google/android/gms/wearable/node/o;->b:Lcom/google/android/gms/wearable/node/m;

    iget-object v4, v10, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/l;->a(Lcom/google/android/gms/wearable/c/r;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;

    iget-object v3, v10, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v4, v10, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    if-eqz v4, :cond_d

    iget-object v4, v10, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    iget v5, v4, Lcom/google/android/gms/wearable/node/p;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/gms/wearable/node/p;->b:I

    :cond_d
    iget-wide v4, v2, Lcom/google/android/gms/wearable/c/r;->e:J

    iget-wide v6, v10, Lcom/google/android/gms/wearable/node/o;->f:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_e

    const-string v4, "datatransport"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  got an old sequence id from peer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/google/android/gms/wearable/c/r;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v10, Lcom/google/android/gms/wearable/node/o;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-wide v4, v10, Lcom/google/android/gms/wearable/node/o;->f:J

    iget-wide v6, v2, Lcom/google/android/gms/wearable/c/r;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/google/android/gms/wearable/node/o;->f:J

    iget v2, v10, Lcom/google/android/gms/wearable/node/o;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v10, Lcom/google/android/gms/wearable/node/o;->g:I

    iget v2, v10, Lcom/google/android/gms/wearable/node/o;->g:I

    const/16 v4, 0xa

    if-le v2, v4, :cond_f

    const/4 v2, 0x0

    iput v2, v10, Lcom/google/android/gms/wearable/node/o;->g:I

    iget-object v2, v10, Lcom/google/android/gms/wearable/node/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v4, v10, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    iget-wide v6, v10, Lcom/google/android/gms/wearable/node/o;->f:J

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2
.end method
