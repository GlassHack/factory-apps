.class final Lcom/google/android/location/os/real/bb;
.super Lcom/google/android/location/f/bh;
.source "SourceFile"


# direct methods
.method private constructor <init>(JLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/f/bh;-><init>(JLjava/util/ArrayList;)V

    .line 168
    return-void
.end method

.method public static a(JLjava/util/List;)[Lcom/google/android/location/f/bh;
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/location/f/bh;

    .line 32
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/location/os/real/bb;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/os/real/bb;->b(JLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/location/os/real/bb;-><init>(JLjava/util/ArrayList;)V

    aput-object v2, v0, v1

    .line 33
    return-object v0
.end method

.method private static b(JLjava/util/List;)Ljava/util/ArrayList;
    .locals 14

    .prologue
    .line 132
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v9

    .line 135
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 136
    if-nez v5, :cond_1

    .line 137
    const-string v0, "RealWifiScan"

    const-string v1, "Null value returned in WifiManager.getScanResults()"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 147
    :goto_1
    if-nez v0, :cond_0

    .line 148
    iget-object v0, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/location/f/bi;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 149
    const-wide/16 v6, -0x1

    cmp-long v0, v1, v6

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v9, v5}, Lcom/google/android/location/os/real/be;->a(Landroid/net/wifi/ScanResult;)J

    move-result-wide v6

    .line 154
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-nez v0, :cond_2

    move-wide v6, p0

    .line 158
    :cond_2
    new-instance v0, Lcom/google/android/location/f/bb;

    iget v3, v5, Landroid/net/wifi/ScanResult;->level:I

    iget-object v4, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v5, v5, Landroid/net/wifi/ScanResult;->frequency:I

    int-to-short v5, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/f/bb;-><init>(JILjava/lang/String;SJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 163
    :cond_4
    return-object v8
.end method
