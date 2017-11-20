.class public final Lcom/google/android/gms/fitness/sensors/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/fitness/data/o;

.field public final b:Landroid/hardware/SensorEventListener;

.field public final c:Ljava/util/List;

.field public final d:Lcom/google/android/gms/fitness/data/Subscription;

.field public final e:J

.field public final f:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/e/h;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    .line 36
    iget-object v0, p1, Lcom/google/android/gms/fitness/sensors/e/h;->b:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->b:Landroid/hardware/SensorEventListener;

    .line 37
    iget-object v0, p1, Lcom/google/android/gms/fitness/sensors/e/h;->c:Lcom/google/android/gms/fitness/data/Subscription;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->d:Lcom/google/android/gms/fitness/data/Subscription;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    .line 39
    iget-wide v0, p1, Lcom/google/android/gms/fitness/sensors/e/h;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->e:J

    .line 40
    iget-wide v0, p1, Lcom/google/android/gms/fitness/sensors/e/h;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->f:J

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/e/h;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/e/g;-><init>(Lcom/google/android/gms/fitness/sensors/e/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 124
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/sensors/e/g;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/sensors/e/g;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    iget-object v1, p1, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "listener"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/g;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "hardwareListener"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/g;->b:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/g;->d:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
