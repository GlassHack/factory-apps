.class Lcom/google/android/gms/internal/dc$5;
.super Lcom/google/android/gms/internal/dc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dc;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gs:Lcom/google/android/gms/location/LocationListener;

.field final synthetic Gt:Lcom/google/android/gms/internal/dc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dc$5;->Gt:Lcom/google/android/gms/internal/dc;

    iput-object p2, p0, Lcom/google/android/gms/internal/dc$5;->Gs:Lcom/google/android/gms/location/LocationListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dc$a;-><init>(Lcom/google/android/gms/internal/dc$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/dh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dc$5;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dc$5;->Gs:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dh;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dc$5;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
