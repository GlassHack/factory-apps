.class Lcom/google/android/gms/internal/fu$1;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->loadOwners(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadOwnersOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OW:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

.field final synthetic OX:Lcom/google/android/gms/internal/fu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/people/Graph$LoadOwnersOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$1;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$1;->OW:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadOwnersResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$1$1;-><init>(Lcom/google/android/gms/internal/fu$1;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$1;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadOwnersResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$1;->OW:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->isIncludePlusPages()Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$1;->OW:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->getSortOrder()I

    move-result v6

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
