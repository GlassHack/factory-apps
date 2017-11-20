.class final Lcom/google/android/location/os/real/ab;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/x;

.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/net/ConnectivityManager;

.field private final d:Landroid/net/wifi/WifiManager;

.field private final e:Landroid/os/PowerManager;

.field private f:I

.field private g:Lcom/google/android/location/f/g;

.field private h:Lcom/google/android/location/u;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/x;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    .line 200
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->b:Landroid/telephony/TelephonyManager;

    .line 189
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->c:Landroid/net/ConnectivityManager;

    .line 191
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->d:Landroid/net/wifi/WifiManager;

    .line 193
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->e:Landroid/os/PowerManager;

    .line 195
    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/ab;->f:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/x;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/os/real/ab;-><init>(Lcom/google/android/location/os/real/x;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x10e1

    if-ne v2, v3, :cond_0

    move v11, v0

    .line 219
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x2156

    if-ne v2, v3, :cond_1

    move v11, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No wakelock mode specified for command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_1
    new-instance v0, Lcom/google/android/location/u;

    new-instance v2, Lcom/google/android/location/k;

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->v:Lcom/google/android/location/os/real/aw;

    invoke-direct {v2, v3}, Lcom/google/android/location/k;-><init>(Lcom/google/android/location/os/at;)V

    invoke-direct {v0, v2}, Lcom/google/android/location/u;-><init>(Lcom/google/android/location/k;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.wearable.app.intent.action.DEEP_AMBIENT_MODE_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.google.android.wearable.app.intent.action.DEEP_AMBIENT_MODE_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->w:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v3, v3, Lcom/google/android/location/os/real/x;->x:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    new-instance v4, Lcom/google/android/location/os/real/z;

    iget-object v5, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/location/os/real/z;-><init>(Lcom/google/android/location/os/real/x;B)V

    iput-object v4, v3, Lcom/google/android/location/os/real/x;->z:Lcom/google/android/location/os/real/z;

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v3, v3, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->z:Lcom/google/android/location/os/real/z;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->r:Lcom/google/android/location/os/real/ad;

    const/16 v3, 0x550

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->s:Lcom/google/android/location/os/real/aa;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const-string v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v3, "passive"

    iget-object v4, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->p:Lcom/google/android/location/os/real/ac;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/location/os/real/be;->a(Landroid/content/Context;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v2, Lcom/google/android/location/os/c;->a:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0}, Lcom/google/android/location/u;->d()V

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-static {v0, v2, v1}, Lcom/google/android/location/os/real/x;->a(Lcom/google/android/location/os/real/x;Lcom/google/android/location/os/a;Z)V

    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 224
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "CallbackRunner, CallbacksDispatcher and ActivityProvider initialized."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 578
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 580
    :cond_5
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 228
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v3, Lcom/google/android/location/os/c;->b:Lcom/google/android/location/os/c;

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 229
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/location/u;->d(Z)V

    .line 230
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->b:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->r:Lcom/google/android/location/os/real/ad;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 233
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v1, v1, Lcom/google/android/location/os/real/x;->A:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->q:Lcom/google/android/location/os/real/ac;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->s:Lcom/google/android/location/os/real/aa;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 236
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_6

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "Wake lock is held after the callback runner quit."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_6
    sget-boolean v0, Lcom/google/android/location/j/a;->a:Z

    if-eqz v0, :cond_9

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wake lock is still held. Check for program errors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    .line 229
    goto :goto_2

    .line 233
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->p:Lcom/google/android/location/os/real/ac;

    goto :goto_3

    .line 244
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    goto :goto_4

    .line 249
    :cond_a
    iput-object v6, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    goto/16 :goto_1

    .line 253
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v2}, Lcom/google/android/location/u;->f()Z

    move-result v2

    .line 254
    if-eqz v2, :cond_e

    .line 255
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v3, Lcom/google/android/location/os/c;->u:Lcom/google/android/location/os/c;

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 256
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    :goto_5
    invoke-virtual {v2, v0}, Lcom/google/android/location/u;->g(Z)V

    .line 257
    sget-boolean v0, Lcom/google/android/location/j/a;->a:Z

    if-eqz v0, :cond_c

    .line 258
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/x;->A:Z

    if-eqz v0, :cond_d

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopping NetworkProvider when GPS is left on."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v1

    .line 256
    goto :goto_5

    .line 262
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/x;->A:Z

    if-eqz v0, :cond_d

    .line 263
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_d

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "Stopping NetworkProvider when GPS is left on."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_d
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "NetworkProvider quit."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 273
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->m:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->b(Lcom/google/g/a/b/b/a;)V

    goto/16 :goto_1

    .line 278
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/google/android/location/os/real/af;

    .line 279
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    iget v6, v10, Lcom/google/android/location/os/real/af;->a:I

    iget v7, v10, Lcom/google/android/location/os/real/af;->b:I

    iget v8, v10, Lcom/google/android/location/os/real/af;->c:I

    iget-boolean v9, v10, Lcom/google/android/location/os/real/af;->d:Z

    new-instance v1, Lcom/google/android/location/os/f;

    sget-object v3, Lcom/google/android/location/os/c;->c:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/os/f;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIIIZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget v1, v10, Lcom/google/android/location/os/real/af;->a:I

    iget v2, v10, Lcom/google/android/location/os/real/af;->b:I

    iget v3, v10, Lcom/google/android/location/os/real/af;->c:I

    iget-boolean v4, v10, Lcom/google/android/location/os/real/af;->d:Z

    iget-object v5, v10, Lcom/google/android/location/os/real/af;->e:Lcom/google/android/location/p/j;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/u;->a(IIIZLcom/google/android/location/p/j;)V

    goto/16 :goto_1

    .line 286
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_f

    .line 287
    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/ab;->f:I

    .line 290
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 292
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/location/os/real/ab;->b:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/google/android/location/os/real/ab;->f:I

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/google/android/location/os/real/be;->a(Landroid/telephony/TelephonyManager;IJ)[Lcom/google/android/location/f/g;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_10

    array-length v2, v0

    if-nez v2, :cond_11

    .line 301
    :cond_10
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v6}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/f/g;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0, v6}, Lcom/google/android/location/u;->a(Lcom/google/android/location/f/g;)V

    .line 303
    iput-object v6, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    goto/16 :goto_1

    .line 306
    :cond_11
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 307
    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    .line 308
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/f/g;)V

    .line 309
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    invoke-virtual {v2, v3}, Lcom/google/android/location/u;->a(Lcom/google/android/location/f/g;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 315
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 318
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    instance-of v1, v1, Lcom/google/android/location/f/l;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    instance-of v1, v1, Lcom/google/android/location/f/d;

    if-eqz v1, :cond_4

    .line 320
    :cond_12
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 321
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/ab;->f:I

    .line 325
    :goto_7
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    iget v6, p0, Lcom/google/android/location/os/real/ab;->f:I

    new-instance v1, Lcom/google/android/location/os/ab;

    sget-object v3, Lcom/google/android/location/os/c;->h:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/ab;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/location/os/real/ab;->f:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/location/f/g;->a(JI)Lcom/google/android/location/f/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    .line 328
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->g:Lcom/google/android/location/f/g;

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/f/g;)V

    goto/16 :goto_1

    .line 323
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/os/real/ab;->f:I

    goto :goto_7

    .line 333
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 334
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 338
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->a(I)V

    .line 339
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-static {v0}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 343
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v4}, Lcom/google/android/location/os/e;->a(I)V

    .line 344
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-static {v4}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 348
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v5}, Lcom/google/android/location/os/e;->a(I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-static {v5}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 353
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 354
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 358
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 359
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 363
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 364
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 368
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 373
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 374
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 378
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 383
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 384
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 388
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 393
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(I)V

    .line 394
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/location/k/k;->a(I)Lcom/google/android/location/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;)V

    goto/16 :goto_1

    .line 398
    :pswitch_15
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_14

    .line 399
    :goto_8
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->b(Z)V

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 398
    goto :goto_8

    .line 403
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/x;->A:Z

    if-nez v0, :cond_4

    .line 405
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 406
    new-instance v2, Lcom/google/android/location/os/real/av;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->s:Lcom/google/android/location/os/real/aa;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/aa;->a()I

    move-result v0

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/google/android/location/os/real/av;-><init>(Landroid/location/Location;JI)V

    .line 408
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/ah;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0, v2}, Lcom/google/android/location/u;->a(Lcom/google/android/location/os/ah;)V

    goto/16 :goto_1

    .line 414
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/x;->A:Z

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 417
    new-instance v2, Lcom/google/android/location/os/real/av;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->s:Lcom/google/android/location/os/real/aa;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/aa;->a()I

    move-result v0

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/google/android/location/os/real/av;-><init>(Landroid/location/Location;JI)V

    .line 419
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/ah;)V

    .line 420
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0, v2}, Lcom/google/android/location/u;->a(Lcom/google/android/location/os/ah;)V

    goto/16 :goto_1

    .line 425
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/os/real/ag;

    .line 426
    iget-object v7, v0, Lcom/google/android/location/os/real/ag;->a:[Lcom/google/android/location/f/bh;

    .line 428
    if-eqz v7, :cond_15

    array-length v2, v7

    if-lez v2, :cond_15

    .line 429
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    aget-object v6, v7, v1

    new-instance v1, Lcom/google/android/location/os/h;

    sget-object v3, Lcom/google/android/location/os/c;->r:Lcom/google/android/location/os/c;

    iget-object v4, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v4}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/h;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/f/bh;)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 432
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/ag;->b:Z

    invoke-virtual {v1, v7, v0}, Lcom/google/android/location/u;->a([Lcom/google/android/location/f/bh;Z)V

    goto/16 :goto_1

    .line 436
    :pswitch_19
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    move v2, v0

    .line 437
    :goto_9
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    .line 438
    :goto_a
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v2}, Lcom/google/android/location/os/e;->c(Z)V

    .line 439
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/location/u;->a(ZZ)V

    goto/16 :goto_1

    :cond_16
    move v2, v1

    .line 436
    goto :goto_9

    :cond_17
    move v0, v1

    .line 437
    goto :goto_a

    .line 443
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 444
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/location/os/real/x;->a(Landroid/os/Bundle;Lcom/google/android/location/os/a;)V

    goto/16 :goto_1

    .line 448
    :pswitch_1b
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_18

    .line 449
    :goto_b
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->b(Z)V

    .line 450
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Z)V

    goto/16 :goto_1

    :cond_18
    move v0, v1

    .line 448
    goto :goto_b

    .line 454
    :pswitch_1c
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_19

    .line 455
    :goto_c
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->a(Z)V

    .line 456
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->e(Z)V

    goto/16 :goto_1

    :cond_19
    move v0, v1

    .line 454
    goto :goto_c

    .line 460
    :pswitch_1d
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1a

    move v6, v0

    .line 461
    :goto_d
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/ac;

    sget-object v3, Lcom/google/android/location/os/c;->i:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/ac;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 462
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0, v6}, Lcom/google/android/location/u;->f(Z)V

    goto/16 :goto_1

    :cond_1a
    move v6, v1

    .line 460
    goto :goto_d

    .line 466
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->j:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 467
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/g/a/b/b/a;)V

    goto/16 :goto_1

    .line 472
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->d:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/google/android/location/os/a;)V

    goto/16 :goto_1

    .line 476
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->p:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 477
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ag;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/location/f/ag;)V

    goto/16 :goto_1

    .line 481
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/activity/bj;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/location/activity/bj;)V

    goto/16 :goto_1

    .line 486
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 487
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/k/k;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/location/u;->a(Lcom/google/android/location/k/k;J)V

    goto/16 :goto_1

    .line 491
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto/16 :goto_1

    .line 495
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/android/location/os/real/y;

    .line 496
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget v1, v6, Lcom/google/android/location/os/real/y;->a:I

    iget v2, v6, Lcom/google/android/location/os/real/y;->b:I

    iget-boolean v3, v6, Lcom/google/android/location/os/real/y;->c:Z

    iget-boolean v4, v6, Lcom/google/android/location/os/real/y;->d:Z

    iget-boolean v5, v6, Lcom/google/android/location/os/real/y;->e:Z

    iget-object v6, v6, Lcom/google/android/location/os/real/y;->f:Lcom/google/android/location/p/j;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/u;->a(IIZZZLcom/google/android/location/p/j;)V

    goto/16 :goto_1

    .line 503
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 504
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/location/u;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 510
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/os/av;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 514
    :pswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 515
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 519
    :pswitch_28
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0}, Lcom/google/android/location/u;->a()V

    goto/16 :goto_1

    .line 523
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0}, Lcom/google/android/location/u;->b()V

    goto/16 :goto_1

    .line 527
    :pswitch_2a
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    sget-object v3, Lcom/google/android/location/os/c;->t:Lcom/google/android/location/os/c;

    invoke-virtual {v2, v3}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 529
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v2}, Lcom/google/android/location/u;->f()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 533
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 534
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_1d

    move v2, v0

    .line 535
    :goto_e
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1b

    move v1, v0

    .line 536
    :cond_1b
    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v4, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->v:Lcom/google/android/location/os/real/aw;

    iget-object v5, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v5, v5, Lcom/google/android/location/os/real/x;->v:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v5}, Lcom/google/android/location/os/real/aw;->a()Lcom/google/android/location/f/ag;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/location/u;->a(Lcom/google/android/location/os/at;Lcom/google/android/location/f/ag;Z)Lcom/google/android/location/ap;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_1c

    .line 544
    iget-object v3, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    invoke-static {v3, v2, v0}, Lcom/google/android/location/os/real/x;->a(Lcom/google/android/location/os/real/x;Lcom/google/android/location/os/a;Z)V

    .line 545
    invoke-virtual {v2, v1}, Lcom/google/android/location/ap;->f(Z)V

    .line 548
    :cond_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 549
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "NetworkProvider initialized."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    move v2, v1

    .line 534
    goto :goto_e

    .line 554
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 555
    iget-object v2, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v1, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Lcom/google/android/location/u;->g()V

    iget-object v2, v2, Lcom/google/android/location/u;->a:Lcom/google/android/location/k;

    iget-object v3, v2, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    if-eqz v3, :cond_1e

    iget-object v3, v2, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    const-string v4, "####VehicleExitDetectorStats Start"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/location/activity/bk;->c:Lcom/google/android/location/activity/br;

    const-string v5, "\n"

    iget-object v3, v3, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/google/android/location/activity/br;->a(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    const-string v3, "####VehicleExitDetectorStats End"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    iget-object v3, v2, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v3, :cond_1f

    iget-object v2, v2, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    invoke-virtual {v2, v1}, Lcom/google/android/location/activity/an;->a(Ljava/io/PrintWriter;)V

    .line 556
    :cond_1f
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 560
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/bg;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->a(Lcom/google/android/location/f/bg;)V

    goto/16 :goto_1

    .line 564
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v0}, Lcom/google/android/location/u;->e()V

    goto/16 :goto_1

    .line 568
    :pswitch_2e
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->e:Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/be;->a(Landroid/os/PowerManager;)Z

    move-result v0

    .line 569
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->a:Lcom/google/android/location/os/real/x;

    iget-object v1, v1, Lcom/google/android/location/os/real/x;->o:Lcom/google/android/location/os/e;

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/e;->d(Z)V

    .line 570
    iget-object v1, p0, Lcom/google/android/location/os/real/ab;->h:Lcom/google/android/location/u;

    invoke-virtual {v1, v0}, Lcom/google/android/location/u;->c(Z)V

    goto/16 :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_17
        :pswitch_1b
        :pswitch_4
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_21
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_22
        :pswitch_1
        :pswitch_2a
        :pswitch_3
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method
