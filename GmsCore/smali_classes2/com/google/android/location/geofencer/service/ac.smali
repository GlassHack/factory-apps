.class public final Lcom/google/android/location/geofencer/service/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field final b:Lcom/google/android/location/geofencer/service/k;

.field final c:Ljava/lang/Object;

.field final d:Lcom/google/android/location/geofencer/service/ad;

.field final e:Lcom/google/android/location/geofencer/service/ae;

.field f:I

.field g:Ljava/util/Collection;

.field h:J

.field i:Z

.field private final j:Lcom/google/android/gms/common/util/i;

.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/location/geofencer/service/ah;

.field private final m:Landroid/app/AlarmManager;

.field private final n:Lcom/google/android/location/o/n;

.field private final o:I

.field private final p:Ljava/lang/String;

.field private q:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/geofencer/service/k;)V
    .locals 6

    .prologue
    .line 128
    new-instance v4, Lcom/google/android/location/geofencer/service/ah;

    invoke-direct {v4}, Lcom/google/android/location/geofencer/service/ah;-><init>()V

    new-instance v5, Lcom/google/android/location/o/n;

    invoke-direct {v5, p1}, Lcom/google/android/location/o/n;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/service/ac;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/ah;Lcom/google/android/location/o/n;)V

    .line 130
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/ah;Lcom/google/android/location/o/n;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/google/android/location/geofencer/service/ac;->a:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->c:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/android/location/geofencer/service/ad;

    invoke-direct {v0, p0}, Lcom/google/android/location/geofencer/service/ad;-><init>(Lcom/google/android/location/geofencer/service/ac;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->d:Lcom/google/android/location/geofencer/service/ad;

    .line 99
    new-instance v0, Lcom/google/android/location/geofencer/service/ae;

    invoke-direct {v0, p0}, Lcom/google/android/location/geofencer/service/ae;-><init>(Lcom/google/android/location/geofencer/service/ac;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->e:Lcom/google/android/location/geofencer/service/ae;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->g:Ljava/util/Collection;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/geofencer/service/ac;->h:J

    .line 122
    iput-boolean v2, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    .line 136
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ac;->k:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/ac;->j:Lcom/google/android/gms/common/util/i;

    .line 138
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/ac;->b:Lcom/google/android/location/geofencer/service/k;

    .line 139
    iput-object p4, p0, Lcom/google/android/location/geofencer/service/ac;->l:Lcom/google/android/location/geofencer/service/ah;

    .line 140
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->m:Landroid/app/AlarmManager;

    .line 141
    iput-object p5, p0, Lcom/google/android/location/geofencer/service/ac;->n:Lcom/google/android/location/o/n;

    .line 143
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->n:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->a()V

    .line 149
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->e:Lcom/google/android/location/geofencer/service/ae;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.location.intent.action.END_LOCATION_BURST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/google/android/location/geofencer/service/ac;->o:I

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->p:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "LocationDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "LocationDetector"

    const-string v1, "cancelLocationUpdate"

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    .line 291
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/ac;->a(Z)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->n:Lcom/google/android/location/o/n;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ac;->d:Lcom/google/android/location/geofencer/service/ad;

    invoke-virtual {v0, v2}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/l;)V

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(IZLjava/util/Collection;)V
    .locals 12

    .prologue
    const/16 v3, 0x3c

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    if-lez p1, :cond_7

    move v0, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location update interval should be positive: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 166
    if-nez p3, :cond_1

    .line 167
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "LocationDetector"

    const-string v4, "Blaming ourself for location updates."

    invoke-static {v0, v4}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v4, p0, Lcom/google/android/location/geofencer/service/ac;->o:I

    iget-object v5, p0, Lcom/google/android/location/geofencer/service/ac;->p:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/geofencer/service/ac;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->j:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v6

    .line 174
    if-lt p1, v3, :cond_8

    move v0, p1

    .line 180
    :goto_1
    if-nez p2, :cond_2

    iget v5, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x4

    if-gt v5, v8, :cond_2

    iget-object v5, p0, Lcom/google/android/location/geofencer/service/ac;->g:Ljava/util/Collection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/location/geofencer/service/ac;->g:Ljava/util/Collection;

    invoke-interface {v5, p3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 183
    :cond_2
    const-string v5, "LocationDetector"

    const/4 v8, 0x3

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    const-string v5, "LocationDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "requestLocation: intervalSec="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", trigger="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", acceptedIntervalSec="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " clients="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_3
    iput v0, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    .line 189
    if-ge v0, v3, :cond_e

    iget-boolean v5, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-nez v5, :cond_e

    .line 190
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "LocationDetector"

    const-string v3, "Starting location bursts."

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-nez v0, :cond_d

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    iput-wide v6, p0, Lcom/google/android/location/geofencer/service/ac;->h:J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.location.intent.action.END_LOCATION_BURST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->l:Lcom/google/android/location/geofencer/service/ah;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->k:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->m:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-wide/32 v2, 0x2bf20

    add-long/2addr v2, v6

    iget-object v5, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 196
    :cond_5
    :goto_4
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/ac;->g:Ljava/util/Collection;

    .line 197
    iget v0, p0, Lcom/google/android/location/geofencer/service/ac;->f:I

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    int-to-long v2, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x66

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    const-string v0, "geofencing"

    invoke-static {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->n:Lcom/google/android/location/o/n;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/ac;->d:Lcom/google/android/location/geofencer/service/ad;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    .line 203
    :cond_6
    :goto_5
    monitor-exit v4

    return-void

    :cond_7
    move v0, v2

    .line 164
    goto/16 :goto_0

    .line 174
    :cond_8
    iget-wide v8, p0, Lcom/google/android/location/geofencer/service/ac;->h:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_9

    iget-wide v8, p0, Lcom/google/android/location/geofencer/service/ac;->h:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x116520

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-eqz v0, :cond_a

    :cond_9
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    :cond_a
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "LocationDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Rejected location bursts. intervalSec="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mLastBurstStartTimeMillis="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/google/android/location/geofencer/service/ac;->h:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", now="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 190
    goto/16 :goto_2

    :cond_d
    move v1, v2

    goto/16 :goto_3

    .line 191
    :cond_e
    if-lt v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-eqz v0, :cond_5

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/ac;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 198
    :cond_f
    :try_start_1
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_6

    .line 199
    const-string v1, "LocationDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring requestLocation: intervalSec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", trigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", acceptedIntervalSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", clients="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method final a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    .line 270
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    .line 271
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "LocationDetector"

    const-string v2, "Ending location bursts."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    .line 275
    if-eqz p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->m:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 278
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/ac;->q:Landroid/app/PendingIntent;

    .line 279
    return-void

    :cond_2
    move v0, v1

    .line 269
    goto :goto_0
.end method
