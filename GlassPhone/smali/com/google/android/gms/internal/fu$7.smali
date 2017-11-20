.class Lcom/google/android/gms/internal/fu$7;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->loadContactsGaiaIds(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OX:Lcom/google/android/gms/internal/fu;

.field final synthetic Pi:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$7;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$7;->Pi:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected M(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$7$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$7$1;-><init>(Lcom/google/android/gms/internal/fu$7;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$7;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$7;->M(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$7;->Pi:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->getFilterContactInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$7;->Pi:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->getFilterGaiaId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$7;->Pi:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->getFilterGaiaEdgeTypes()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
