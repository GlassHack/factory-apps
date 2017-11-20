.class public final Lcom/google/android/location/places/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/analytics/bo;


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v2, 0x64

    .line 160
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 161
    const-string v0, ">= 1000"

    .line 170
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 163
    const-string v0, "< 0"

    goto :goto_0

    .line 165
    :cond_1
    div-long v0, p0, v2

    mul-long/2addr v0, v2

    .line 166
    add-long/2addr v2, v0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 50
    const-class v1, Lcom/google/android/location/places/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/places/a/a;->a:Lcom/google/android/gms/analytics/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v2

    sget-object v0, Lcom/google/android/location/x;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/ap;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/bo;

    move-result-object v2

    .line 55
    sput-object v2, Lcom/google/android/location/places/a/a;->a:Lcom/google/android/gms/analytics/bo;

    sget-object v0, Lcom/google/android/location/x;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/bo;->a(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 123
    sget-object v0, Lcom/google/android/location/places/a/a;->a:Lcom/google/android/gms/analytics/bo;

    if-nez v0, :cond_1

    .line 124
    const-string v0, "PlacesAnalytics"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "PlacesAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Places analytics disabled, can\'t send "

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

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/google/android/location/x;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    const-string v1, "PlacesAnalytics"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "PlacesAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". PlacesAnalytics userDomain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    new-instance v1, Lcom/google/android/gms/analytics/ba;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/ba;-><init>()V

    .line 136
    if-eqz p3, :cond_3

    .line 137
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/ba;->a(J)Lcom/google/android/gms/analytics/ba;

    .line 140
    :cond_3
    sget-object v2, Lcom/google/android/location/x;->n:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sget-object v2, Lcom/google/android/location/places/a/a;->a:Lcom/google/android/gms/analytics/bo;

    const-string v3, "utm_source=places"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/ba;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ba;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/ba;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/ba;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/ba;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/ba;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/ba;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ba;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method
