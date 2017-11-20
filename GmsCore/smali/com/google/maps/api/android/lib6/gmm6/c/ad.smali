.class final Lcom/google/maps/api/android/lib6/gmm6/c/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/cc;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/c/z;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/as;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/as;

    move-result-object v0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/as;->a(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/am;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/am;

    move-result-object v0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/am;->a(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
