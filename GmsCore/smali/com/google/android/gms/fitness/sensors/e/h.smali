.class public final Lcom/google/android/gms/fitness/sensors/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/fitness/data/o;

.field public b:Landroid/hardware/SensorEventListener;

.field public c:Lcom/google/android/gms/fitness/data/Subscription;

.field d:J

.field e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/h;->b:Landroid/hardware/SensorEventListener;

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/h;->c:Lcom/google/android/gms/fitness/data/Subscription;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/sensors/e/g;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/sensors/e/g;-><init>(Lcom/google/android/gms/fitness/sensors/e/h;B)V

    return-object v0
.end method

.method public final a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/android/gms/fitness/sensors/e/h;->d:J

    .line 103
    iput-wide p3, p0, Lcom/google/android/gms/fitness/sensors/e/h;->e:J

    .line 104
    return-object p0
.end method
