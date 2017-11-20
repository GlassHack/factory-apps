.class Lcom/google/android/gms/location/places/i$8;
.super Lcom/google/android/gms/location/places/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/i;->removeNearbyAlerts(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/i$b",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Gp:Landroid/app/PendingIntent;

.field final synthetic HG:Lcom/google/android/gms/location/places/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/i;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/i$8;->HG:Lcom/google/android/gms/location/places/i;

    iput-object p2, p0, Lcom/google/android/gms/location/places/i$8;->Gp:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$b;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$8;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dh;->eG()Lcom/google/android/gms/internal/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/i$8;->Gp:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/dt;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$8;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
