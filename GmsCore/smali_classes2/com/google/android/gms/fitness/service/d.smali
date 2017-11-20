.class public final Lcom/google/android/gms/fitness/service/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/fitness/n/ar;

.field private final b:Lcom/google/android/gms/fitness/sync/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/d;->b:Lcom/google/android/gms/fitness/sync/d;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSet;JJIZ)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 12

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 126
    move/from16 v0, p6

    if-lt v8, v0, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object p1

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v4}, Lcom/google/android/gms/fitness/n/ar;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-wide/from16 v4, p4

    .line 133
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    cmp-long v2, v4, p2

    if-ltz v2, :cond_0

    .line 137
    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 138
    const-string v2, "Fitness"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "Found %5$d local data points from %3$tF %3$tT - %4$tF %4$tT. Server has data from %2$tF %2$tT - %3$tF %3$tT for %1$s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    :cond_2
    if-nez p7, :cond_5

    .line 150
    const-string v2, "Server has more data, but client opted out of using it for the query"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataSet;->a(Z)V

    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v4, v2}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/f;

    move-result-object v2

    if-nez v2, :cond_4

    const-wide/16 v4, -0x1

    goto :goto_1

    :cond_4
    iget-wide v4, v2, Lcom/google/android/gms/fitness/d/f;->d:J

    goto :goto_1

    .line 157
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/d;->b:Lcom/google/android/gms/fitness/sync/d;

    move-wide v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/fitness/sync/d;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Ljava/util/List;

    move-result-object v2

    .line 159
    const-string v4, "Found %d data points in server for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    const/4 v4, -0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_6

    .line 165
    sub-int v4, p6, v8

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 167
    if-le v5, v4, :cond_6

    .line 168
    sub-int v4, v5, v4

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 172
    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    new-instance v4, Lcom/google/android/gms/fitness/n/aw;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to fetch server data for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/fitness/n/aw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final a(Lcom/google/android/gms/fitness/n/b;Z)Ljava/util/Map;
    .locals 10

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/n/b;)Ljava/util/Map;

    move-result-object v8

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/d;->a:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->d_()Ljava/util/List;

    move-result-object v1

    iget-object v0, p1, Lcom/google/android/gms/fitness/n/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSet;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->a(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->b(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->c(Lcom/google/android/gms/fitness/data/DataSource;)I

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/fitness/service/d;->a(Lcom/google/android/gms/fitness/data/DataSet;JJIZ)Lcom/google/android/gms/fitness/data/DataSet;

    goto :goto_1

    .line 87
    :cond_2
    return-object v8
.end method
