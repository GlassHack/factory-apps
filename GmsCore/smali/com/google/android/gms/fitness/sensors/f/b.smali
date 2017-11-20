.class final Lcom/google/android/gms/fitness/sensors/f/b;
.super Lcom/google/android/gms/fitness/h/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/f/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->b:Lcom/google/android/gms/fitness/sensors/f/a;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/sensors/e/h;->a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/e/g;->a(Lcom/google/android/gms/fitness/data/DataSource;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/b;->b:Lcom/google/android/gms/fitness/sensors/f/a;

    iget-object v1, v1, Lcom/google/android/gms/fitness/sensors/f/a;->a:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/sensors/e/g;)V

    .line 78
    return-void
.end method
