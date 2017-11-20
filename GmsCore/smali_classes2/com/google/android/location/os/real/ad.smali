.class final Lcom/google/android/location/os/real/ad;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/real/x;)V
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 782
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ad;->a:Ljava/lang/ref/WeakReference;

    .line 783
    return-void
.end method


# virtual methods
.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 818
    if-nez p1, :cond_1

    .line 819
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocationCallbackRunner"

    const-string v1, "Null cellInfo in onCellInfoChanged()"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_0
    return-void

    .line 821
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "NetworkLocationCallbackRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCellInfoChanged: list size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 824
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "NetworkLocationCallbackRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cellInfo is ... "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/location/os/real/ad;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/x;

    .line 788
    if-eqz v0, :cond_0

    .line 792
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    .line 794
    :cond_0
    return-void
.end method

.method public final onDataConnectionStateChanged(I)V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/location/os/real/ad;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/x;

    .line 807
    if-eqz v0, :cond_0

    .line 810
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    .line 812
    :cond_0
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/location/os/real/ad;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/x;

    .line 799
    if-eqz v0, :cond_0

    .line 800
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 802
    :cond_0
    return-void
.end method
