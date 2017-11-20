.class public final Lcom/google/android/location/collectionlib/as;
.super Lcom/google/android/location/collectionlib/g;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/SensorScannerConfig;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/collectionlib/g;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/as;->e:I

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/as;->f:J

    .line 19
    iput-object p3, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;J)V
    .locals 6

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    if-eq p1, v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget v0, p0, Lcom/google/android/location/collectionlib/as;->e:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 36
    iget v0, p0, Lcom/google/android/location/collectionlib/as;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/as;->e:I

    .line 37
    iget v0, p0, Lcom/google/android/location/collectionlib/as;->e:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 47
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/as;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 48
    iput-wide p2, p0, Lcom/google/android/location/collectionlib/as;->f:J

    goto :goto_0

    .line 49
    :cond_3
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/as;->f:J

    sub-long v0, p2, v0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/as;->d:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/as;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
