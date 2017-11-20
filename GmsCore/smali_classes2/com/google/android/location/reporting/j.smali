.class public final Lcom/google/android/location/reporting/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/reporting/l;

.field private final b:Lcom/google/android/location/reporting/service/m;

.field private final c:Lcom/google/android/location/reporting/e;

.field private final d:Lcom/google/android/location/reporting/b/c;

.field private final e:Lcom/google/android/location/reporting/LocationReportingController;

.field private final f:Lcom/google/android/gms/common/util/i;

.field private g:I

.field private final h:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/e;Lcom/google/android/location/reporting/b/c;Lcom/google/android/location/reporting/l;Lcom/google/android/location/reporting/LocationReportingController;ILcom/google/android/gms/common/util/i;Landroid/net/wifi/WifiManager;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/j;->g:I

    .line 83
    iput-object p1, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    .line 84
    iput-object p2, p0, Lcom/google/android/location/reporting/j;->c:Lcom/google/android/location/reporting/e;

    .line 85
    iput-object p3, p0, Lcom/google/android/location/reporting/j;->d:Lcom/google/android/location/reporting/b/c;

    .line 86
    iput-object p4, p0, Lcom/google/android/location/reporting/j;->a:Lcom/google/android/location/reporting/l;

    .line 87
    iput-object p5, p0, Lcom/google/android/location/reporting/j;->e:Lcom/google/android/location/reporting/LocationReportingController;

    .line 88
    iput p6, p0, Lcom/google/android/location/reporting/j;->g:I

    .line 89
    iput-object p7, p0, Lcom/google/android/location/reporting/j;->f:Lcom/google/android/gms/common/util/i;

    .line 90
    iput-object p8, p0, Lcom/google/android/location/reporting/j;->h:Landroid/net/wifi/WifiManager;

    .line 91
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/LocationReportingController;)V
    .locals 3

    .prologue
    .line 229
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location reporting no longer active, stopping; reasons: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getInactiveReasonsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 234
    return-void
.end method

