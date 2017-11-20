.class public final Lcom/google/android/gms/panorama/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Lcom/google/android/gms/panorama/b/c;

.field c:Lcom/google/android/gms/panorama/b/c;

.field d:Z

.field e:F

.field f:[F

.field g:J

.field h:[F

.field i:[F

.field j:I

.field public k:Lcom/google/android/gms/panorama/d/b;

.field public l:[F

.field public m:F

.field public n:Lcom/google/android/gms/panorama/f/a;

.field o:F

.field public p:[D

.field private q:Landroid/hardware/SensorManager;

.field private r:Z

.field private final s:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/d/c;->a:Z

    .line 33
    iput-object v5, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    .line 36
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->b:Lcom/google/android/gms/panorama/b/c;

    .line 37
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->c:Lcom/google/android/gms/panorama/b/c;

    .line 38
    iput-boolean v2, p0, Lcom/google/android/gms/panorama/d/c;->d:Z

    .line 39
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/google/android/gms/panorama/d/c;->e:F

    .line 42
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->f:[F

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/panorama/d/c;->g:J

    .line 46
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->h:[F

    .line 47
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->i:[F

    .line 48
    iput v2, p0, Lcom/google/android/gms/panorama/d/c;->j:I

    .line 51
    new-instance v0, Lcom/google/android/gms/panorama/d/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/d/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    .line 52
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->l:[F

    .line 55
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/gms/panorama/d/c;->m:F

    .line 58
    iput-object v5, p0, Lcom/google/android/gms/panorama/d/c;->n:Lcom/google/android/gms/panorama/f/a;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/panorama/d/c;->o:F

    .line 63
    iput-boolean v2, p0, Lcom/google/android/gms/panorama/d/c;->r:Z

    .line 64
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->p:[D

    .line 435
    new-instance v0, Lcom/google/android/gms/panorama/d/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/panorama/d/d;-><init>(Lcom/google/android/gms/panorama/d/c;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->s:Landroid/hardware/SensorEventListener;

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/panorama/d/c;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/d/c;->r:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-object p0

    .line 78
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/gms/panorama/d/c;->r:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 84
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 86
    invoke-static {v5, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 87
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/d/c;->m:F

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Model is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/google/android/gms/panorama/d/c;->m:F

    .line 97
    :cond_1
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/gms/panorama/d/c;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/gms/panorama/d/c;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/gms/panorama/d/c;->s:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 114
    iput-boolean v5, p0, Lcom/google/android/gms/panorama/d/c;->d:Z

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->i:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/b;->a()V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/d/c;->r:Z

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/panorama/d/c;->q:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/gms/panorama/d/c;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 132
    :cond_0
    return-void
.end method
