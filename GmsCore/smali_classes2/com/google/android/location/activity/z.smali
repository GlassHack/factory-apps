.class public final Lcom/google/android/location/activity/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/location/os/at;

.field private final b:J

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;JZ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    .line 41
    iput-wide p2, p0, Lcom/google/android/location/activity/z;->b:J

    .line 42
    iput-boolean p4, p0, Lcom/google/android/location/activity/z;->c:Z

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/z;)Lcom/google/android/location/os/at;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/activity/z;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 47
    invoke-static {}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->getInstance()Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->getActivityRecognitionProvider()Lcom/android/location/provider/ActivityRecognitionProvider;

    move-result-object v8

    .line 49
    if-nez v8, :cond_2

    .line 50
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "HWAR"

    const-string v1, "Provider is null."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    const-string v1, "ar"

    const-string v2, "hw_not_supported"

    const-string v3, "provider is null"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Lcom/android/location/provider/ActivityRecognitionProvider;->getSupportedActivities()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 69
    array-length v1, v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, v7, v0

    .line 70
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_3

    const-string v3, "HWAR"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SupportedActivity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_4

    const-string v1, "HWAR"

    const-string v2, "Error reading supported activities"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    const-string v1, "ar"

    const-string v2, "hw_not_supported"

    const-string v3, "remote exception"

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 72
    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 73
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    const-string v1, "ar"

    const-string v2, "hw_supported_activities"

    const-string v3, ","

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 78
    :cond_6
    new-instance v0, Lcom/google/android/location/activity/aa;

    invoke-direct {v0, p0}, Lcom/google/android/location/activity/aa;-><init>(Lcom/google/android/location/activity/z;)V

    invoke-virtual {v8, v0}, Lcom/android/location/provider/ActivityRecognitionProvider;->registerSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 102
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 108
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_7

    const-string v1, "HWAR"

    const-string v2, "Enabling HW AR."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 111
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 112
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/location/activity/z;->b:J

    invoke-virtual {v8, v7, v4, v0, v1}, Lcom/android/location/provider/ActivityRecognitionProvider;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v0

    .line 116
    const-string v1, "Enable result=%s, activity=%s, eventType=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_a

    const-string v2, "HWAR"

    invoke-static {v2, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 124
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    const-string v1, "ar"

    const-string v2, "hw_enable_activity_event"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_2

    .line 120
    :catch_1
    move-exception v0

    .line 121
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_b

    const-string v1, "HWAR"

    const-string v2, "Error on enable."

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :cond_b
    const-string v0, "RemoteException"

    move-object v3, v0

    goto :goto_3

    .line 131
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/location/activity/z;->c:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    iget-object v1, p0, Lcom/google/android/location/activity/z;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/location/os/at;->a(J)V

    goto/16 :goto_0
.end method
