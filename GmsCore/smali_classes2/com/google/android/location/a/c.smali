.class public final Lcom/google/android/location/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/location/a/c;->a:J

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(J)V
    .locals 8

    .prologue
    .line 54
    const-class v2, Lcom/google/android/location/a/c;

    monitor-enter v2

    :try_start_0
    sget-wide v0, Lcom/google/android/location/a/c;->a:J

    sub-long v0, p0, v0

    .line 56
    const-wide/32 v4, 0x927c0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 57
    sput-wide p0, Lcom/google/android/location/a/c;->a:J

    .line 59
    sget-object v0, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/a/d;

    .line 61
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 68
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v0, v0, v6

    iget-wide v6, v1, Lcom/google/android/location/a/d;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 74
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_2
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 38
    const-class v1, Lcom/google/android/location/a/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    sget-object v0, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/a/d;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/google/android/location/a/d;

    invoke-direct {v0, p3, p4}, Lcom/google/android/location/a/d;-><init>(J)V

    .line 43
    sget-object v3, Lcom/google/android/location/a/c;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    monitor-exit v1

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lcom/google/android/location/a/d;->a:J

    add-long/2addr v2, p3

    iput-wide v2, v0, Lcom/google/android/location/a/d;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
