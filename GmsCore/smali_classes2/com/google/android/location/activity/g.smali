.class public final Lcom/google/android/location/activity/g;
.super Lcom/google/android/location/activity/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/d;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/Map;IJJLcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 13

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/location/collectionlib/SensorScannerConfig;

    const-wide/16 v2, 0x5dc

    const-wide/32 v4, 0xf4240

    div-long v4, p5, v4

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/SensorScannerConfig;-><init>(IJJ)V

    .line 36
    iget-object v2, p0, Lcom/google/android/location/activity/g;->a:Lcom/google/android/location/os/at;

    const/4 v3, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/location/collectionlib/cb;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v4

    const-wide/16 v6, 0x0

    new-instance v9, Lcom/google/android/location/activity/h;

    invoke-direct {v9, p0}, Lcom/google/android/location/activity/h;-><init>(Lcom/google/android/location/activity/g;)V

    const-string v10, "SignalCollector"

    move-object v5, p1

    move-object v8, v0

    move-object/from16 v11, p7

    invoke-interface/range {v2 .. v11}, Lcom/google/android/location/os/at;->a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v0

    return-object v0
.end method
