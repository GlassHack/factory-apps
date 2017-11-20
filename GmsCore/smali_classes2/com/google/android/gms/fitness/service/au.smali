.class public final Lcom/google/android/gms/fitness/service/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;

.field final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/google/android/gms/fitness/sensors/a;

.field final d:Lcom/google/android/gms/fitness/n/d;

.field private final e:Lcom/google/android/gms/fitness/service/ay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/n/d;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/au;->d:Lcom/google/android/gms/fitness/n/d;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    invoke-static {}, Lcom/google/android/gms/fitness/service/ay;->b()Lcom/google/android/gms/fitness/service/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/au;->e:Lcom/google/android/gms/fitness/service/ay;

    .line 60
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/f;

    sget-object v1, Lcom/google/android/gms/fitness/sensors/e/d;->b:Lcom/google/android/gms/fitness/sensors/e/d;

    const-string v2, "Recording"

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/sensors/e/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/au;->c:Lcom/google/android/gms/fitness/sensors/a;

    .line 61
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/d/c;)Lcom/google/c/j/a/v;
    .locals 18

    .prologue
    .line 68
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/sensors/e/g;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/e/g;->d:Lcom/google/android/gms/fitness/data/Subscription;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/fitness/data/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 69
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    .line 88
    :goto_1
    return-object v2

    .line 68
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 72
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    .line 73
    new-instance v5, Lcom/google/android/gms/fitness/service/aw;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/service/au;->d:Lcom/google/android/gms/fitness/n/d;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/fitness/service/aw;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/n/d;)V

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/au;->e:Lcom/google/android/gms/fitness/service/ay;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->e()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/fitness/service/ay;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v6

    :cond_3
    const-wide/16 v8, 0x2

    div-long v8, v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/au;->c:Lcom/google/android/gms/fitness/sensors/a;

    move-object/from16 v17, v0

    new-instance v3, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->c()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const-wide/16 v15, -0x1

    move-wide v10, v6

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/google/android/gms/fitness/service/av;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/google/android/gms/fitness/service/av;-><init>(Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/d/c;Lcom/google/android/gms/fitness/data/o;)V

    invoke-static {v2, v3}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    goto :goto_1
.end method

.method final a()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 240
    :cond_0
    return-object v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    if-nez v0, :cond_0

    .line 214
    const-string v0, "Couldn\'t find any pending intents for %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    const-string v1, "Pending intent %s not found in the list of intents %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 223
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "registrations"

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "registered for sessions"

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
