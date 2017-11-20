.class final Lcom/google/android/location/collectionlib/dg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/df;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/df;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/df;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    monitor-exit v1

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v3, v0, Lcom/google/android/location/collectionlib/df;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v3, v0, Lcom/google/android/location/collectionlib/df;->h:Ljava/lang/Runnable;

    iget-wide v4, v0, Lcom/google/android/location/collectionlib/df;->g:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/df;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/df;->b:Lcom/google/android/location/d/l;

    invoke-interface {v0, v2}, Lcom/google/android/location/d/l;->a(Ljava/util/List;)V

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 63
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/location/collectionlib/ak;->a(Ljava/util/List;J)V

    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/dg;->a:Lcom/google/android/location/collectionlib/df;

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/location/collectionlib/df;->b(Lcom/google/android/location/collectionlib/cb;J)V

    .line 66
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
