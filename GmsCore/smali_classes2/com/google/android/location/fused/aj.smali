.class final Lcom/google/android/location/fused/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/ai;


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/ai;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/ai;B)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/aj;-><init>(Lcom/google/android/location/fused/ai;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    .prologue
    .line 202
    packed-switch p1, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    iget-object v0, v0, Lcom/google/android/location/fused/ai;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    iget-object v1, v1, Lcom/google/android/location/fused/ai;->g:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 208
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 211
    goto :goto_1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    iget-object v3, v0, Lcom/google/android/location/fused/ai;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    iput v1, v0, Lcom/google/android/location/fused/ai;->c:I

    .line 215
    iget-object v0, p0, Lcom/google/android/location/fused/aj;->a:Lcom/google/android/location/fused/ai;

    iput-object v2, v0, Lcom/google/android/location/fused/ai;->g:Landroid/location/GpsStatus;

    .line 216
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 202
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
