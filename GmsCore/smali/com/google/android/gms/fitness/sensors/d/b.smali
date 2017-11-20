.class final Lcom/google/android/gms/fitness/sensors/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# instance fields
.field public final a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field public final b:Lcom/google/android/location/o/u;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/d/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/d/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V
    .locals 3

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/d/b;->c:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    .line 245
    new-instance v0, Lcom/google/android/location/o/u;

    invoke-static {p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/sensors/d/a;)Lcom/google/android/location/o/n;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/location/o/u;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/b;->b:Lcom/google/android/location/o/u;

    .line 247
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/b;->c:Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Lcom/google/android/gms/fitness/sensors/d/a;Landroid/location/Location;)V

    .line 261
    return-void
.end method
