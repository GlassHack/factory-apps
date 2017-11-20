.class final Lcom/google/android/location/fused/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Landroid/location/LocationManager;

.field final synthetic b:Lcom/google/android/location/fused/w;

.field private c:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/w;Landroid/location/LocationManager;)V
    .locals 1

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/android/location/fused/aa;->b:Lcom/google/android/location/fused/w;

    iput-object p2, p0, Lcom/google/android/location/fused/aa;->a:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/aa;->c:Landroid/location/GpsStatus;

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 853
    packed-switch p1, :pswitch_data_0

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 855
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/fused/aa;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/fused/aa;->c:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/aa;->c:Landroid/location/GpsStatus;

    .line 856
    iget-object v0, p0, Lcom/google/android/location/fused/aa;->c:Landroid/location/GpsStatus;

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    iget-object v1, p0, Lcom/google/android/location/fused/aa;->c:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 860
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 861
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    add-float/2addr v0, v1

    .line 862
    add-int/lit8 v1, v3, 0x1

    :goto_2
    move v3, v1

    move v1, v0

    .line 864
    goto :goto_1

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/aa;->b:Lcom/google/android/location/fused/w;

    iget-object v0, v0, Lcom/google/android/location/fused/w;->a:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v4

    .line 867
    iget-object v0, p0, Lcom/google/android/location/fused/aa;->b:Lcom/google/android/location/fused/w;

    iget-object v0, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    if-lez v3, :cond_2

    int-to-float v2, v3

    div-float v2, v1, v2

    :cond_2
    invoke-interface {v0, v4, v5, v3, v2}, Lcom/google/h/a/b/b/t;->a(JIF)V

    .line 871
    iget-object v0, p0, Lcom/google/android/location/fused/aa;->b:Lcom/google/android/location/fused/w;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/fused/w;->a(J)V

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v3

    goto :goto_2

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
