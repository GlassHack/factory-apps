.class public final Lcom/google/android/location/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/common/util/i;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field final g:Lcom/google/android/location/i/b;

.field public final h:Lcom/google/android/location/i/d;

.field public final i:Ljava/lang/Object;

.field public j:Lcom/google/android/location/o/ae;

.field public k:I

.field public l:Ljava/util/Collection;

.field private final m:Lcom/google/android/location/geofencer/service/ah;

.field private final n:Lcom/google/android/location/i/f;

.field private final o:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/i/c;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/i/f;Lcom/google/android/location/geofencer/service/ah;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/google/android/location/i/a;->a:Z

    .line 105
    new-instance v0, Lcom/google/android/location/i/b;

    invoke-direct {v0, p0}, Lcom/google/android/location/i/b;-><init>(Lcom/google/android/location/i/a;)V

    iput-object v0, p0, Lcom/google/android/location/i/a;->g:Lcom/google/android/location/i/b;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/i/a;->k:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    .line 138
    iput-object p1, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    .line 139
    iput-object p3, p0, Lcom/google/android/location/i/a;->c:Lcom/google/android/gms/common/util/i;

    .line 140
    iput-object p4, p0, Lcom/google/android/location/i/a;->n:Lcom/google/android/location/i/f;

    .line 141
    new-instance v0, Lcom/google/android/location/i/d;

    iget-object v1, p0, Lcom/google/android/location/i/a;->n:Lcom/google/android/location/i/f;

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/location/i/d;-><init>(Lcom/google/android/location/i/c;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/i/f;)V

    iput-object v0, p0, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    .line 142
    iput-object p5, p0, Lcom/google/android/location/i/a;->m:Lcom/google/android/location/geofencer/service/ah;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/google/android/location/i/a;->d:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/i/a;->e:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/google/android/location/i/a;->f:Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/internal/PendingIntentCallbackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/google/android/location/i/a;->m:Lcom/google/android/location/geofencer/service/ah;

    iget-object v1, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/i/a;->g:Lcom/google/android/location/i/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-static {p1}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/android/location/i/a;->g:Lcom/google/android/location/i/b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.location.internal.action.GEOFENCER_AR_RESULT"

    invoke-static {v3}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 174
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/location/clientlib/e;->b:Lcom/google/android/location/clientlib/e;

    invoke-static {v1}, Lcom/google/android/location/clientlib/c;->a(Lcom/google/android/location/clientlib/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_REMOVE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 359
    iget-object v1, p0, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    const-string v0, "ActivityDetector"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "ActivityDetector"

    const-string v2, "cancelActivityDetection"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget v0, p0, Lcom/google/android/location/i/a;->k:I

    if-eq v0, v3, :cond_1

    .line 364
    iget-object v0, p0, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/location/i/d;->a(Z)V

    .line 365
    iget-object v0, p0, Lcom/google/android/location/i/a;->n:Lcom/google/android/location/i/f;

    invoke-interface {v0}, Lcom/google/android/location/i/f;->a()V

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/i/a;->k:I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, Lcom/google/android/location/i/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 372
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(IZLjava/util/Collection;)V
    .locals 7

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/google/android/location/i/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 334
    :cond_0
    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    .line 335
    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v5, p0, Lcom/google/android/location/i/a;->o:Landroid/app/PendingIntent;

    const-string v6, "movement.ActivityDetector"

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    .line 337
    invoke-static {p3}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    .line 338
    iget-object v0, p0, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 339
    const-string v0, "ActivityDetector"

    const-string v1, "Unable to bind to GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    return-void
.end method
