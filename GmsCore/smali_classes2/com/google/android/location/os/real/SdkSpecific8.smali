.class public Lcom/google/android/location/os/real/SdkSpecific8;
.super Lcom/google/android/location/os/real/be;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/location/os/real/be;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/gsm/GsmCellLocation;)I
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/location/Location;)J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/net/wifi/ScanResult;)J
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/az;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/location/activity/ak;

    invoke-direct {v0}, Lcom/google/android/location/activity/ak;-><init>()V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/location/os/at;)Lcom/google/android/location/os/aw;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/location/os/as;

    invoke-direct {v0}, Lcom/google/android/location/os/as;-><init>()V

    return-object v0
.end method

.method public a(Landroid/app/AlarmManager;IJJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
    .locals 9

    .prologue
    .line 157
    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/os/real/SdkSpecific8;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V

    .line 158
    return-void
.end method

.method public a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 147
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V
    .locals 1

    .prologue
    .line 137
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 140
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 141
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6

    .prologue
    .line 174
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 177
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 178
    return-void
.end method

.method public a(Lcom/google/android/location/os/at;J)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/hardware/SensorManager;I)Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/PowerManager;)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/telephony/TelephonyManager;IJ)[Lcom/google/android/location/f/g;
    .locals 3

    .prologue
    .line 77
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/location/os/real/ao;->a(Landroid/telephony/TelephonyManager;IJ)Lcom/google/android/location/f/g;

    move-result-object v1

    .line 79
    if-nez v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/location/f/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public b(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/bt;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/google/android/location/activity/al;

    invoke-direct {v0}, Lcom/google/android/location/activity/al;-><init>()V

    return-object v0
.end method

.method public b(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
