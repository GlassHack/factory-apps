.class Lcom/google/android/gms/location/places/i$6;
.super Lcom/google/android/gms/location/places/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/i;->getAutocompletePredictions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HG:Lcom/google/android/gms/location/places/i;

.field final synthetic HI:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic HN:Ljava/lang/String;

.field final synthetic HO:Lcom/google/android/gms/location/places/AutocompleteFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/i;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/location/places/i$6;->HG:Lcom/google/android/gms/location/places/i;

    iput-object p2, p0, Lcom/google/android/gms/location/places/i$6;->HN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/i$6;->HI:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p4, p0, Lcom/google/android/gms/location/places/i$6;->HO:Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/i$a;-><init>(Lcom/google/android/gms/location/places/i$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$6;->a(Lcom/google/android/gms/internal/dh;)V

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

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$6;->HG:Lcom/google/android/gms/location/places/i;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/location/places/i$f;-><init>(Lcom/google/android/gms/location/places/i;Lcom/google/android/gms/location/places/i$a;Lcom/google/android/gms/location/places/i$1;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$6;->HN:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/i$6;->HI:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v4, p0, Lcom/google/android/gms/location/places/i$6;->HO:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/location/places/i$f;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
