.class final Lcom/google/android/gms/fitness/sensors/f/h;
.super Lcom/google/android/gms/fitness/h/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic c:Lcom/google/c/j/a/ad;

.field final synthetic d:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Lcom/google/c/j/a/ad;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/h;->d:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/h;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/f/h;->b:Lcom/google/android/gms/fitness/internal/v;

    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/f/h;->c:Lcom/google/c/j/a/ad;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/h;->c:Lcom/google/c/j/a/ad;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method protected final synthetic a(Landroid/os/IInterface;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    check-cast p1, Lcom/google/android/gms/fitness/internal/service/c;

    new-instance v3, Lcom/google/android/gms/fitness/service/g;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/service/g;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/h;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/fitness/service/g;->b:Lcom/google/android/gms/fitness/data/o;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/h;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->l()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/fitness/service/g;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/h;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v6, "sampling rate negative"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide v4, v3, Lcom/google/android/gms/fitness/service/g;->c:J

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/h;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v6, "batch interval negative"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide v4, v3, Lcom/google/android/gms/fitness/service/g;->d:J

    iget-object v0, v3, Lcom/google/android/gms/fitness/service/g;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v4, "Must call setDataSource()"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/gms/fitness/service/g;->b:Lcom/google/android/gms/fitness/data/o;

    if-eqz v0, :cond_3

    :goto_3
    const-string v0, "The listener must be set"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;-><init>(Lcom/google/android/gms/fitness/service/g;B)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/h;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/fitness/internal/service/c;->a(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/fitness/internal/v;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
