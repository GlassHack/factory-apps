.class public final Lcom/google/android/location/fused/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/location/LocationManager;

.field final b:Ljava/lang/Object;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field g:Landroid/location/GpsStatus;

.field public final h:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/ai;->b:Ljava/lang/Object;

    .line 44
    iput v1, p0, Lcom/google/android/location/fused/ai;->c:I

    .line 55
    new-instance v0, Lcom/google/android/location/fused/aj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/aj;-><init>(Lcom/google/android/location/fused/ai;B)V

    iput-object v0, p0, Lcom/google/android/location/fused/ai;->h:Landroid/location/GpsStatus$Listener;

    .line 58
    iput-object p1, p0, Lcom/google/android/location/fused/ai;->a:Landroid/location/LocationManager;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Z
    .locals 9

    .prologue
    const/high16 v8, 0x42c00000    # 96.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 67
    iget-object v3, p0, Lcom/google/android/location/fused/ai;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 69
    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 70
    :cond_0
    monitor-exit v3

    .line 89
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 74
    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 75
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 78
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/google/android/location/fused/ai;->c:I

    const/4 v4, 0x3

    if-lt v0, v4, :cond_4

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ai;->f:Z

    .line 82
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/fused/ai;->d:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ai;->d:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/location/fused/ai;->d:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/location/fused/ai;->c:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/google/android/location/fused/ai;->c:I

    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_6

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x4079999a    # 3.9f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 84
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/location/fused/ai;->e:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ai;->e:Z

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/location/fused/ai;->e:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    .line 85
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/location/fused/ai;->f:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/location/fused/ai;->c:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/location/fused/ai;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_a

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 86
    :cond_a
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/location/Location;->removeSpeed()V

    .line 87
    :cond_b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    .line 82
    goto :goto_1

    :pswitch_1
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_1

    :pswitch_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :pswitch_3
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_1

    :pswitch_4
    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
