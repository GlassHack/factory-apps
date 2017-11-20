.class final Lcom/google/maps/api/android/lib6/gmm6/c/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/cf;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/au;->a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/au;->a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/c/aq;)Lcom/google/android/gms/maps/internal/as;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/au;->a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/c/aq;)Lcom/google/android/gms/maps/internal/as;

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/au;->a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->b(Lcom/google/maps/api/android/lib6/gmm6/c/aq;)Lcom/google/android/gms/maps/internal/am;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/au;->a:Lcom/google/maps/api/android/lib6/gmm6/c/aq;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->b(Lcom/google/maps/api/android/lib6/gmm6/c/aq;)Lcom/google/android/gms/maps/internal/am;

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
