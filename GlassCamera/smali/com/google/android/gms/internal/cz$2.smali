.class Lcom/google/android/gms/internal/cz$2;
.super Lcom/google/android/gms/internal/cz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cz;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gp:Landroid/app/PendingIntent;

.field final synthetic Gq:Lcom/google/android/gms/internal/cz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cz;Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cz$2;->Gq:Lcom/google/android/gms/internal/cz;

    iput-object p2, p0, Lcom/google/android/gms/internal/cz$2;->Gp:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cz$a;-><init>(Lcom/google/android/gms/internal/cz$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cz$2;->a(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cz$2;->Gp:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dh;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cz$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
