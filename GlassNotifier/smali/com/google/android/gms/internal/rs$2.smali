.class Lcom/google/android/gms/internal/rs$2;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rs;->setSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFC:Lcom/google/android/gms/internal/rs;

.field final synthetic aFD:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs$2;->aFC:Lcom/google/android/gms/internal/rs;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/rs$2;->aFD:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rs$2;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rs$2;->aFD:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/rb;->T(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rs$2;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
