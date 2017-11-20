.class final Lcom/google/android/location/os/real/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/x;I)V
    .locals 1

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ac;->a:Ljava/lang/ref/WeakReference;

    .line 743
    iput p2, p0, Lcom/google/android/location/os/real/ac;->b:I

    .line 744
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 748
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/be;->a(Landroid/location/Location;)J

    move-result-wide v0

    .line 752
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 753
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v2, v0

    .line 755
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ac;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/x;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget v1, p0, Lcom/google/android/location/os/real/ac;->b:I

    new-instance v4, Lcom/google/android/location/f/ai;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 760
    :cond_0
    return-void

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 772
    return-void
.end method
