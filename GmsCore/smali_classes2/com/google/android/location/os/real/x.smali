.class final Lcom/google/android/location/os/real/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Z

.field private final B:Lcom/google/android/location/f/ag;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field final n:Landroid/content/Context;

.field final o:Lcom/google/android/location/os/e;

.field final p:Lcom/google/android/location/os/real/ac;

.field final q:Lcom/google/android/location/os/real/ac;

.field final r:Lcom/google/android/location/os/real/ad;

.field final s:Lcom/google/android/location/os/real/aa;

.field t:Ljava/lang/Thread;

.field final u:Lcom/google/android/location/collectionlib/cy;

.field final v:Lcom/google/android/location/os/real/aw;

.field final w:Ljava/lang/Object;

.field x:Z

.field y:Landroid/os/Handler;

.field z:Lcom/google/android/location/os/real/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/real/aw;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/e;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->w:Ljava/lang/Object;

    .line 179
    iput-boolean v1, p0, Lcom/google/android/location/os/real/x;->x:Z

    .line 183
    iput-boolean v1, p0, Lcom/google/android/location/os/real/x;->A:Z

    .line 1046
    iput-object p1, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    .line 1047
    iput-object p2, p0, Lcom/google/android/location/os/real/x;->v:Lcom/google/android/location/os/real/aw;

    .line 1048
    iput-object p3, p0, Lcom/google/android/location/os/real/x;->B:Lcom/google/android/location/f/ag;

    .line 1049
    iput-object p4, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nlp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->a:Ljava/lang/String;

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->b:Ljava/lang/String;

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->c:Ljava/lang/String;

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->d:Ljava/lang/String;

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_CACHE_UPDATER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->e:Ljava/lang/String;

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_CALIBRATION_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->f:Ljava/lang/String;

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_S_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->g:Ljava/lang/String;

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_SENSOR_UPLOADER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->h:Ljava/lang/String;

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_ACTIVITY_DETECTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->i:Ljava/lang/String;

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_IN_OUT_DOOR_COLLECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->j:Ljava/lang/String;

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_BURST_COLLECTION_TRIGGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->k:Ljava/lang/String;

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ALARM_WAKEUP_CAR_PARKING_DETECTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->l:Ljava/lang/String;

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ALARM_WAKEUP_OFF_BODY_DETECTOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->m:Ljava/lang/String;

    .line 1071
    new-instance v0, Lcom/google/android/location/os/real/ac;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/ac;-><init>(Lcom/google/android/location/os/real/x;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->p:Lcom/google/android/location/os/real/ac;

    .line 1072
    new-instance v0, Lcom/google/android/location/os/real/ac;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/ac;-><init>(Lcom/google/android/location/os/real/x;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->q:Lcom/google/android/location/os/real/ac;

    .line 1073
    new-instance v0, Lcom/google/android/location/os/real/ad;

    invoke-direct {v0, p0}, Lcom/google/android/location/os/real/ad;-><init>(Lcom/google/android/location/os/real/x;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/x;->r:Lcom/google/android/location/os/real/ad;

    .line 1074
    new-instance v1, Lcom/google/android/location/os/real/aa;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, v0}, Lcom/google/android/location/os/real/aa;-><init>(Landroid/location/LocationManager;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->s:Lcom/google/android/location/os/real/aa;

    .line 1077
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1080
    new-instance v1, Lcom/google/android/location/collectionlib/cy;

    const-string v2, "NetworkLocationCallbackRunner"

    sget-object v3, Lcom/google/android/location/collectionlib/cy;->b:[S

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[S)V

    iput-object v1, p0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    .line 1082
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/x;Lcom/google/android/location/os/a;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/location/os/real/be;->a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->c(Z)V

    invoke-interface {p1, v0, v3}, Lcom/google/android/location/os/a;->a(ZZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->b(Z)V

    invoke-interface {p1, v1}, Lcom/google/android/location/os/a;->a(Z)V

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/be;->a(Landroid/os/PowerManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->d(Z)V

    invoke-interface {p1, v0}, Lcom/google/android/location/os/a;->c(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/x;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->a(Z)V

    invoke-interface {p1, v0}, Lcom/google/android/location/os/a;->e(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/location/os/real/x;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/google/android/location/os/a;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->B:Lcom/google/android/location/f/ag;

    invoke-interface {p1, v0}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/f/ag;)V

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/os/real/be;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/location/os/a;->a()V

    :goto_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/location/os/real/x;->a(Landroid/os/Bundle;Lcom/google/android/location/os/a;)V

    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/google/android/location/os/a;->b()V

    goto :goto_2
.end method

.method static a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .prologue
    .line 1110
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    return-void

    .line 1114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1377
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1378
    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/google/android/location/os/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 713
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_2

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v4, v4, v1}, Lcom/google/android/location/os/e;->a(ZZI)V

    .line 717
    invoke-interface {p3, v4, v4, v1}, Lcom/google/android/location/os/a;->a(ZZI)V

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 718
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 720
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/location/os/e;->a(ZZI)V

    .line 721
    invoke-interface {p3, v4, v5, v1}, Lcom/google/android/location/os/a;->a(ZZI)V

    goto :goto_0

    .line 722
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 724
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 725
    iget-object v3, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    if-nez v2, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/location/os/e;->a(ZZI)V

    .line 726
    if-nez v2, :cond_5

    :goto_2
    invoke-interface {p3, v5, v4, v1}, Lcom/google/android/location/os/a;->a(ZZI)V

    goto :goto_0

    .line 725
    :cond_4
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    goto :goto_1

    .line 726
    :cond_5
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    goto :goto_2

    .line 727
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 730
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/location/os/e;->a(ZZI)V

    .line 731
    invoke-interface {p3, v4, v5, v1}, Lcom/google/android/location/os/a;->a(ZZI)V

    goto :goto_0
.end method

.method final a(Landroid/os/Bundle;Lcom/google/android/location/os/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 660
    if-nez p1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 664
    const-string v0, "level"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 665
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/z;

    sget-object v3, Lcom/google/android/location/os/c;->f:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/location/os/z;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIIZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 667
    invoke-interface {p2, v6, v7, v8}, Lcom/google/android/location/os/a;->a(IIZ)V

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 1219
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 1220
    return-void
.end method

.method public final a(IILjava/lang/Object;Z)Z
    .locals 3

    .prologue
    .line 1406
    iget-object v1, p0, Lcom/google/android/location/os/real/x;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/os/real/x;->x:Z

    if-eqz v0, :cond_1

    .line 1410
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 1421
    :goto_0
    return v0

    .line 1412
    :cond_1
    const/16 v0, 0x2156

    .line 1415
    if-eqz p4, :cond_2

    .line 1416
    iget-object v0, p0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 1417
    const/16 v0, 0x10e1

    .line 1420
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/os/real/x;->y:Landroid/os/Handler;

    invoke-static {v2, p1, p2, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1421
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(IIZ)Z
    .locals 1

    .prologue
    .line 1398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/location/os/real/x;->a(IILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method final a(ILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/location/os/real/x;->a(IILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 1359
    const/16 v0, 0x27

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 1228
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 1229
    return-void
.end method