.method private a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/a/e;Landroid/location/Location;)V
    .locals 12

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/m;->g()J

    move-result-wide v2

    .line 243
    iget-object v0, p0, Lcom/google/android/location/reporting/j;->f:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v4

    .line 244
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/reporting/service/y;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    .line 252
    :goto_0
    invoke-static {p3}, Lcom/google/android/location/o/w;->g(Landroid/location/Location;)Ljava/util/List;

    move-result-object v6

    .line 253
    invoke-static {p1, v6}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Ljava/util/List;)V

    .line 254
    if-eqz v6, :cond_10

    if-eqz v0, :cond_10

    .line 255
    sget-object v0, Lcom/google/android/location/reporting/service/y;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "GCoreUlr"

    const-string v1, "Adding AP connectivity to wifi scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/j;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/reporting/j;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/google/android/location/f/bi;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/reporting/j;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/location/reporting/j;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :goto_4
    move v1, v0

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    iget-wide v10, v0, Lcom/google/android/location/reporting/a/i;->b:J

    cmp-long v10, v10, v8

    if-nez v10, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/location/reporting/a/i;->a(Z)Lcom/google/android/location/reporting/a/i;

    invoke-virtual {v0, v1}, Lcom/google/android/location/reporting/a/i;->b(I)Lcom/google/android/location/reporting/a/i;

    const-string v0, "GCoreUlr"

    const/4 v7, 0x3

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GCoreUlr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isConnected=true, wifiAuth: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    .line 264
    invoke-virtual {p2, v0}, Lcom/google/android/location/reporting/a/e;->a(Lcom/google/android/location/reporting/a/i;)Lcom/google/android/location/reporting/a/e;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/Exception;)V

    .line 294
    const-string v1, "GCoreUlr"

    const-string v2, "Best-effort Wifi scan attachment failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    :cond_6
    :goto_6
    return-void

    .line 244
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 260
    :cond_8
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_a
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x2

    goto :goto_4

    :cond_c
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_4

    :cond_d
    const/4 v0, 0x4

    goto/16 :goto_4

    .line 267
    :cond_e
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Attached "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/location/reporting/a/e;->c()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " wifi scans. Last wifi scan attached timestamp: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " location reports. Expected every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/reporting/service/y;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_f
    invoke-virtual {p2}, Lcom/google/android/location/reporting/a/e;->c()I

    move-result v0

    if-lez v0, :cond_6

    .line 279
    iget-object v0, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/reporting/service/m;->a(J)V

    .line 280
    invoke-static {p1, p2}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/a/e;)V

    goto :goto_6

    .line 283
    :cond_10
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    const-string v1, "GCoreUlr"

    const-string v7, "Skipped attaching wifi. wifiScan == null: %s, elapsedRealtime: %d, lastWifiAttachedRealtime: %d, Expected every: %d millis"

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v6, :cond_11

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/google/android/location/reporting/service/y;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 206
    const-string v0, "providerEnabled"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    .line 211
    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Location provider enable status is now "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "providerEnabled"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const-wide v8, 0x416312d000000000L    # 1.0E7

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocationReceiver received "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; lowPowerMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/location/reporting/config/ReportingConfig;->isReportingActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/google/android/location/reporting/j;->e:Lcom/google/android/location/reporting/LocationReportingController;

    iget-object v1, p0, Lcom/google/android/location/reporting/j;->f:Lcom/google/android/gms/common/util/i;

    invoke-static {p2, v0}, Lcom/google/android/location/reporting/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/LocationReportingController;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-static {p1}, Lcom/google/android/location/reporting/j;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string v0, "com.google.android.location.LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 133
    if-nez v0, :cond_3

    .line 134
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "GCoreUlr"

    const-string v1, "Received null location, so returning early."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_3
    iget-object v4, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v4}, Lcom/google/android/location/reporting/service/m;->c()V

    .line 141
    iget-object v4, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v4}, Lcom/google/android/location/reporting/service/m;->d()Landroid/location/Location;

    move-result-object v4

    .line 142
    invoke-static {p2}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;)V

    .line 144
    new-instance v5, Lcom/google/android/location/reporting/a/f;

    invoke-direct {v5}, Lcom/google/android/location/reporting/a/f;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/location/reporting/a/f;->b(I)Lcom/google/android/location/reporting/a/f;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/location/reporting/a/f;->a(I)Lcom/google/android/location/reporting/a/f;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/location/o/w;->d(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/location/reporting/a/e;

    invoke-direct {v7}, Lcom/google/android/location/reporting/a/e;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/android/location/reporting/a/e;->a(Lcom/google/android/location/reporting/a/f;)Lcom/google/android/location/reporting/a/e;

    move-result-object v5

    const-string v7, "cell"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v1, v2

    :cond_4
    :goto_1
    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->a(I)Lcom/google/android/location/reporting/a/e;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/location/reporting/a/e;->a(J)Lcom/google/android/location/reporting/a/e;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->a(F)Lcom/google/android/location/reporting/a/e;

    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->b(F)Lcom/google/android/location/reporting/a/e;

    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/location/reporting/a/e;->a(D)Lcom/google/android/location/reporting/a/e;

    :cond_7
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->c(F)Lcom/google/android/location/reporting/a/e;

    .line 145
    :cond_8
    invoke-direct {p0, p2, v5, v0}, Lcom/google/android/location/reporting/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/a/e;Landroid/location/Location;)V

    .line 147
    invoke-static {v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->a(Ljava/lang/String;)Lcom/google/android/location/reporting/a/e;

    .line 151
    :cond_9
    invoke-static {v0}, Lcom/google/android/location/o/w;->b(Landroid/location/Location;)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->d(I)Lcom/google/android/location/reporting/a/e;

    .line 156
    :cond_a
    iget v1, p0, Lcom/google/android/location/reporting/j;->g:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_b

    .line 157
    iget v1, p0, Lcom/google/android/location/reporting/j;->g:I

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->b(I)Lcom/google/android/location/reporting/a/e;

    .line 160
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/reporting/j;->d:Lcom/google/android/location/reporting/b/c;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/b/c;->b()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->c(I)Lcom/google/android/location/reporting/a/e;

    .line 161
    iget-object v1, p0, Lcom/google/android/location/reporting/j;->d:Lcom/google/android/location/reporting/b/c;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/b/c;->a()Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->a(Z)Lcom/google/android/location/reporting/a/e;

    .line 162
    invoke-static {v0, v4}, Lcom/google/android/location/reporting/s;->a(Landroid/location/Location;Landroid/location/Location;)F

    move-result v1

    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_f

    move v1, v2

    .line 164
    :goto_2
    invoke-virtual {v5, v1}, Lcom/google/android/location/reporting/a/e;->b(Z)Lcom/google/android/location/reporting/a/e;

    .line 168
    invoke-virtual {p2}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/google/android/location/reporting/j;->c:Lcom/google/android/location/reporting/e;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->h()Z

    move-result v8

    invoke-virtual {v4, v7, v5, v8}, Lcom/google/android/location/reporting/e;->a(Landroid/accounts/Account;Ljava/lang/Object;Z)Z
    :try_end_0
    .catch Lcom/google/android/location/reporting/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    if-eqz v1, :cond_c

    move v3, v2

    .line 173
    goto :goto_3

    .line 144
    :cond_d
    const-string v7, "wifi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v1, v3

    goto/16 :goto_1

    :cond_e
    const-string v7, "gps"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x2

    goto/16 :goto_1

    .line 162
    :cond_f
    invoke-virtual {v4, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    cmpg-float v1, v4, v1

    if-lez v1, :cond_10

    sget-object v1, Lcom/google/android/location/reporting/service/y;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_11

    :cond_10
    move v1, v2

    goto :goto_2

    :cond_11
    move v1, v3

    goto :goto_2

    .line 175
    :catch_0
    move-exception v4

    .line 176
    const-string v7, "GCoreUlr"

    invoke-static {v7, v10}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 177
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v7, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error saving location to database for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 183
    :cond_12
    if-eqz v3, :cond_15

    .line 184
    const-string v1, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 185
    const-string v1, "GCoreUlr"

    const-string v2, "Successfully inserted location"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    iget-object v2, p0, Lcom/google/android/location/reporting/j;->f:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/location/reporting/service/m;->a(Landroid/location/Location;J)V

    .line 199
    :cond_14
    :goto_4
    iget-object v1, p0, Lcom/google/android/location/reporting/j;->a:Lcom/google/android/location/reporting/l;

    iget-object v2, p0, Lcom/google/android/location/reporting/j;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v1, v2, p2, v0}, Lcom/google/android/location/reporting/l;->a(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/location/Location;)Z

    goto/16 :goto_0

    .line 189
    :cond_15
    const-string v1, "GCoreUlr"

    invoke-static {v1, v10}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 190
    const-string v1, "GCoreUlr"

    const-string v2, "Location insertion failed for all accounts"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
