.class Lcom/google/android/gms/location/places/i$3;
.super Lcom/google/android/gms/location/places/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/i;->search(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HG:Lcom/google/android/gms/location/places/i;

.field final synthetic HI:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic HJ:Ljava/lang/String;

.field final synthetic HK:I

.field final synthetic HL:Lcom/google/android/gms/location/places/PlaceFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/i;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/location/places/i$3;->HG:Lcom/google/android/gms/location/places/i;

    iput-object p2, p0, Lcom/google/android/gms/location/places/i$3;->HI:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p3, p0, Lcom/google/android/gms/location/places/i$3;->HJ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/location/places/i$3;->HK:I

    iput-object p5, p0, Lcom/google/android/gms/location/places/i$3;->HL:Lcom/google/android/gms/location/places/PlaceFilter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/i$c;-><init>(Lcom/google/android/gms/location/places/i$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$3;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dh;->eG()Lcom/google/android/gms/internal/dt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/i$f;

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$3;->HG:Lcom/google/android/gms/location/places/i;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dh;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/gms/location/places/i$f;-><init>(Lcom/google/android/gms/location/places/i;Lcom/google/android/gms/location/places/i$c;Landroid/content/Context;Lcom/google/android/gms/location/places/i$1;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/i$3;->HI:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/gms/location/places/i$3;->HJ:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/location/places/i$3;->HK:I

    iget-object v5, p0, Lcom/google/android/gms/location/places/i$3;->HL:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/location/places/i$f;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V

    return-void
.end method
