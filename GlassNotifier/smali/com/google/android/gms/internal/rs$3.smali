.class Lcom/google/android/gms/internal/rs$3;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rs;->isSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/People$BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFC:Lcom/google/android/gms/internal/rs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs$3;->aFC:Lcom/google/android/gms/internal/rs;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rs$3;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/rb;->isSyncToContactsEnabled()Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/people/People$BooleanResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/people/People$BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/rs$3;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected bb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/People$BooleanResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/People$BooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/people/People$BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rs$3;->bb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/People$BooleanResult;

    move-result-object v0

    return-object v0
.end method
