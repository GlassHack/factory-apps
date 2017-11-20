.class public final Lcom/google/android/location/fused/service/c;
.super Lcom/google/android/location/fused/service/a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/location/fused/service/e;

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/android/location/provider/FusedLocationHardwareSink;

.field private e:Lcom/google/android/location/fused/service/b;

.field private f:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/location/fused/service/a;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/android/location/fused/service/e;->a()Lcom/google/android/location/fused/service/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/service/c;->b:Lcom/google/android/location/fused/service/e;

    .line 20
    new-instance v0, Lcom/google/android/location/fused/service/d;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/service/d;-><init>(Lcom/google/android/location/fused/service/c;)V

    iput-object v0, p0, Lcom/google/android/location/fused/service/c;->d:Lcom/android/location/provider/FusedLocationHardwareSink;

    .line 40
    iput-object p1, p0, Lcom/google/android/location/fused/service/c;->c:Landroid/os/Looper;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/fused/service/c;)Lcom/google/android/location/fused/service/b;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/location/fused/service/c;->e:Lcom/google/android/location/fused/service/b;

    return-object v0
.end method

.method private b()Lcom/android/location/provider/FusedLocationHardware;
    .locals 3

    .prologue
    .line 113
    sget-boolean v0, Lcom/google/android/location/fused/service/a;->a:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/service/c;->b:Lcom/google/android/location/fused/service/e;

    invoke-virtual {v0}, Lcom/google/android/location/fused/service/e;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/android/location/fused/service/c;->f:Lcom/android/location/provider/FusedLocationHardware;

    if-eq v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/google/android/location/fused/service/c;->d:Lcom/android/location/provider/FusedLocationHardwareSink;

    iget-object v2, p0, Lcom/google/android/location/fused/service/c;->c:Landroid/os/Looper;

    invoke-virtual {v0, v1, v2}, Lcom/android/location/provider/FusedLocationHardware;->registerSink(Lcom/android/location/provider/FusedLocationHardwareSink;Landroid/os/Looper;)V

    .line 120
    iput-object v0, p0, Lcom/google/android/location/fused/service/c;->f:Lcom/android/location/provider/FusedLocationHardware;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/service/c;->f:Lcom/android/location/provider/FusedLocationHardware;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/location/fused/service/c;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->stopBatching(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public final a(IJDII)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/location/fused/service/c;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/android/location/provider/GmsFusedBatchOptions;

    invoke-direct {v1}, Lcom/android/location/provider/GmsFusedBatchOptions;-><init>()V

    .line 54
    invoke-virtual {v1, p2, p3}, Lcom/android/location/provider/GmsFusedBatchOptions;->setPeriodInNS(J)V

    .line 55
    invoke-virtual {v1, p4, p5}, Lcom/android/location/provider/GmsFusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    .line 56
    invoke-virtual {v1, p6}, Lcom/android/location/provider/GmsFusedBatchOptions;->setSourceToUse(I)V

    .line 57
    invoke-virtual {v1, p7}, Lcom/android/location/provider/GmsFusedBatchOptions;->setFlag(I)V

    .line 58
    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/FusedLocationHardware;->startBatching(ILcom/android/location/provider/GmsFusedBatchOptions;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/fused/service/b;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/location/fused/service/c;->e:Lcom/google/android/location/fused/service/b;

    .line 46
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/google/android/location/fused/service/c;->b:Lcom/google/android/location/fused/service/e;

    invoke-virtual {v1}, Lcom/google/android/location/fused/service/e;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v1

    .line 94
    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/google/android/location/fused/service/a;->a:Z

    if-eqz v2, :cond_0

    .line 100
    :cond_2
    invoke-virtual {v1}, Lcom/android/location/provider/FusedLocationHardware;->getSupportedBatchSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/location/fused/service/c;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->requestBatchOfLocations(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public final b(IJDII)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/location/fused/service/c;->b()Lcom/android/location/provider/FusedLocationHardware;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/android/location/provider/GmsFusedBatchOptions;

    invoke-direct {v1}, Lcom/android/location/provider/GmsFusedBatchOptions;-><init>()V

    .line 75
    invoke-virtual {v1, p2, p3}, Lcom/android/location/provider/GmsFusedBatchOptions;->setPeriodInNS(J)V

    .line 76
    invoke-virtual {v1, p4, p5}, Lcom/android/location/provider/GmsFusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    .line 77
    invoke-virtual {v1, p6}, Lcom/android/location/provider/GmsFusedBatchOptions;->setSourceToUse(I)V

    .line 78
    invoke-virtual {v1, p7}, Lcom/android/location/provider/GmsFusedBatchOptions;->setFlag(I)V

    .line 79
    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/FusedLocationHardware;->updateBatchingOptions(ILcom/android/location/provider/GmsFusedBatchOptions;)V

    .line 81
    :cond_0
    return-void
.end method
