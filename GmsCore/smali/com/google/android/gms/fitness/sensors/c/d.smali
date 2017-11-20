.class final Lcom/google/android/gms/fitness/sensors/c/d;
.super Lcom/google/android/gms/fitness/h/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/c/e;

.field final synthetic c:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic d:Lcom/google/android/gms/fitness/sensors/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/c/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/sensors/c/e;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/c/d;->d:Lcom/google/android/gms/fitness/sensors/c/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/c/d;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/c/d;->b:Lcom/google/android/gms/fitness/sensors/c/e;

    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/c/d;->c:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/d;->d:Lcom/google/android/gms/fitness/sensors/c/c;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/c/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/d;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/d;->b:Lcom/google/android/gms/fitness/sensors/c/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const-string v1, "duplicate reg: %s removed existing: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/c/d;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 152
    const-string v0, "could not register with input %s for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/d;->c:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/d;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    return-void
.end method
