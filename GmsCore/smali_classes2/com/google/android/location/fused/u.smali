.class final Lcom/google/android/location/fused/u;
.super Lcom/google/android/gms/location/i;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Landroid/app/PendingIntent;

.field private final e:Landroid/os/PowerManager$WakeLock;

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/Collection;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1339
    iput-object p1, p0, Lcom/google/android/location/fused/u;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Lcom/google/android/gms/location/i;-><init>()V

    .line 1340
    iput-object p2, p0, Lcom/google/android/location/fused/u;->b:Landroid/content/Context;

    .line 1341
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/u;->c:Landroid/content/pm/PackageManager;

    .line 1342
    iput-object p3, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    .line 1343
    iput-boolean p5, p0, Lcom/google/android/location/fused/u;->f:Z

    .line 1345
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1347
    const-string v1, "GCoreFlp"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    .line 1348
    iget-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/location/fused/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    invoke-static {p4}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1352
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1358
    iget-object v0, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/location/fused/u;->c:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/google/android/location/o/ad;->a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 1360
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/fused/u;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1362
    :cond_0
    const-string v0, "GCoreFlp"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    const-string v0, "Package %s permissions were downgraded, not reporting location"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/u;->a:Lcom/google/android/location/fused/g;

    iget-object v1, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    .line 1388
    :goto_0
    return-void

    .line 1373
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1374
    const-string v0, "com.google.android.location.LOCATION"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1376
    iget-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/location/fused/u;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1380
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1381
    const-string v0, "GCoreFlp"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1382
    const-string v0, "Package %s canceled PendingIntent, removing"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1386
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/u;->a:Lcom/google/android/location/fused/g;

    iget-object v1, p0, Lcom/google/android/location/fused/u;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/g;->b(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/android/location/fused/u;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1394
    return-void
.end method
