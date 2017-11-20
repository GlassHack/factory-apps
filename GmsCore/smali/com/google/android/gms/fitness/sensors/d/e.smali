.class public final Lcom/google/android/gms/fitness/sensors/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/sensors/d/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/d/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v4

    .line 40
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 41
    const-string v0, "Received location %s with no listeners %s, ignoring"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v10

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/d/a;->b()Landroid/location/Location;

    move-result-object v5

    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz v5, :cond_2

    .line 49
    invoke-virtual {p1, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 50
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->av:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 51
    const-string v0, "Location has only changed by %f meters. Skipping the location point."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v1, v0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    const-string v0, "Unable to update previous location."

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 61
    :cond_4
    if-eqz v2, :cond_7

    .line 62
    const-string v0, "Sending Location data"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v6, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/sensors/d/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    invoke-virtual {v0, v11}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v12}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    :cond_6
    :try_start_0
    invoke-interface {v2, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    const-string v0, "Finished dispatching location event to listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_7
    :goto_1
    if-eqz v4, :cond_8

    .line 67
    const-string v0, "Sending Speed data"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Location does not have speed: %s Skipping."

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    :cond_8
    :goto_2
    if-nez v5, :cond_b

    .line 72
    const-string v0, "Not reporting distance data since no previous location was found"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 63
    :catch_0
    move-exception v0

    const-string v2, "Couldn\'t send location event to listener. Assuming listener is dead."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 68
    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->aw:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    const-string v0, "Speed %f is less than threshold. Skipping."

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v6, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/sensors/d/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    :try_start_1
    invoke-interface {v4, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    const-string v0, "Finished dispatching speed event to listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "Couldn\'t send speed event to listener. Assuming listener is dead."

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 76
    :cond_b
    if-eqz v3, :cond_0

    .line 77
    const-string v0, "Sending Distance data"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/e;->a:Lcom/google/android/gms/fitness/sensors/d/a;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/sensors/d/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    const-string v0, "Finished dispatching distance event to listener"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Couldn\'t send distance event to listener. Assuming listener is dead."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method
