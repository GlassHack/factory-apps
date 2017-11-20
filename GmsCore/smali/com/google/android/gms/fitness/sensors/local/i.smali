.class public final Lcom/google/android/gms/fitness/sensors/local/i;
.super Lcom/google/android/gms/fitness/sensors/b/c;
.source "SourceFile"


# instance fields
.field final b:Lcom/google/c/a/ay;

.field private final c:Ljava/util/Set;

.field private final d:Lcom/google/android/gms/fitness/sensors/local/h;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/sensors/local/h;Lcom/google/c/a/ay;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/google/android/gms/fitness/sensors/b/c;-><init>(Lcom/google/android/gms/fitness/sensors/a;)V

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/local/i;->c:Ljava/util/Set;

    .line 53
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/i;->d:Lcom/google/android/gms/fitness/sensors/local/h;

    .line 54
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/local/i;->b:Lcom/google/c/a/ay;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/local/i;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/i;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/i;->d:Lcom/google/android/gms/fitness/sensors/local/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/sensors/local/h;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/i;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 67
    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Lcom/google/android/gms/fitness/sensors/local/j;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/fitness/sensors/local/j;-><init>(Lcom/google/android/gms/fitness/sensors/local/i;Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    invoke-static {v0, v2}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    goto :goto_0
.end method
