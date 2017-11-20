.class public final Lcom/google/android/location/collectionlib/cz;
.super Lcom/google/android/location/collectionlib/cy;
.source "SourceFile"


# instance fields
.field private final e:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 218
    const/4 v2, 0x1

    sget-object v5, Lcom/google/android/location/collectionlib/cz;->a:[S

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    .line 221
    const/4 v0, 0x2

    const-string v1, "NlpWifiLock"

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cz;->e:Landroid/net/wifi/WifiManager$WifiLock;

    .line 222
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cz;->e:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 225
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/location/p/j;)V
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cz;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Lcom/google/android/location/p/j;->a(Landroid/os/PowerManager$WakeLock;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cz;->e:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1, v0}, Lcom/google/android/location/p/j;->a(Landroid/net/wifi/WifiManager$WifiLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cz;->e:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 243
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cz;->e:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 248
    return-void
.end method
