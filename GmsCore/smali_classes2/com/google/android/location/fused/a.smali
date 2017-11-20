.class public final Lcom/google/android/location/fused/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Z

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/hardware/Sensor;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroid/view/Display;

.field private final g:Landroid/os/PowerManager;

.field private final h:Landroid/os/Handler;

.field private i:D

.field private j:D

.field private k:D

.field private l:Z

.field private m:F

.field private n:F

.field private o:F

.field private final p:[F

.field private final q:[F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->i:D

    .line 45
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->j:D

    .line 48
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->k:D

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a;->a:Z

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/location/fused/a;->p:[F

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/location/fused/a;->q:[F

    .line 76
    iput-object p1, p0, Lcom/google/android/location/fused/a;->d:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/google/android/location/fused/a;->h:Landroid/os/Handler;

    .line 78
    iput-object p2, p0, Lcom/google/android/location/fused/a;->b:Landroid/hardware/SensorManager;

    .line 79
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/location/fused/a;->g:Landroid/os/PowerManager;

    .line 80
    iget-object v0, p0, Lcom/google/android/location/fused/a;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/a;->c:Landroid/hardware/Sensor;

    .line 84
    iget-object v0, p0, Lcom/google/android/location/fused/a;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/a;->f:Landroid/view/Display;

    .line 88
    new-instance v0, Lcom/google/android/location/fused/b;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/b;-><init>(Lcom/google/android/location/fused/a;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a;->e:Landroid/content/BroadcastReceiver;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/fused/a;)D
    .locals 2

    .prologue
    .line 27
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/android/location/fused/a;->i:D

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/location/fused/a;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/location/fused/a;->l:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/location/fused/a;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/location/fused/a;->g:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a;->l:Z

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/google/android/location/fused/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/fused/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/google/android/location/fused/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/fused/a;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/fused/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 124
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->i:D

    .line 125
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->j:D

    .line 126
    iput-wide v0, p0, Lcom/google/android/location/fused/a;->k:D

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a;->a:Z

    .line 128
    iget-object v0, p0, Lcom/google/android/location/fused/a;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/location/fused/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/fused/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/location/fused/a;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/google/android/location/fused/a;->i:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/location/fused/a;->j:D

    return-wide v0
.end method

.method public final e()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/android/location/fused/a;->k:D

    return-wide v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 193
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/location/fused/a;->q:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 201
    iget-object v0, p0, Lcom/google/android/location/fused/a;->q:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    aput v1, v0, v9

    .line 202
    iget-object v0, p0, Lcom/google/android/location/fused/a;->q:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 203
    iget-object v0, p0, Lcom/google/android/location/fused/a;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/android/location/fused/a;->p:[F

    iget-object v1, p0, Lcom/google/android/location/fused/a;->q:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 205
    iget-object v0, p0, Lcom/google/android/location/fused/a;->p:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 206
    iget-object v1, p0, Lcom/google/android/location/fused/a;->p:[F

    const/4 v4, 0x7

    aget v1, v1, v4

    .line 207
    iget-object v4, p0, Lcom/google/android/location/fused/a;->p:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    .line 208
    neg-float v5, v0

    iput v5, p0, Lcom/google/android/location/fused/a;->m:F

    .line 209
    neg-float v5, v1

    iput v5, p0, Lcom/google/android/location/fused/a;->n:F

    .line 210
    neg-float v5, v4

    iput v5, p0, Lcom/google/android/location/fused/a;->o:F

    .line 211
    iput-boolean v9, p0, Lcom/google/android/location/fused/a;->a:Z

    .line 216
    float-to-double v6, v4

    mul-float v5, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v5, v8

    mul-float/2addr v4, v4

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/location/fused/a;->k:D

    .line 219
    iget-boolean v4, p0, Lcom/google/android/location/fused/a;->l:Z

    if-eqz v4, :cond_2

    .line 220
    iget-wide v4, p0, Lcom/google/android/location/fused/a;->k:D

    const-wide v6, 0x3fc657184ae74487L    # 0.17453292519943295

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 232
    float-to-double v4, v0

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 263
    :goto_1
    iget-object v4, p0, Lcom/google/android/location/fused/a;->p:[F

    aget v4, v4, v9

    float-to-double v4, v4

    iget-object v6, p0, Lcom/google/android/location/fused/a;->p:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 265
    cmpl-double v6, v0, v2

    if-nez v6, :cond_3

    :goto_2
    iput-wide v2, p0, Lcom/google/android/location/fused/a;->i:D

    .line 268
    iput-wide v4, p0, Lcom/google/android/location/fused/a;->j:D

    goto/16 :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/a;->f:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-wide v0, v2

    .line 252
    goto :goto_1

    .line 240
    :pswitch_1
    const-wide/16 v0, 0x0

    .line 241
    goto :goto_1

    .line 243
    :pswitch_2
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 244
    goto :goto_1

    .line 246
    :pswitch_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 247
    goto :goto_1

    .line 249
    :pswitch_4
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 250
    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 258
    goto :goto_1

    .line 265
    :cond_3
    add-double v2, v0, v4

    goto :goto_2

    .line 193
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
