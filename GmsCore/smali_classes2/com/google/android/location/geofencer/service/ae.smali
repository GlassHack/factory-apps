.class final Lcom/google/android/location/geofencer/service/ae;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/ac;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/ac;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 350
    const-string v0, "com.google.android.location.intent.action.END_LOCATION_BURST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/ac;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    iget-boolean v0, v0, Lcom/google/android/location/geofencer/service/ac;->i:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/location/geofencer/service/ac;->a(Z)V

    .line 356
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/ae;->a:Lcom/google/android/location/geofencer/service/ac;

    iget-object v4, v4, Lcom/google/android/location/geofencer/service/ac;->g:Ljava/util/Collection;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/location/geofencer/service/ac;->a(IZLjava/util/Collection;)V

    .line 359
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
