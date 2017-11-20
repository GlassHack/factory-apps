.class Lcom/google/android/gms/location/places/i$5;
.super Lcom/google/android/gms/location/places/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/i;->getPlaceById(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HG:Lcom/google/android/gms/location/places/i;

.field final synthetic HM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/i;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/location/places/i$5;->HG:Lcom/google/android/gms/location/places/i;

    iput-object p2, p0, Lcom/google/android/gms/location/places/i$5;->HM:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/i$d;-><init>(Lcom/google/android/gms/location/places/i$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$5;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dh;->eG()Lcom/google/android/gms/internal/dt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/i$f;

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$5;->HG:Lcom/google/android/gms/location/places/i;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dh;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/gms/location/places/i$f;-><init>(Lcom/google/android/gms/location/places/i;Lcom/google/android/gms/location/places/i$d;Landroid/content/Context;Lcom/google/android/gms/location/places/i$1;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$5;->HM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/location/places/i$f;Ljava/lang/String;)V

    return-void
.end method
