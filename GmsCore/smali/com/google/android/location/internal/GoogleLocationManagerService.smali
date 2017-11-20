.class public Lcom/google/android/location/internal/GoogleLocationManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/internal/b;

.field private b:Lcom/google/android/location/internal/d;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/GoogleLocationManagerService;)Lcom/google/android/location/internal/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    const-string v0, "GLMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "GLMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generating binder for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    new-instance v0, Lcom/google/android/location/internal/e;

    iget-object v1, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    invoke-direct {v0, v1, p2}, Lcom/google/android/location/internal/e;-><init>(Lcom/google/android/location/internal/d;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/android/location/internal/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    const-string v0, "GLMS"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "GLMS"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/internal/GoogleLocationManagerService;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/GoogleLocationManagerService;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 45
    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.location.settings.ACTIVITY_RECOGNITION_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.location.settings.ActivityRecognitionPermissionActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x6

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/google/android/location/internal/d;->a(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "GLMS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GLMS"

    const-string v2, "App was not granted the activity recognition permission"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->c:Landroid/content/pm/PackageManager;

    invoke-static {p2, v0}, Lcom/google/android/location/internal/d;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GLMS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GLMS"

    const-string v2, "App should show the activity recognition permission dialog."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "GLMS"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GLMS"

    const-string v2, "App did not request activity recognition in its manifest"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GLMS"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GLMS"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 45
    const-string v0, "client_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "activity_recognition"

    const-string v1, "client_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/internal/GoogleLocationManagerService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    const-string v0, "\nGeofencer State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p2}, Lcom/google/android/location/geofencer/service/k;->b(Ljava/io/PrintWriter;)V

    const-string v0, "\nFused Location Provider State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/fused/g;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "\nPlaces State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    iget-object v0, v1, Lcom/google/android/location/places/ai;->h:Lcom/google/android/location/places/ae;

    iget-object v3, v0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v0, Lcom/google/android/location/places/ae;->d:Z

    if-nez v4, :cond_0

    const-string v0, "PlaceSubscriptionManager not yet initialized from cache"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, v1, Lcom/google/android/location/places/ai;->i:Lcom/google/android/location/places/n;

    invoke-virtual {v0, p2}, Lcom/google/android/location/places/n;->a(Ljava/io/PrintWriter;)V

    iget-object v3, v1, Lcom/google/android/location/places/ai;->j:Lcom/google/android/location/places/b/a;

    const-string v0, "\nNearbyPlaceFenceManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Geofences (geofenceId -> placeId):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/location/places/b/a;->c:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "   "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " -> "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v4, "\nActive PlaceSubscriptions:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/PlaceSubscription;

    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const-string v0, "  Refresh Geofences (geofenceId):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "   "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, v3, Lcom/google/android/location/places/b/a;->a:Lcom/google/android/location/places/b/m;

    invoke-virtual {v0, p2}, Lcom/google/android/location/places/b/m;->a(Ljava/io/PrintWriter;)V

    iget-object v0, v2, Lcom/google/android/location/internal/d;->e:Lcom/google/android/location/e/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/e/a/a;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, v2, Lcom/google/android/location/internal/d;->f:Lcom/google/android/gms/b/b/a;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/google/android/location/internal/d;->f:Lcom/google/android/gms/b/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/b/b/a;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 180
    :cond_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 150
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "GLMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "GLMS"

    const-string v1, "Location ServiceBroker created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/d;->a(Landroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->a:Lcom/google/android/location/internal/b;

    invoke-virtual {v0}, Lcom/google/android/location/internal/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->c:Landroid/content/pm/PackageManager;

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    new-instance v0, Lcom/google/android/location/internal/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/location/internal/b;-><init>(Lcom/google/android/location/internal/GoogleLocationManagerService;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->a:Lcom/google/android/location/internal/b;

    .line 103
    new-instance v0, Lcom/google/android/location/internal/d;

    invoke-virtual {p0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationServiceBroker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->d:Landroid/os/Handler;

    .line 124
    :goto_0
    new-instance v0, Lcom/google/android/location/internal/a;

    invoke-direct {v0, p0}, Lcom/google/android/location/internal/a;-><init>(Lcom/google/android/location/internal/GoogleLocationManagerService;)V

    iput-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->e:Landroid/content/BroadcastReceiver;

    .line 137
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/internal/GoogleLocationManagerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void

    .line 115
    :cond_0
    const-string v0, "GLMS"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "GLMS"

    const-string v1, "Unable to create looper. Running handler on main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->d:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 145
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 163
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/d;->a(Landroid/content/Intent;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    invoke-static {p1}, Lcom/google/android/location/b/af;->b(Landroid/content/Intent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v0, "GLMSImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown cache type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    const-string v0, "fromDeviceBoot"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    iget-object v0, v0, Lcom/google/android/location/internal/d;->e:Lcom/google/android/location/e/a/a;

    .line 88
    :cond_1
    const-string v0, "fromGmsCoreInit"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    const-string v3, "GLMSImpl"

    const-string v4, "onGmsCoreInit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/location/internal/d;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/i/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 92
    :cond_2
    return v1

    .line 75
    :pswitch_1
    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/g;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, v0, Lcom/google/android/location/internal/d;->c:Lcom/google/android/location/geofencer/service/g;

    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/android/location/b/af;->b(Landroid/content/Intent;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Z)V

    const-string v0, "GeofencerHelper"

    const-string v4, "Initializing geofence\'s system cache."

    invoke-static {v0, v4}, Lcom/google/android/location/geofencer/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/location/geofencer/service/g;->a:Lcom/google/android/location/geofencer/service/k;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :pswitch_3
    iget-object v0, v0, Lcom/google/android/location/internal/d;->d:Lcom/google/android/location/places/ai;

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    const-string v0, "Places"

    const/4 v4, 0x5

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown cahce type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, v0, Lcom/google/android/location/places/ai;->i:Lcom/google/android/location/places/n;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/n;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, v0, Lcom/google/android/location/places/ai;->h:Lcom/google/android/location/places/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ae;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 170
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/google/android/location/internal/GoogleLocationManagerService;->b:Lcom/google/android/location/internal/d;

    iget-object v1, v0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/d;->b(Landroid/content/Intent;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/google/android/location/internal/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/google/android/location/internal/d;->b:Lcom/google/android/location/fused/g;

    invoke-virtual {v0}, Lcom/google/android/location/fused/g;->b()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
