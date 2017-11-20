.class public Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/fitness/sensors/activity/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/d/b;Lcom/google/android/gms/location/DetectedActivity;J)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/activity/a;->b(Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 104
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 105
    sget-object v1, Lcom/google/android/gms/fitness/data/n;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 106
    sget-object v1, Lcom/google/android/gms/fitness/data/n;->b:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 107
    return-object v0
.end method

.method private a(Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 3

    .prologue
    .line 115
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t send event to listener. Assuming listener is dead."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sensors/activity/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    .line 34
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Received intent %s %s without AR result"

    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    :cond_0
    :goto_0
    return v11

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/gms/fitness/d/b;->values()[Lcom/google/android/gms/fitness/d/b;

    move-result-object v5

    array-length v6, v5

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_4

    const-string v0, "Received an intent with no type: %s, ignoring"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    :cond_4
    const-string v0, "Received AR result: %s at %s for %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v10

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v0, "Received intent %s with no listeners, ignoring"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/sensors/activity/a;->c(Lcom/google/android/gms/fitness/d/b;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "No detected activities"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_6
    const-string v0, "Detected activities: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v0, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/d/b;->b:Lcom/google/android/gms/fitness/d/b;

    if-ne v2, v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    sget-object v7, Lcom/google/android/gms/fitness/d/b;->b:Lcom/google/android/gms/fitness/d/b;

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v8

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a(Lcom/google/android/gms/fitness/d/b;Lcom/google/android/gms/location/DetectedActivity;J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a(Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/google/android/gms/fitness/d/b;->a:Lcom/google/android/gms/fitness/d/b;

    if-ne v2, v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-ne v0, v11, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v10, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    const-string v1, "Most likely: %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v1, Lcom/google/android/gms/fitness/d/b;->a:Lcom/google/android/gms/fitness/d/b;

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a(Lcom/google/android/gms/fitness/d/b;Lcom/google/android/gms/location/DetectedActivity;J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;->a(Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method
