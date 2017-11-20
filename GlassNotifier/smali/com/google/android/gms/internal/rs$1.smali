.class Lcom/google/android/gms/internal/rs$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rs;->syncRawContact(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFB:Landroid/net/Uri;

.field final synthetic aFC:Lcom/google/android/gms/internal/rs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs$1;->aFC:Lcom/google/android/gms/internal/rs;

    iput-object p3, p0, Lcom/google/android/gms/internal/rs$1;->aFB:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rs$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rs$1;->aFB:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/rb;->k(Landroid/net/Uri;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rs$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
