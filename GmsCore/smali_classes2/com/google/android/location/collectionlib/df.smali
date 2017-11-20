.class final Lcom/google/android/location/collectionlib/df;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"


# instance fields
.field final a:Landroid/net/wifi/WifiManager;

.field final b:Lcom/google/android/location/d/l;

.field final g:J

.field h:Ljava/lang/Runnable;

.field private final i:Landroid/content/Context;

.field private j:Landroid/net/wifi/WifiManager$WifiLock;

.field private final k:Landroid/content/BroadcastReceiver;

.field private volatile l:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/d/l;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;J)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 41
    new-instance v0, Lcom/google/android/location/collectionlib/dg;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/dg;-><init>(Lcom/google/android/location/collectionlib/df;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/df;->k:Landroid/content/BroadcastReceiver;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/df;->l:I

    .line 106
    new-instance v0, Lcom/google/android/location/collectionlib/dh;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/dh;-><init>(Lcom/google/android/location/collectionlib/df;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/df;->h:Ljava/lang/Runnable;

    .line 88
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcom/google/android/location/collectionlib/df;->i:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/google/android/location/collectionlib/df;->b:Lcom/google/android/location/d/l;

    .line 91
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/df;->a:Landroid/net/wifi/WifiManager;

    .line 92
    iput-wide p7, p0, Lcom/google/android/location/collectionlib/df;->g:J

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/df;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/df;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/df;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->e:Lcom/google/android/location/collectionlib/ao;

    iget v1, p0, Lcom/google/android/location/collectionlib/df;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->c_(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/location/collectionlib/df;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/df;->l:I

    .line 140
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/df;->h:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/df;->g:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    const-string v2, "WifiScanner"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    .line 98
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 101
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/df;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/df;->c()V

    .line 104
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/df;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/android/location/collectionlib/df;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->g()V

    .line 166
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
