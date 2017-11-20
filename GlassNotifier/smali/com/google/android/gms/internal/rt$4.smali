.class Lcom/google/android/gms/internal/rt$4;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rt;->loadPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFI:Lcom/google/android/gms/internal/rt;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFO:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rt;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rt$4;->aFI:Lcom/google/android/gms/internal/rt;

    iput-object p3, p0, Lcom/google/android/gms/internal/rt$4;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rt$4;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/rt$4;->aFO:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rt$4;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$4;->aFE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/rt$4;->aFK:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/rt$4;->aFO:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V

    return-void
.end method

.method protected be(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rt$4$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rt$4$1;-><init>(Lcom/google/android/gms/internal/rt$4;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rt$4;->be(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleResult;

    move-result-object v0

    return-object v0
.end method
