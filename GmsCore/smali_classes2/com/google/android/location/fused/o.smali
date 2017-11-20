.class final Lcom/google/android/location/fused/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/o/ag;

.field final synthetic b:Lcom/google/android/location/fused/g;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/app/AlarmManager;

.field private final e:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/g;Landroid/content/Context;Landroid/app/AlarmManager;Landroid/os/Looper;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1420
    iput-object p1, p0, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    new-instance v1, Lcom/google/android/location/fused/p;

    invoke-direct {v1, p0, p4, p1}, Lcom/google/android/location/fused/p;-><init>(Lcom/google/android/location/fused/o;Landroid/os/Looper;Lcom/google/android/location/fused/g;)V

    .line 1465
    iput-object p3, p0, Lcom/google/android/location/fused/o;->d:Landroid/app/AlarmManager;

    .line 1468
    new-instance v0, Lcom/google/android/location/fused/q;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/fused/q;-><init>(Lcom/google/android/location/fused/o;Lcom/google/android/location/fused/g;)V

    .line 1484
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1485
    const-string v3, "com.google.android.gms.flp.EXPIRATION_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1486
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1492
    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.flp.EXPIRATION_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {p2, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/o;->c:Landroid/app/PendingIntent;

    .line 1498
    invoke-static {p1}, Lcom/google/android/location/fused/g;->i(Lcom/google/android/location/fused/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1500
    const-string v2, "GCoreFlp"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/o;->e:Landroid/os/PowerManager$WakeLock;

    .line 1501
    iget-object v0, p0, Lcom/google/android/location/fused/o;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1502
    new-instance v0, Lcom/google/android/location/o/ag;

    iget-object v2, p0, Lcom/google/android/location/fused/o;->e:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v2, v1}, Lcom/google/android/location/o/ag;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    .line 1503
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/fused/o;)V
    .locals 12

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x64

    const/4 v8, 0x3

    .line 1397
    iget-object v0, p0, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->c(Lcom/google/android/location/fused/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    iget-object v0, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->f()J

    move-result-wide v0

    cmp-long v7, v0, v2

    if-gez v7, :cond_3

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/o;->d:Landroid/app/AlarmManager;

    add-long/2addr v2, v10

    iget-object v1, p0, Lcom/google/android/location/fused/o;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/o;->d:Landroid/app/AlarmManager;

    add-long/2addr v2, v10

    iget-object v1, p0, Lcom/google/android/location/fused/o;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/o;->d:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/fused/o;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1509
    iget-object v0, p0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 1510
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1545
    new-instance v0, Lcom/google/android/location/fused/s;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/google/android/location/fused/s;-><init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLandroid/app/PendingIntent;I)V

    .line 1550
    iget-object v1, p0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 1551
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;ZILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1528
    new-instance v0, Lcom/google/android/location/fused/s;

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/fused/s;-><init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;ZLcom/google/android/gms/location/h;ILjava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    invoke-virtual {v1, v6, v6, v6, v0}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 1535
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/android/location/fused/o;->a:Lcom/google/android/location/o/ag;

    invoke-virtual {v0, p1}, Lcom/google/android/location/o/ag;->a(Ljava/lang/Runnable;)V

    .line 1569
    return-void
.end method
