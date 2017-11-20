.class public final Lcom/google/android/gms/panorama/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private final b:Lcom/google/android/gms/panorama/d/c;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/google/android/gms/panorama/d/c;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    .line 54
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/d/a;->e:Z

    .line 64
    iput-object p2, p0, Lcom/google/android/gms/panorama/d/a;->b:Lcom/google/android/gms/panorama/d/c;

    .line 65
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/d/a;->e:Z

    .line 66
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 80
    iput v1, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    .line 83
    :goto_0
    iget v2, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 89
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 91
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 92
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->f:Z

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/panorama/d/a;->b()V

    .line 95
    return-void

    .line 68
    :pswitch_0
    iput v1, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    goto :goto_0

    .line 71
    :pswitch_1
    const/16 v2, 0x5a

    iput v2, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    goto :goto_0

    .line 74
    :pswitch_2
    const/16 v2, 0xb4

    iput v2, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    goto :goto_0

    .line 77
    :pswitch_3
    const/16 v2, -0x5a

    iput v2, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 8

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/a;->b:Lcom/google/android/gms/panorama/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/d/a;->b:Lcom/google/android/gms/panorama/d/c;

    iget-boolean v0, v0, Lcom/google/android/gms/panorama/d/c;->d:Z

    if-nez v0, :cond_2

    .line 106
    :cond_0
    const-string v0, "LightCycle"

    const-string v1, "Sensor reader is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/a;->b:Lcom/google/android/gms/panorama/d/c;

    iget-object v3, v0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    .line 113
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->e:Z

    if-nez v0, :cond_6

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->f:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget v4, v3, Lcom/google/android/gms/panorama/b/c;->a:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v3, Lcom/google/android/gms/panorama/b/c;->b:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    move v2, v1

    :cond_3
    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/d/a;->e:Z

    .line 123
    :goto_2
    if-eqz v1, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    iget-boolean v1, p0, Lcom/google/android/gms/panorama/d/a;->f:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 125
    iget v0, v3, Lcom/google/android/gms/panorama/b/c;->a:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_b

    .line 126
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    .line 137
    :goto_3
    iget v0, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    :cond_4
    :goto_4
    iput v0, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    goto :goto_0

    :cond_5
    move v0, v2

    .line 114
    goto :goto_1

    .line 118
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->f:Z

    iget-boolean v4, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    xor-int/2addr v0, v4

    if-eqz v0, :cond_9

    iget v0, v3, Lcom/google/android/gms/panorama/b/c;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, v3, Lcom/google/android/gms/panorama/b/c;->a:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    move v0, v1

    :goto_5
    if-eqz v0, :cond_f

    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    iput-boolean v2, p0, Lcom/google/android/gms/panorama/d/a;->c:Z

    goto :goto_2

    :cond_8
    move v0, v2

    .line 118
    goto :goto_5

    :cond_9
    iget v0, v3, Lcom/google/android/gms/panorama/b/c;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, v3, Lcom/google/android/gms/panorama/b/c;->b:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_5

    .line 128
    :cond_b
    iput v7, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    goto :goto_3

    .line 131
    :cond_c
    iget v0, v3, Lcom/google/android/gms/panorama/b/c;->b:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_d

    .line 132
    iput v6, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    goto :goto_3

    .line 134
    :cond_d
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    goto :goto_3

    .line 137
    :cond_e
    cmpg-float v1, v0, v7

    if-gez v1, :cond_4

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    goto :goto_4

    :cond_f
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/panorama/d/a;->b()V

    .line 173
    iget v0, p0, Lcom/google/android/gms/panorama/d/a;->d:F

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/d/a;->a:I

    .line 174
    return-void
.end method
