.class public final Lcom/google/android/location/activity/i;
.super Lcom/google/android/location/activity/d;
.source "SourceFile"


# instance fields
.field private e:Lcom/google/android/location/d/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/d;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/i;)Lcom/google/android/location/d/i;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/location/activity/i;->e:Lcom/google/android/location/d/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/activity/i;Lcom/google/android/location/d/i;)Lcom/google/android/location/d/i;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/location/activity/i;->e:Lcom/google/android/location/d/i;

    return-object p1
.end method


# virtual methods
.method protected final a(Ljava/util/Map;IJJLcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 13

    .prologue
    .line 41
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityDetectionRunnerInPast"

    const-string v3, "createSignalCollector: ask for %f seconds events in the past"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-wide/from16 v0, p5

    long-to-double v6, v0

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/activity/i;->a:Lcom/google/android/location/os/at;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/location/collectionlib/cb;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v4

    move-wide/from16 v0, p5

    neg-long v6, v0

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/location/activity/j;

    invoke-direct {v9, p0}, Lcom/google/android/location/activity/j;-><init>(Lcom/google/android/location/activity/i;)V

    const-string v10, "BatchingSignalCollector"

    move-object v5, p1

    move-object/from16 v11, p7

    invoke-interface/range {v2 .. v11}, Lcom/google/android/location/os/at;->a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v2

    return-object v2
.end method
