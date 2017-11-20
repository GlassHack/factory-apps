.class public Lcom/google/android/location/os/real/SdkSpecific17;
.super Lcom/google/android/location/os/real/SdkSpecific11;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific11;-><init>()V

    return-void
.end method

.method protected static a(JLandroid/telephony/CellInfoLte;Ljava/util/Collection;)Lcom/google/android/location/f/ab;
    .locals 12

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    const/16 v10, -0x270f

    .line 71
    const/4 v9, -0x1

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v4

    .line 78
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v5

    .line 79
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    .line 80
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v7

    .line 81
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    .line 83
    new-instance v1, Lcom/google/android/location/f/ab;

    move-wide v2, p0

    move-object v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/location/f/ab;-><init>(JIIIIIIILjava/util/Collection;)V

    return-object v1

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v10

    .line 74
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v9

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 49
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x2

    .line 54
    :goto_0
    return v0

    .line 51
    :cond_0
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;)J
    .locals 4

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/google/android/location/os/real/SdkSpecific11;->a(Landroid/location/Location;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Landroid/net/wifi/ScanResult;)J
    .locals 4

    .prologue
    .line 235
    :try_start_0
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v1, v0

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 304
    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 306
    :goto_1
    if-nez v0, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 315
    const-string v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    move v1, v0

    .line 324
    goto :goto_0

    :cond_2
    move v0, v1

    .line 304
    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method public a(Landroid/telephony/TelephonyManager;IJ)[Lcom/google/android/location/f/g;
    .locals 9

    .prologue
    .line 97
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/location/os/real/ao;->a(Landroid/telephony/TelephonyManager;IJ)Lcom/google/android/location/f/g;

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 104
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific17"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "cellLocation "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "SdkSpecific17"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "NetworkOperator: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    if-eqz v0, :cond_3

    .line 108
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "SdkSpecific17"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "cellLocation is class "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "SdkSpecific17"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNetworkType returns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "SdkSpecific17"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cellInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_4
    if-nez v4, :cond_6

    .line 120
    if-eqz v3, :cond_5

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/location/f/g;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    .line 226
    :goto_0
    return-object v0

    .line 123
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_6
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 134
    instance-of v6, v0, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_c

    .line 135
    check-cast v0, Landroid/telephony/CellInfoLte;

    .line 136
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_b

    .line 141
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 144
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_8

    move-object v2, v0

    .line 148
    goto :goto_1

    .line 150
    :cond_8
    sget-boolean v6, Lcom/google/android/location/j/a;->b:Z

    if-eqz v6, :cond_7

    const-string v6, "SdkSpecific17"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Rejecting LTE primary cell "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_9
    sget-object v6, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    if-ne v1, v6, :cond_a

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 159
    :cond_a
    sget-object v6, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    invoke-static {p3, p4, v0, v6}, Lcom/google/android/location/os/real/SdkSpecific17;->a(JLandroid/telephony/CellInfoLte;Ljava/util/Collection;)Lcom/google/android/location/f/ab;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    :cond_b
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "SdkSpecific17"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Rejecting CellIdentity of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_c
    sget-boolean v6, Lcom/google/android/location/j/a;->b:Z

    if-eqz v6, :cond_7

    const-string v6, "SdkSpecific17"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring non-LTE cellInfo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :cond_d
    if-eqz v2, :cond_f

    .line 180
    invoke-static {p3, p4, v2, v1}, Lcom/google/android/location/os/real/SdkSpecific17;->a(JLandroid/telephony/CellInfoLte;Ljava/util/Collection;)Lcom/google/android/location/f/ab;

    move-result-object v0

    .line 185
    :goto_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_e

    const-string v1, "SdkSpecific17"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "new API CellState is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_e
    if-nez v3, :cond_11

    .line 202
    if-nez v0, :cond_10

    .line 203
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 182
    :cond_f
    const/4 v0, 0x0

    goto :goto_2

    .line 205
    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/location/f/g;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    goto/16 :goto_0

    .line 208
    :cond_11
    if-nez v0, :cond_13

    .line 209
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_12

    const-string v0, "SdkSpecific17"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning old-api singleton, cellState is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/location/f/g;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    goto/16 :goto_0

    .line 214
    :cond_13
    invoke-virtual {v3}, Lcom/google/android/location/f/g;->i()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v3}, Lcom/google/android/location/f/g;->b(Lcom/google/android/location/f/g;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 215
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/location/f/g;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    goto/16 :goto_0

    .line 221
    :cond_15
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/location/f/g;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v3, v1, v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final b(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 255
    return-void
.end method

.method public final d()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 259
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 289
    :goto_0
    return v0

    .line 270
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getCurrentUser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 272
    const-class v1, Landroid/os/UserHandle;

    const-string v3, "myUserId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 273
    const-string v3, "SdkSpecific17"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "SdkSpecific17"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentUserId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " myProcessUserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "SdkSpecific17"

    const/4 v3, 0x7

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    const-string v1, "SdkSpecific17"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v2

    .line 289
    goto :goto_0
.end method
