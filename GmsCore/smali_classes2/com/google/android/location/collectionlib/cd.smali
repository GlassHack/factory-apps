.class final Lcom/google/android/location/collectionlib/cd;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field private final b:Ljava/util/Map;

.field private final g:Lcom/google/android/location/collectionlib/co;

.field private final h:Landroid/hardware/SensorManager;

.field private final i:Lcom/google/android/location/collectionlib/SensorScannerConfig;

.field private final j:Lcom/google/android/location/collectionlib/ce;

.field private k:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0x13

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/location/collectionlib/cd;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/co;Ljava/util/Map;Lcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 35
    new-instance v0, Lcom/google/android/location/collectionlib/ce;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/ce;-><init>(Lcom/google/android/location/collectionlib/cd;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cd;->j:Lcom/google/android/location/collectionlib/ce;

    .line 207
    invoke-static {p1}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p3}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iput-object p2, p0, Lcom/google/android/location/collectionlib/cd;->g:Lcom/google/android/location/collectionlib/co;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cd;->b:Ljava/util/Map;

    .line 211
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cd;->h:Landroid/hardware/SensorManager;

    .line 212
    iput-object p4, p0, Lcom/google/android/location/collectionlib/cd;->i:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 213
    sget v0, Lcom/google/android/location/collectionlib/cd;->a:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cd;->k:[Z

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cd;)[Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->k:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/cd;)Lcom/google/android/location/collectionlib/SensorScannerConfig;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->i:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->h:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cd;->h:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cd;->g:Lcom/google/android/location/collectionlib/co;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/google/android/location/collectionlib/cd;->h:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/google/android/location/collectionlib/cd;->j:Lcom/google/android/location/collectionlib/ce;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/google/android/location/j/a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cd;->c:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to listen to sensor "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cd;->g:Lcom/google/android/location/collectionlib/co;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/cd;->j:Lcom/google/android/location/collectionlib/ce;

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    if-eqz v4, :cond_0

    iget-object v5, v2, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    monitor-enter v5

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_2
    iget-object v2, v2, Lcom/google/android/location/collectionlib/co;->e:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->f()V

    .line 226
    :cond_4
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->g:Lcom/google/android/location/collectionlib/co;

    if-nez v0, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->h:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cd;->j:Lcom/google/android/location/collectionlib/ce;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cd;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->e()V

    .line 264
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
