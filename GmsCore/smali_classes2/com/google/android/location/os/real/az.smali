.class public final Lcom/google/android/location/os/real/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/aw;


# instance fields
.field final a:Lcom/google/android/location/os/at;

.field private final b:Z

.field private final c:Landroid/net/wifi/RttManager;

.field private final d:Landroid/net/wifi/RttManager$RttListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/at;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/google/android/location/os/real/ba;

    invoke-direct {v0, p0}, Lcom/google/android/location/os/real/ba;-><init>(Lcom/google/android/location/os/real/az;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/az;->d:Landroid/net/wifi/RttManager$RttListener;

    .line 41
    iput-object p2, p0, Lcom/google/android/location/os/real/az;->a:Lcom/google/android/location/os/at;

    .line 42
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDeviceToApRttSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/az;->b:Z

    .line 43
    iget-boolean v0, p0, Lcom/google/android/location/os/real/az;->b:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/az;->c:Landroid/net/wifi/RttManager;

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "rttmanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/RttManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/az;->c:Landroid/net/wifi/RttManager;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/google/android/location/os/real/az;->c:Landroid/net/wifi/RttManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rtt not supported on this device (please call isSupported())"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v1, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v1}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    .line 59
    iput v2, v1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 60
    iput v2, v1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 61
    iput-object p1, v1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 62
    iput p2, v1, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 63
    sget-object v0, Lcom/google/android/location/d/a;->w:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/net/wifi/RttManager$RttParams;->num_samples:I

    .line 64
    sget-object v0, Lcom/google/android/location/d/a;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/net/wifi/RttManager$RttParams;->num_retries:I

    .line 65
    iput v3, v1, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 67
    new-array v0, v2, [Landroid/net/wifi/RttManager$RttParams;

    .line 68
    aput-object v1, v0, v3

    .line 69
    iget-object v1, p0, Lcom/google/android/location/os/real/az;->c:Landroid/net/wifi/RttManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/az;->d:Landroid/net/wifi/RttManager$RttListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/RttManager;->startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V

    .line 70
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/location/os/real/az;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/d/a;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
