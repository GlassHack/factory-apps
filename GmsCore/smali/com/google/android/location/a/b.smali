.class public final Lcom/google/android/location/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Collection;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/google/android/gms/analytics/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.location"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/a/b;->a:Ljava/util/Collection;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method private static declared-synchronized a()Lcom/google/android/gms/analytics/bo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 105
    const-class v2, Lcom/google/android/location/a/b;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/location/a/b;->c:Lcom/google/android/gms/analytics/bo;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/location/a/b;->c:Lcom/google/android/gms/analytics/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v2

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/location/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 110
    const-string v0, "LocationAnalytics"

    const-string v3, "empty AnalyticsContext, must call init() first"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Lcom/google/android/location/x;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    sget-object v0, Lcom/google/android/location/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v1

    sget-object v0, Lcom/google/android/location/x;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/ap;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/bo;

    move-result-object v0

    .line 117
    sput-object v0, Lcom/google/android/location/a/b;->c:Lcom/google/android/gms/analytics/bo;

    iget-object v0, v0, Lcom/google/android/gms/analytics/bo;->a:Lcom/google/android/gms/analytics/bp;

    const-wide/16 v4, -0x3e8

    iput-wide v4, v0, Lcom/google/android/gms/analytics/bp;->b:J

    invoke-static {}, Lcom/google/android/gms/analytics/ap;->a()Lcom/google/android/gms/analytics/ap;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "GoogleAnalytics isn\'t initialized for the Tracker!"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    .line 118
    :goto_1
    sget-object v0, Lcom/google/android/location/a/b;->c:Lcom/google/android/gms/analytics/bo;

    const-string v1, "location"

    const-string v3, "&dr"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/google/android/location/a/b;->c:Lcom/google/android/gms/analytics/bo;

    goto :goto_0

    .line 117
    :cond_2
    iget-wide v4, v0, Lcom/google/android/gms/analytics/bp;->b:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    iget-boolean v3, v0, Lcom/google/android/gms/analytics/bp;->a:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    iget-object v0, v0, Lcom/google/android/gms/analytics/bo;->a:Lcom/google/android/gms/analytics/bp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/ap;->a(Lcom/google/android/gms/analytics/aq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 117
    :cond_4
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    iget-object v0, v0, Lcom/google/android/gms/analytics/bo;->a:Lcom/google/android/gms/analytics/bp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/ap;->b(Lcom/google/android/gms/analytics/aq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 121
    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 164
    const-class v1, Lcom/google/android/location/a/b;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/a/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 51
    invoke-static {}, Lcom/google/android/location/a/b;->a()Lcom/google/android/gms/analytics/bo;

    move-result-object v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    const-string v0, "LocationAnalytics"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "LocationAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location analytics disabled, can\'t send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Lcom/google/android/location/x;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    const-string v1, "LocationAnalytics"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string v1, "LocationAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". AnalyticsUtil userDomain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    new-instance v1, Lcom/google/android/gms/analytics/ax;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/ax;-><init>()V

    .line 64
    if-eqz p3, :cond_3

    .line 65
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/analytics/ax;->a(J)Lcom/google/android/gms/analytics/ax;

    .line 67
    :cond_3
    const-string v3, "utm_source=location"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/ax;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ax;

    const-string v3, "&ea"

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/ax;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ax;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/ax;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ax;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/ax;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ax;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x3

    .line 133
    invoke-static {}, Lcom/google/android/location/a/b;->a()Lcom/google/android/gms/analytics/bo;

    move-result-object v2

    .line 134
    if-nez v2, :cond_1

    .line 135
    const-string v0, "LocationAnalytics"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "LocationAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location tracking disabled, can\'t send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v3, Lcom/google/android/gms/analytics/bn;

    sget-object v0, Lcom/google/android/location/a/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/google/android/location/a/b;->a:Ljava/util/Collection;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/analytics/bn;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 146
    sget-object v0, Lcom/google/android/location/x;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v1, "LocationAnalytics"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "LocationAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fatal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". AnalyticsUtil userDomain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    new-instance v1, Lcom/google/android/gms/analytics/ay;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/ay;-><init>()V

    const-string v5, "utm_source=location"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/ay;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ay;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/google/android/gms/analytics/bn;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&exd"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/analytics/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    const-string v3, "&exf"

    invoke-static {p1}, Lcom/google/android/gms/analytics/bs;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/analytics/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/ay;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ay;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
