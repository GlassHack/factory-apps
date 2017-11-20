.class Lcom/google/android/gms/internal/dd$2;
.super Lcom/google/android/gms/internal/dd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dd;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GA:Landroid/app/PendingIntent;

.field final synthetic GB:Lcom/google/android/gms/internal/dd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dd;Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dd$2;->GB:Lcom/google/android/gms/internal/dd;

    iput-object p2, p0, Lcom/google/android/gms/internal/dd$2;->GA:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dd$a;-><init>(Lcom/google/android/gms/internal/dd$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dd$2;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/dd$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dd$2$1;-><init>(Lcom/google/android/gms/internal/dd$2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dd$2;->GA:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/dh;->removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    return-void
.end method
