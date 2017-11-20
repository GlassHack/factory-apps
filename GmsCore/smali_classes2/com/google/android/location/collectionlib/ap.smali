.class final Lcom/google/android/location/collectionlib/ap;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ca;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Z

.field private final g:Lcom/google/android/location/collectionlib/co;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLcom/google/android/location/collectionlib/ak;ZLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 16

    .prologue
    .line 107
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p11

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    invoke-direct/range {v2 .. v7}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 108
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/collectionlib/ap;->g:Lcom/google/android/location/collectionlib/co;

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/ap;->g:Lcom/google/android/location/collectionlib/co;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p1

    move-object/from16 v14, p11

    move-object/from16 v15, p15

    invoke-direct/range {v3 .. v15}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/co;Ljava/util/Set;Ljava/util/Map;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLandroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/p/j;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/ap;->a:Ljava/util/List;

    .line 121
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/collectionlib/ap;->b:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLcom/google/android/location/collectionlib/ak;ZLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 20

    .prologue
    .line 74
    if-eqz p4, :cond_0

    new-instance v8, Lcom/google/android/location/collectionlib/co;

    move-object/from16 v0, p1

    move-object/from16 v1, p16

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/u;->a(Landroid/content/Context;Lcom/google/android/location/p/a/c;)Lcom/google/android/location/collectionlib/u;

    move-result-object v4

    move-wide/from16 v0, p5

    move-object/from16 v2, p16

    invoke-direct {v8, v4, v0, v1, v2}, Lcom/google/android/location/collectionlib/co;-><init>(Lcom/google/android/location/collectionlib/u;JLcom/google/android/location/p/a/c;)V

    :goto_0
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v4 .. v19}, Lcom/google/android/location/collectionlib/ap;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLcom/google/android/location/collectionlib/ak;ZLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 90
    return-void

    .line 74
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/location/collectionlib/co;Ljava/util/Set;Ljava/util/Map;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLandroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/p/j;)Ljava/util/List;
    .locals 15

    .prologue
    .line 141
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->a()Ljava/util/ArrayList;

    move-result-object v13

    .line 143
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move v12, v2

    .line 144
    :goto_0
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->b:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "phone"

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 147
    if-nez v12, :cond_2

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 151
    new-instance v2, Lcom/google/android/location/collectionlib/af;

    iget-object v6, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    iget-object v7, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    move-object/from16 v3, p10

    move-object/from16 v5, p11

    move-object/from16 v8, p12

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/collectionlib/af;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    :goto_1
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    if-nez p6, :cond_4

    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "wifiService can\'t be null when WiFi scan is requested."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    const/4 v2, 0x0

    move v12, v2

    goto :goto_0

    .line 154
    :cond_2
    if-eqz v12, :cond_3

    .line 155
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Reading past data on cell is not available."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_3
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "No sim card, skipping cellular scan."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_4
    if-nez v12, :cond_d

    invoke-interface/range {p6 .. p6}, Lcom/google/android/location/os/ax;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 168
    if-eqz p9, :cond_c

    invoke-static {}, Lcom/google/android/location/d/h;->a()Lcom/google/android/location/d/h;

    move-result-object v6

    .line 170
    :goto_2
    new-instance v3, Lcom/google/android/location/collectionlib/df;

    iget-object v7, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    iget-object v8, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v9, p12

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/location/collectionlib/df;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/d/l;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;J)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_5
    :goto_3
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->m:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    new-instance v2, Lcom/google/android/location/collectionlib/cv;

    iget-object v5, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    iget-object v6, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v7, p12

    invoke-direct/range {v2 .. v7}, Lcom/google/android/location/collectionlib/cv;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 186
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 187
    if-nez v4, :cond_7

    if-eqz v5, :cond_8

    .line 188
    :cond_7
    const-string v2, "location"

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 190
    if-nez v12, :cond_f

    :try_start_0
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 191
    new-instance v2, Lcom/google/android/location/collectionlib/ax;

    iget-object v8, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    iget-object v9, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    move-object/from16 v3, p10

    move-object/from16 v6, p5

    move-object/from16 v7, p11

    move-object/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/collectionlib/ax;-><init>(Landroid/content/Context;ZZLcom/google/android/location/d/b;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_8
    :goto_4
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 207
    const-string v2, "sensor"

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 208
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 210
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    .line 211
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 212
    :cond_a
    sget-boolean v6, Lcom/google/android/location/j/a;->b:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v7, "Sensor type %d does not exit."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 213
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 168
    :cond_c
    invoke-static {}, Lcom/google/android/location/d/k;->a()Lcom/google/android/location/d/k;

    move-result-object v6

    goto/16 :goto_2

    .line 173
    :cond_d
    if-eqz v12, :cond_e

    .line 174
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Reading past data on wifi is not available."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 176
    :cond_e
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Wifi not enabled, skipping WIFI scan."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 194
    :cond_f
    if-eqz v12, :cond_10

    .line 195
    :try_start_1
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "Reading past data on GPS is not available."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 200
    :catch_0
    move-exception v2

    .line 201
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GPS scan skipped: can\'t check GPS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 197
    :cond_10
    :try_start_2
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v3, "GPS not enabled, skipping GPS scan."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 216
    :cond_11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 217
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 219
    :cond_12
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 220
    new-instance v2, Lcom/google/android/location/collectionlib/cd;

    iget-object v8, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    iget-object v9, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    move-object/from16 v3, p10

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p11

    move-object/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/collectionlib/cd;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/co;Ljava/util/Map;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_13
    return-object v13
.end method


# virtual methods
.method protected final a()V
    .locals 12

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/bz;

    .line 246
    invoke-virtual {v0, p0}, Lcom/google/android/location/collectionlib/bz;->a(Lcom/google/android/location/collectionlib/ca;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->g:Lcom/google/android/location/collectionlib/co;

    if-eqz v0, :cond_4

    .line 252
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ap;->g:Lcom/google/android/location/collectionlib/co;

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->f:Lcom/google/android/location/collectionlib/g;

    iget-object v7, v2, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput-object v0, v2, Lcom/google/android/location/collectionlib/co;->f:Lcom/google/android/location/collectionlib/g;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v2, Lcom/google/android/location/collectionlib/co;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lcom/google/android/location/collectionlib/RealCollectorConfig;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/google/android/location/collectionlib/co;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "No scanner specified. Stopping immediately."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/co;->a()V

    monitor-exit v7

    .line 254
    :cond_4
    :goto_2
    return-void

    .line 252
    :cond_5
    iget-object v1, v2, Lcom/google/android/location/collectionlib/co;->b:Lcom/google/android/location/collectionlib/u;

    iget-wide v4, v2, Lcom/google/android/location/collectionlib/co;->d:J

    iget-object v8, v1, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Batch not started."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/co;->a()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_7
    :try_start_4
    iget-object v0, v1, Lcom/google/android/location/collectionlib/u;->d:Lcom/google/android/location/collectionlib/cg;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cg;->b()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Timestamp not calibrated."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/co;->a()V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v8

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    :try_start_6
    new-instance v0, Lcom/google/android/location/collectionlib/x;

    iget-object v6, v1, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/collectionlib/x;-><init>(Lcom/google/android/location/collectionlib/u;Lcom/google/android/location/collectionlib/co;Ljava/util/Set;JLcom/google/android/location/collectionlib/aa;)V

    iget-object v3, v1, Lcom/google/android/location/collectionlib/u;->b:Landroid/hardware/SensorManager;

    iget-object v4, v1, Lcom/google/android/location/collectionlib/u;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    iget-object v3, v1, Lcom/google/android/location/collectionlib/u;->f:Lcom/google/android/location/collectionlib/aa;

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/aa;->b()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/location/collectionlib/v;

    invoke-direct {v4, v1, v0}, Lcom/google/android/location/collectionlib/v;-><init>(Lcom/google/android/location/collectionlib/u;Lcom/google/android/location/collectionlib/x;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, v1, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    monitor-exit v8

    goto :goto_3

    :cond_a
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "SensorBatchThread quitted."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/co;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;J)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->f:Lcom/google/android/location/collectionlib/g;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->f:Lcom/google/android/location/collectionlib/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/collectionlib/g;->a(Lcom/google/android/location/collectionlib/cb;J)V

    .line 284
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/bz;

    .line 259
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bz;->d()V

    goto :goto_0

    .line 261
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->c:Lcom/google/android/location/p/a/c;

    const-string v1, "All scanner finished."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->a()V

    .line 265
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/ap;->b:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/ak;->a()V

    .line 268
    :cond_3
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
