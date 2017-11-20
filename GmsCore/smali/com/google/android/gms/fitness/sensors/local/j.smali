.class final Lcom/google/android/gms/fitness/sensors/local/j;
.super Lcom/google/android/gms/fitness/h/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/DataPoint;

.field final synthetic b:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/local/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/local/i;Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/local/j;->c:Lcom/google/android/gms/fitness/sensors/local/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/local/j;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/j;->b:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/j;->c:Lcom/google/android/gms/fitness/sensors/local/i;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/local/j;->a:Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/j;->b:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    iget-object v0, v1, Lcom/google/android/gms/fitness/sensors/local/i;->b:Lcom/google/c/a/ay;

    invoke-interface {v0}, Lcom/google/c/a/ay;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/fitness/sensors/local/k;

    invoke-direct {v4, v1, v3, v2}, Lcom/google/android/gms/fitness/sensors/local/k;-><init>(Lcom/google/android/gms/fitness/sensors/local/i;Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/data/DataPoint;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
