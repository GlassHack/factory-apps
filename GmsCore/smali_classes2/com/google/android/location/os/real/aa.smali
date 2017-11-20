.class final Lcom/google/android/location/os/real/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:I

.field private c:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 1

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/os/real/aa;->b:I

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/aa;->c:Landroid/location/GpsStatus;

    .line 846
    iput-object p1, p0, Lcom/google/android/location/os/real/aa;->a:Landroid/location/LocationManager;

    .line 847
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 853
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/os/real/aa;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onGpsStatusChanged(I)V
    .locals 3

    .prologue
    .line 858
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 859
    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/aa;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/aa;->c:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/aa;->c:Landroid/location/GpsStatus;

    .line 861
    const/4 v1, 0x0

    .line 862
    iget-object v0, p0, Lcom/google/android/location/os/real/aa;->c:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 863
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 866
    goto :goto_0

    .line 867
    :cond_0
    iput v1, p0, Lcom/google/android/location/os/real/aa;->b:I

    .line 868
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_1
    return-void

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
