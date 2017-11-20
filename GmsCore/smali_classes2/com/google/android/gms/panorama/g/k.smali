.class public final Lcom/google/android/gms/panorama/g/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Landroid/graphics/PointF;

.field c:Landroid/graphics/PointF;

.field private d:Lcom/google/android/gms/panorama/g/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/panorama/g/k;->a:J

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/graphics/PointF;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    .line 134
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    iget-wide v4, v1, Lcom/google/android/gms/panorama/g/l;->a:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    .line 135
    const-wide v4, 0x41bdcd6500000000L    # 5.0E8

    div-double/2addr v2, v4

    .line 136
    sub-double v2, v6, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v2, v6, v2

    .line 139
    cmpl-double v1, v2, v6

    if-ltz v1, :cond_1

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    iget-object v0, v0, Lcom/google/android/gms/panorama/g/l;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    iget-object v4, v4, Lcom/google/android/gms/panorama/g/l;->c:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    iget-object v1, v1, Lcom/google/android/gms/panorama/g/l;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v4, v1

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;

    iget-object v1, v1, Lcom/google/android/gms/panorama/g/l;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v6, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 149
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 150
    iput v1, p1, Landroid/graphics/PointF;->y:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final declared-synchronized b(Landroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/high16 v4, 0x3e000000    # 0.125f

    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 172
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 173
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 175
    new-instance v1, Lcom/google/android/gms/panorama/g/l;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/panorama/g/l;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/g/k;->d:Lcom/google/android/gms/panorama/g/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
