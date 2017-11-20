.class Lcom/google/android/gms/internal/fu$4;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->loadPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OX:Lcom/google/android/gms/internal/fu;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pd:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$4;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$4;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$4;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fu$4;->Pd:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$4$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$4$1;-><init>(Lcom/google/android/gms/internal/fu$4;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$4;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$4;->J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleResult;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$4;->OT:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$4;->OZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$4;->Pd:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V

    return-void
.end method
