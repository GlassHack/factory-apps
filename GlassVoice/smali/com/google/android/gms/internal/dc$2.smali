.class Lcom/google/android/gms/internal/dc$2;
.super Lcom/google/android/gms/internal/dc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dc;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gt:Lcom/google/android/gms/internal/dc;

.field final synthetic Gu:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dc;Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dc$2;->Gt:Lcom/google/android/gms/internal/dc;

    iput-object p2, p0, Lcom/google/android/gms/internal/dc$2;->Gu:Landroid/location/Location;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dc$2;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dc$2;->Gu:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dh;->setMockLocation(Landroid/location/Location;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dc$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
