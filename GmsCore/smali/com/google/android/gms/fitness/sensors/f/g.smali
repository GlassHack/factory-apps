.class final Lcom/google/android/gms/fitness/sensors/f/g;
.super Lcom/google/android/gms/fitness/internal/w;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic b:Lcom/google/c/j/a/ad;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/c/j/a/ad;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/g;->c:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/g;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/f/g;->b:Lcom/google/c/j/a/ad;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/g;->c:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/g;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/f/c;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_0

    const-string v2, "Updating the data source for listener %s from %s to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/g;->b:Lcom/google/c/j/a/ad;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
